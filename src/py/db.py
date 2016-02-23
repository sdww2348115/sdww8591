# coding= utf-8
import MySQLdb
from bs4 import BeautifulSoup
def getList():
	try:
		conn = MySQLdb.connect(host='localhost', user='sdww', passwd='sdww', db='picture', port=3306, charset='utf8')
		cur = conn.cursor()
		path = r"/home/sdww/html/sdww/index.html"
		soup = BeautifulSoup(open(path))
		for im in soup.find_all('img'):
			title = im['alt']
			url = im['src']
			url = url.replace('Polaroid Images with Only CSS3   Playground from ZURB_files','img')
			exeSql = "insert into t_picture_info(title, url)values('" + title +"','" + url + "');"
			print("execute: " + exeSql)
			cur.execute(exeSql)

		conn.commit()
		cur.close()
		conn.close()
	except MySQLdb.Error,e:
		print "Mysql Error %d: %s" % (e.args[0], e.args[1])

def test():
	try:
		conn = MySQLdb.connect(host='localhost', user='sdww', passwd='sdww', db='picture', port=3306, charset='utf8')
		cur = conn.cursor()
		cur.execute("insert into t_picture_info(title, url)values('野炊','./img/child.jpg');")
		conn.commit()
		cur.close()
		conn.close()
	except MySQLdb.Error,e:
		print "Mysql Error %d: %s" % (e.args[0], e.args[1])

getList();