import time
import os

try:
    import ntplib
    client = ntplib.NTPClient()
    response = client.request('pool.ntp.org')
    currenttime = time.strftime('%Y-%m-%d %H:%M', time.localtime(response.tx_time))
except:
    print('Ei voitu synkronoida aikapalvelimen kanssa')

print(currenttime)
