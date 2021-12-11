Define var: 
var = `1`

IF:
if [ "$1" == "1" ]; then
    echo "1"
elif [ "$1" == "2" ]; then
    echo "2"
else echo "not 1 an not 2"
fi

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

FOR: 
for myfile in `ls *.txt`; do 
  echo $myfile
done
for x in {1..10}; do
  echo "x = $x"
done
