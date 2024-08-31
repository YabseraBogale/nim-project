import osproc

# For execShellEx variant
let (output,_)= execCmdEx("locate ~/*.txt >> output.txt")

let data=readFile("output.txt")

