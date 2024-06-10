import net

proc portScanner(port:int)=
    var client=newSocket()
    var a=0
    try:
        client.connect("213.55.95.15",Port(port),110)
        a=1
    except OSError as e:
        discard e
    except TimeoutError as te:
        discard te
    finally:
        if a==1:
            echo "open port at: ",port
        else:
            echo "at ",port

# ok this works
for i in 0 .. 65000:
    portScanner(i)

