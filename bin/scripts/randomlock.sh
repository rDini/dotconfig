#!/bin/bash

DEFAULT_IMGS="/home/rdini/Pictures/wallpaper"
images=()
swaylock_args=()

for output in $(swaymsg -t get_outputs | jq -r '.[] .name'); do
        if [[ -z $1 ]] ; then
            img_dir=$DEFAULT_IMGS
        else
            img_dir=$1
        fi;
        image=$(ls $img_dir | sort -R | head -n1)
        images+=($image)
        swaylock_args+=(-i $output:$DEFAULT_IMGS/$image)
done

swaylock ${swaylock_args[@]} -s center
