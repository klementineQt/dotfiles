# opens config.fish in $VISUAL
function fishcfg --wraps='VISUAL /home/klementine/.config/fish/config.fish' --description 'opens config.fish in $VISUAL'
  $VISUAL $XDG_CONFIG_HOME/fish/config.fish $argv

end
