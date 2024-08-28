import osproc
let output=execCmd("ipconfig ~/*.txt | tee data.txt")

echo output