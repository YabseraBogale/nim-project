echo "Please Enter string"

let word="word"

var back=word.len()-1
var front=0

while -1!=back:
  if word[back]!=word[front]:
    echo "Not Palandrome"
    break
  dec(back,1)
  inc(front,1)


  