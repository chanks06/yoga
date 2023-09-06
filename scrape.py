from bs4 import BeautifulSoup
import requests 

url = 'https://clients.mindbodyonline.com/classic/mainclass?studioid=9315&tg=&vt=&lvl=&stype=-7&view=week&trn=0&page=&catid=&prodid=&date=9%2f4%2f2023&classid=0&prodGroupId=&sSU=&optForwardingLink=&qParam=&justloggedin=&nLgIn=&pMode=0'
req = requests.get(url)
soup = BeautifulSoup(req.content, 'html.parser')

print(soup.prettify)


