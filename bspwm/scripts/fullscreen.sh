if [[ -n $(bspc query -N -n focused.fullscreen) ]]
then
	bspc node -t tiled
else
	if [[ -n $(bspc query -N -n focused.floating) ]]
	then
		bspc node -t tiled
	else
		bspc node -t fullscreen
	fi
fi