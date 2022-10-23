import MySQLdb

mydb = MySQLdb.connect(host = 'localhost',user = 'root',passwd = 'diml123A123',db = 'dism')
cur = mydb.cursor()
command = cur.execute('SELECT * FROM auth')
results = cur.fetchall()

print (results)

cur = mydb.cursor()
command = cur.execute('Insert into auth values(Null, "diml","diml123")')
results = cur.fetchall()

cur = mydb.cursor()
command = cur.execute('SELECT id FROM auth WHERE login="diml"')
results1 = cur.fetchall()    

print (results1)