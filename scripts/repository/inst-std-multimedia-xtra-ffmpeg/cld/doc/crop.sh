input=$1
num_spots=$2


crop_options=$(ffmpeg -i "${input}" -t 1 -vf cropdetect -f null - 2>&1 | awk '/crop/ { print $NF }' | tail -1)

if echo "${crop_options}" | grep -1 ":0:0$"; then
  echo "Warning: Nothing to crop. ${crop_options}. Skipped!"
else
  ffmpeg -i "${input}" -vf "${crop_options}" -c:a copy "crop_${input}"
fi

exit

#ffmpeg -ss 90 -i "${input}" -vframes 5 -vf cropdetect -f null -
  duration=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "${input}")
  duration_less=$(perl -E "say ${duration} - 2")
  increment=$(perl -E "say ${duration_less} / ${num_spots}")
  position=${increment}
  for ((i=0; i < num_spots ; i++)); do
    echo "${position}"
    ffmpeg -ss "${position}" -i "${input}" -vframes 2 -vf cropdetect -f null -
    
    position=$(perl -E "say ${position} + ${increment}")
  done
