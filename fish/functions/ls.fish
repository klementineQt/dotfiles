# Primary wrapper
function ls --wraps=eza --wraps='eza --icons' --description 'Lists contents of a directory; alias for eza'
  eza --icons $argv

end

# Long form alias wrapper
function ll --wraps='eza --icons -l' --description 'Lists contents of a directory in long form; alias for eza -l'
  eza --icons -l $argv

end

# All files alias wrapper
function la --wraps='eza --icons -A' --description 'Lists ALL contents of a directory; alias for eza -A'
  eza --icons -A $argv

end
