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

<<<<<<< HEAD
    function __tabby_working_directory_reporting --on-event fish_prompt
        echo -en "\e]1337;CurrentDir=$PWD\x7"
    end
=======
    # get a neat lil quote and make a cute lil cow say it
    fortune | cowsay
>>>>>>> 53e69c4944e196c955cca91d858244b0de0173a9
end
