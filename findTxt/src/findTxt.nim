import osproc
let output=execCmd("find ~/ -name *.txt | tee data.txt")

echo output