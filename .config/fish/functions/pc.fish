# Defined via `source`
function pc --wraps='sudo podman-compose' --description 'alias pc sudo podman-compose'
  sudo podman-compose $argv; 
end
