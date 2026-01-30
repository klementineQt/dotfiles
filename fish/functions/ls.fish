# Primary wrapper
function ls --wraps=eza --wraps='eza --color=always --group-directories-first --icons' --description 'Lists contents of a directory; alias for eza'
  eza --color=always --group-directories-first --icons $argv

end

# Long form alias wrapper
function ll --wraps='eza --color=always --group-directories-first --icons -l' --description 'Lists contents of a directory in long form; alias for eza -l'
  eza --color=always --group-directories-first --icons -l $argv

end

# All files alias wrapper
function la --wraps='eza --color=always --group-directories-first --icons -A' --description 'Lists ALL contents of a directory; alias for eza -A'
  eza --color=always --group-directories-first --icons -A $argv

end
