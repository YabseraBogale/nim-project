import osproc

try:
    let output=execCmd("locate ~/*.txt >>output.txt")
    echo output
except IOError:
    echo "err"
