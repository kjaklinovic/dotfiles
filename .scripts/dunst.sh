# Source generated colors.
. "${HOME}/.cache/wal/colors.sh"

pkill dunst
dunst \
    -lb "${color0:-#FFFFFF}" \
    -nb "${color0:-#FFFFFF}" \
    -cb "${color0:-#FFFFFF}" \
    -lf "${color15:-#000000}" \
    -bf "${color15:-#000000}" \
    -cf "${color15:-#000000}" \
    -nf "${color15:-#000000}" \
    -fn "Roboto 12" \
    -geometry "600x40-80+100" &

