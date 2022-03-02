from socket import socket, AF_INET, SOCK_DGRAM
from datetime import datetime
def settime():
    now = datetime.now()

    since_midnight = (
        now -
        now.replace(hour=0, minute=0, second=0)
    ).seconds

    sock = socket(AF_INET, SOCK_DGRAM)
    sock.sendto(str.encode('aalko/analogclock/clock/set:%d' % since_midnight), ("127.0.0.1", 4444))
