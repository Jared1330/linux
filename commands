Run python script and save output logs to LOG folder with name YYYY-MM-DDTHHmm.log
#!/bin/bash
python script.py >> LOG/"$(date +"%FT%H%M").log"

Upload file to sftp: 
#!/bin/bash
sftp ... << EOF
cd /floder
put file.txt
quit
EOF
