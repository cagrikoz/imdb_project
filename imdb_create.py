import mysql.connector
import time

start = time.time()
s = time.strftime('%H %M %S')
print(s)
db = mysql.connector.connect(user='root',
                             passwd='Asdqwe234',
                             host='localhost',
                             port='3306',
                             database='imdb',
                             auth_plugin='mysql_native_password')

cur = db.cursor()
with open('imdb_load_data.sql', 'r') as file:
    lines = file.readlines()
    for line in lines:
        cur.execute(line)

db.commit()
db.close()
end = time.time()
e = time.strftime('%H %M %S')
print(e)
print(f"Performance: {end - start}")