## klem's fish config! we're goin fishin now bubby!
# klementineQt (Klementine Des Pêches)
# klementineQt@proton.me

set -gx GPG_TTY $(tty)

# init this nifty cd alternative (we're rusting away)
zoxide init --cmd z fish | source

# interactive shell specific
if status is-interactive
    # can't live wifout me starship
    starship init fish | source

    # pyenv init
    pyenv init - fish | source

    # pyenv-virtualenv init
    pyenv virtualenv-init - | source

    # get a neat lil quote and make a cute lil cow say it
    fortune | cowsay
end
