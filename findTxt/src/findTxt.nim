import osproc

let output=execCmd("locate ~/*.txt >> data.txt")

let file=readFile("data.txt")


echo file.readFile()



