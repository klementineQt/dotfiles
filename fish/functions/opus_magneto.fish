function opus_magneto --description 'Transcodes audio files in current folder into 160k opus'
    argparse 'h/help' 'a/artist=' 'A/album=' 'd/directory=' -- $argv

    if set -ql _flag_h
        echo "Usage: opus_magneto [-a artist_name -A album_name] or [-d output_dir]"\n\
            "These will be used to create folders in the music library to store the resulting files. No options will export to ./opus"
        return
    end

    # if using artist & album flags
    if set -ql _flag_a; and set -ql _flag_A
        for file in *.{flac,wav}
            set -l artist $_flag_a
            set -l album $_flag_A
            set -l song (string sub -e -5 $file)
            mkdir -p ~/Music/Library/$artist/$album
            ffmpeg -hide_banner -loglevel error -i $file -c:a libopus -b:a 160k ~/Music/Library/$artist/$album/$song.opus
            echo "Transcoding $file..."
        end

        echo \nFinished. Files will be found in $HOME/Music/Library/$_flag_artist/$_flag_album
        return
    end

    # if using explicit output directory
    if set -ql _flag_d
        for file in *.{flac,wav}
            set -l output_dir $_flag_d
            set -l song (string sub -e -5 $file)
            mkdir -p $output_dir
            ffmpeg -hide_banner -loglevel error -i $file -c:a libopus -b:a 160k $output_dir/$song.opus
            echo "Transcoding $file..."
        end

        echo \nFinished. Files will be found in $(path resolve $_flag_d)
        return
    end

    for file in *.{flac,wav}
        set -l song (string sub -e -5 $file)
        mkdir -p ./opus
        ffmpeg -hide_banner -loglevel error -i $file -c:a libopus -b:a 160k ./opus/$song.opus
        echo "Transcoding $file..."
    end

    echo \nFinished. Files will be found in $(path resolve ./opus)

    return
end
