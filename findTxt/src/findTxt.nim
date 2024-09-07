import os,std/private/osappdirs
try:
    var home:string=getHomeDir()
    var result=walkDir(home,false,true,false)

except Exception as e:
    echo e.msg