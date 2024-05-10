
echo "Enter text to encrypt"

# i choose the number 7 b/c most human pick it b/n 0-10 if told to pick randomly
const key=7

let word=readLine(stdin)

for index in word:
  var encrypted:int64=(int)index
  encrypted=encrypted+key
  encrypted=encrypted mod 26
  echo encrypted

