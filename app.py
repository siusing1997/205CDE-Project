from flask import Flask, redirect, url_for, request, render_template, send_from_directory, session, flash
import pymysql



app = Flask(__name__)
app.secret_key = "secretpassword"


#Connect to database
db = pymysql.connect("localhost", "root", "", "loginsystem")


@app.route('/')
def index():
	return render_template('index.html')


@app.route('/iphone')
def iphone():
	cursor = db.cursor()
	sql = ("SELECT * FROM iphone")
	cursor.execute(sql)
	db.commit()
	rows = cursor.fetchall()

	return render_template('iphone.html', rows = rows)




@app.route('/ipad')
def ipad():
	cursor = db.cursor()
	sql = ("SELECT * FROM ipad")
	cursor.execute(sql)
	db.commit()
	rows = cursor.fetchall()

	return render_template('ipad.html', rows = rows)


@app.route('/imac')
def imac():
	cursor = db.cursor()
	sql = ("SELECT * FROM imac")
	cursor.execute(sql)
	db.commit()
	rows = cursor.fetchall()

	return render_template('imac.html', rows = rows)

@app.route('/accessories')
def accessories():
	cursor = db.cursor()
	sql = ("SELECT * FROM accessories")
	cursor.execute(sql)
	db.commit()
	rows = cursor.fetchall()

	return render_template('accessories.html', rows = rows)



@app.route('/myig')
def myig():
	return render_template('myig.html')


@app.route('/myfb')
def myfb():
	return render_template('myfb.html')

@app.route('/jquery')
def jquery():
	return render_template('jquery.js')

@app.route('/cart')
def cart():
	cursor = db.cursor()
	sql = ("SELECT * FROM cart")
	cursor.execute(sql)
	db.commit()
	rows = cursor.fetchall()

	return render_template('cart.html', rows = rows)
	

@app.route('/contact')
def contact():
	return render_template('contact.html')


@app.route('/aboutus')
def aboutus():
	return render_template('aboutus.html')


	

@app.route('/addProduct', methods=['GET','POST'])
def addProduct():
	request.method == 'POST'
	model = request.form.get("model")
	color = request.form.get("color")
	capacity = request.form.get("capacity")
	price = request.form.get("price")

	cursor = db.cursor()
	# Insert data to database
	sql = '''
	INSERT INTO cart (Model, Color, Capacity, Price)
	VALUES ('%s','%s','%s','%s')
	'''
	cursor.execute(sql%(model, color, capacity, price))
	db.commit()


	flash("Successfully added product to your cart","success")
	return render_template('message.html')


@app.route('/form', methods=['GET','POST'])
def form():

	request.method == 'POST'
	firstname = request.form.get("firstname")
	lastname = request.form.get("lastname")
	contact = request.form.get("contact")
	comment = request.form.get("comment")

	cursor = db.cursor()
	# Insert data to database
	sql ='''
	INSERT INTO form (first_name, last_name, contact_no, comment)
	VALUES ('%s','%s','%s','%s')
	'''
	cursor.execute(sql%(firstname, lastname, contact, comment))
	db.commit()
	
	if comment is None:
		print("You have not input anything")

	else:
		flash("The opinion form has been uploaded","success")

	return render_template("form.html")



@app.route('/logout')
def logout():
	session.clear()
	flash("You have successfully logged out","success")
	return render_template('login.html')



@app.route('/login', methods=['GET','POST'])
def login():

		request.method == 'POST'
		username = request.form.get('username')
		pwd = request.form.get('pwd')
		email = request.form.get('email')

		cursor = db.cursor()

		sql = "SELECT user_name FROM User_info WHERE user_name='%s'" % (username)
		cursor.execute(sql)
		username = cursor.fetchall()

		

		cursor2 = db.cursor()
		sql2 = "SELECT user_pwd FROM User_info WHERE user_pwd='%s'" % (pwd)
		cursor2.execute(sql2)
		password = cursor2.fetchall()
		y = str(password)
		checkpw = y[3:-5]
		db.commit()

		
		if pwd is None:
			print("Please input your username and userpassword below")
			return render_template("login.html")
		else:
			if  pwd == checkpw:
				session['user'] = username
				flash("You have successfully logged in","success")
				return render_template('index.html')

			else:
				flash("Input data is incorrect","danger")
				return render_template('login.html')
		db.commit()
		return render_template('login.html')

		


@app.route('/registration', methods=['GET','POST'])
def registration():

		request.method == 'POST'
		username = request.form.get("username")
		pwd = request.form.get("pwd")
		pwdrepeat = request.form.get("pwd-repeat")
		email = request.form.get("email")

		if pwd is None:
			print("Please register below")
			return render_template("registration.html")
		
		if pwd == pwdrepeat:
	 		# Prepare a cursor object
	   		cursor = db.cursor()
	   		# Insert data to database
	   		sql ='''
	   		INSERT INTO User_info (user_name, user_pwd, user_email)
	   		VALUES ('%s','%s','%s')
	   		'''
	   		cursor.execute(sql%(username, pwd, email))
	   		db.commit()

	   		flash("You have created an account successfully","success")
	   		return render_template('login.html')
	   		
		else:	
			flash("Password is not appropiate","danger")
			return render_template('registration.html')
		
		db.commit()
		return render_template("registration.html")

@app.route('/customerorder', methods=['GET','POST'])
def customerorder():
		request.method == 'POST'
		model = request.form.get("model")
		color = request.form.get("color")
		capacity = request.form.get("capacity")
		price = request.form.get("price")


		cursor = db.cursor()
		sql = ("SELECT * FROM cart")
		cursor.execute(sql)
		db.commit()
		rows = cursor.fetchall()

		sql ='''
		INSERT INTO customerorder(Model,Color,Capacity,Price)
		VALUES ('%s','%s','%s','%s')
		'''

		cursor.execute(sql%(model, color, capacity, price))
		db.commit()

		


		flash("You order is being accepted , the bill will send to you through email.","success")
		cursor = db.cursor()
	
		sql = ("DELETE FROM cart")
		cursor.execute(sql)
		db.commit()

		return render_template('index.html',rows = rows)




		
		

if __name__ == '__main__':
	app.debug = True
	app.run(host="0.0.0.0", port=8000)
