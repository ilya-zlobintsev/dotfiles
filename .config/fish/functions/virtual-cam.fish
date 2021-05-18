# Defined via `source`
function virtual-cam --wraps='wf-recorder --muxer=v4l2 -d /dev/dri/renderD128 --codec=rawvideo --pixel-format=yuv420p --file=/dev/video0' --description 'alias virtual-cam wf-recorder --muxer=v4l2 -d /dev/dri/renderD128 --codec=rawvideo --pixel-format=yuv420p --file=/dev/video0'
  wf-recorder --muxer=v4l2 -d /dev/dri/renderD128 --codec=rawvideo --pixel-format=yuv420p --file=/dev/video0 $argv; 
end
