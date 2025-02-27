## klem's fish config! we're goin fishin now bubby!
# klementineQt (Klementine Des Pêches)
# klementineQt@proton.me

# can't live wifout me starship
starship init fish | source

# get a neat lil quote and make a cute lil cow say it
if status is-interactive
    fortune | cowsay
end
