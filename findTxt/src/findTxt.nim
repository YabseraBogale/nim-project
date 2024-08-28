import osproc
let output=execCmd("locate ~/*.txt | tee data.txt")

echo output