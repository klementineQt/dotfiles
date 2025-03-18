## klem's fish config! we're goin fishin now bubby!
# klementineQt (Klementine Des Pêches)
# klementineQt@proton.me

set -gx GPG_TTY $(tty)

# init this nifty cd alternative (we're rusting away)
zoxide init --cmd z fish | source

# interactive shell specific
if status is-interactive
    # configure editor env for vscode terminal usage, if remoted in
    if set -q VSCODE_INJECTION
        set -gx VISUAL "code --wait"
        set -gx EDITOR "code --wait"
    end

    # can't live wifout me starship
    starship init fish | source

    # pyenv init
    pyenv init - fish | source

    # pyenv-virtualenv init
    pyenv virtualenv-init - | source

    # get a neat lil quote and make a cute lil cow say it
    fortune | cowsay
end

fish_add_path /home/klementine/.millennium/ext/bin
