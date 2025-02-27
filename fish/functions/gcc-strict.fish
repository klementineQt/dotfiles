function gcc-strict --wraps='gcc -Wall' --description 'gcc with all optional warnings'
  gcc -Wall $argv

end
