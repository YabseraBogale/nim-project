import net

proc portScanner(port:int)=
    var client=newSocket()
    try:
        client.connect("142.250.187.142",Port(port),80)
    except OSError as e:
        discard e
    except TimeoutError as te:
        discard te
    finally:
        echo port
    
portScanner(80)

