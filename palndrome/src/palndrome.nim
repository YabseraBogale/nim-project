echo "Please Enter string"

let word=readLine(stdin)

var back=word.len()-1
var front=0
var state=true

while -1!=back:
  if word[back]!=word[front]:
    state=false
    break
  dec(back,1)
  inc(front,1)


if state==false:
  echo "Not Plandrome"
else:
  echo "Plandrome"
  



  