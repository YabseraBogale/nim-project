import httpclient,strutils

let client=newHttpClient()

var res=client.getContent("https://news.ycombinator.com/item?id=8984648")

echo res.len()