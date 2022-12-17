#! /usr/bin/python

import json 
import requests
import sys

def data_cmd():
    global data
    if sys.argv[1] == "--local":
        print("local")
        with open('stats.json', 'r') as json_file:
            data = json.load(json_file)['data'][0]
    else:
        r = requests.get(f'https://api.wynncraft.com/v2/player/{sys.argv[1]}/stats')
        data_raw = r.json()
        data = data_raw['data'][0]
data_cmd()

# array with all classes + calculating number of characters 
chrs_len = 0
chrs_raw = [] 
for i in data['characters'].keys(): 
    chrs_raw.append(i) 
    chrs_len = int(chrs_len + 1)

# array of formatted class names
chrs = []
for i in range(0, chrs_len):
    chrs.append(str(str(data['characters'][chrs_raw[i]]['type']).lower()).capitalize())

# prompt 
def prompt():
    global ans
    print()
    print()
    for i in range(0, chrs_len):
        print(f"[{i + 1}]",chrs[i], f"[{data['characters'][chrs_raw[i]]['professions']['combat']['level']}]")
    print("[G] View general player info")
    print("[X] Exit program")
    print()
    ans = input("Select option: ") 
prompt()

# general info 
def general_info():
    playtime = int(data['meta']['playtime'] * 4.7 / 60)
    tagd = str(data['meta']['tag']['value'])
    if tagd == "CHAMPION" or tagd == "HERO": # makes hero and champion rank lower case with capitalized first letters 
        tag = (str(tagd).lower()).capitalize()
    else:
        tag = tagd
    combat_level = data['global']['totalLevel']['combat']
    professions_level =  data['global']['totalLevel']['profession']
    total_level = data['global']['totalLevel']['combined']
    mobs = data['global']['mobsKilled']
    guildn = data['guild']['name']
    guildr = str(str(data['guild']['rank'].lower()).capitalize())
    print(f"Playtime: {playtime} hours")
    print(f"Rank: {tag}")
    print(f"Total mobs killed: {mobs}")
    print(f"Total levels: {total_level} ({combat_level} combat, {professions_level} professions)")
    print(f"Guild: {guildn} ({guildr})")


def class_info():
    total_level = data['characters'][chrs_raw[int(ans) - 1]]['level']
    # big brain way to get the levels of all the professions without having to type all of them manually 
    # function to get the levels of each profession 
    def profession_levels(profession):
        return data['characters'][chrs_raw[int(ans) - 1]]['professions'][profession]['level']
    # dictionary of all the professions 
    professions = ["combat", "mining", "farming", "woodcutting", "fishing", "scribing", "jeweling", "alchemism", "cooking", "weaponsmithing", "tailoring", "woodworking", "armouring" ]
    # saves the level of each element in 'professions' in the list 'levels' using the function 
    levels = {} 
    for i in professions:
        levels[i] = profession_levels(i)
    print(f"Total levels: {total_level}")
    # prints all of the levels 
    for i in professions:
            print(f"    {str(i).capitalize()}: {levels[i]}")

# choices 
def choices():
    global ans 
    if ans.lower() == "g":
        print()
        general_info()
        print()
        ans = input("Select option: ")  
        choices()
    elif ans.lower() == "x":
        exit()
    else:
        if int(ans) <= chrs_len:
            print()
            class_info()
            print()
            ans = input("Select option: ")  
            choices()
        else: 
            print("Invalid option")
            ans = input("Select option: ")  
            choices()
choices()