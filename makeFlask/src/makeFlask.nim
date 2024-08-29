import httpclient,strutils

let client=newHttpClient()

var res=client.getContent("https://news.ycombinator.com/item?id=8984648")

for i in res.splitLines():
  echo i.contains("div")
