function opus_magneto --description 'Transcodes audio files in current folder into 160k opus'
    argparse 'h/help' 'a/artist=' 'A/album=' -- $argv
    or return

    if set -ql _flag_h; or not set -ql _flag_a; or not set -ql _flag_A
        echo "Usage: opus_magneto -a artist_name -A album_name"\n\
            "These will be used to create folders in the music library to store the resulting files"
        return 1
        exit
    end

    for file in *.{flac,wav}
        set -l artist $_flag_a
        set -l album $_flag_A
        set -l song (string sub -e -5 $file)
        mkdir -p ~/Music/Library/$artist/$album
        ffmpeg -hide_banner -loglevel error -i $file -c:a libopus -b:a 160k ~/Music/Library/$artist/$album/$song.opus
        echo "Transcoding $file..."
    end

    echo \n"Finished. Files will be found in $HOME/Music/Library/$_flag_artist/$_flag_album"
    return 0
end
