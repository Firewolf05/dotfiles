if [[ -n $(bspc query -N -n focused.fullscreen) ]]
then
	bspc node -t tiled
else
	bspc node -t fullscreen
	
fi