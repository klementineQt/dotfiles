# Optional warnings alias
function gcc-strict --wraps='gcc -Wall' --description 'gcc with all optional warnings'
  gcc -Wall $argv

end

# C89 alias
function gcc-ANSI --wraps='gcc -Wall -std=c89' --description 'gcc using ANSI C standard + all optional warnings'
  gcc -Wall -std=c89 $argv

end
