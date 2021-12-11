file=${1}
filename=$(basename ${file%.*})
folder="data/video_frames/${filename}"
mkdir -p ${folder}
ffmpeg -i "${file}" "${folder}/%07d.png"
# example of specifying cropping region
# ffmpeg -i "${file}" -vf "crop=w=1080:h=1080:x=580:y=0" "${folder}/%07d.png"
