function gcc-ANSI --wraps='gcc -Wall -std=c89' --description 'gcc using ANSI C standard + all optional warnings'
  gcc -Wall -std=c89 $argv

end
