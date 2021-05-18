# Defined via `source`
function upgrade --wraps='paru && flatpak update && rustup update' --description 'alias upgrade paru && flatpak update && rustup update'
  paru && flatpak update && rustup update $argv; 
end
