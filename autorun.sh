if [ "$(echo "$(uname -a | cut -d " " -f 1)")" = "Linux" ];
then 
    echo "Hello"
    sudo apt-get install python3
    sudo pip3 install -r requirements.txt
    sudo cp ./youtube-dl-plugin/youtube_dl_plugin.py /usr/local/bin/
    python3 /usr/local/bin/youtube_dl_plugin.py

else echo "Support for your Operating System is not complete.";
fi;