if [[ -n $(bspc query -N -n focused.floating) ]]
then
	bspc node -t tiled
else
	bspc node -t floating
fi