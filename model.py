import random
import pymysql

db = pymysql.connect("localhost", "root", "", "proCaffe")
cur = db.cursor()

def generate_pwd(num_of_chars):
    chars=['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
    caps = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
    nums=['1','2','3','4','5','6','7','8','9','0']
    if num_of_chars>=4:
        password_list1 = random.sample(chars,(num_of_chars-4))
        password_list2=random.sample(caps,2)
        password_list3=random.sample(nums,2)
        complete = password_list1+ password_list2+password_list3
        random.shuffle(complete)
        str_complete=''
        for i in complete:
            str_complete+=i
        return str_complete
    else:
        print('Password generator does not work for passwords with less than 4 characters! We recommend at least 11')

def check_if_bartender_exists(bartender_username):
     cur.execute(f'select * from bartender where username ="{bartender_username}" ')
     username_exists= cur.fetchone()
     return username_exists

def register_new_bartender(name,uname,pswd):
    cur.execute(f"insert into bartender values(null,'{name}','{uname}','{pswd}',null,0)")
    db.commit()

def get_active_bartender_name():
    cur.execute("select name from bartender where active=1")
    bartender_name=cur.fetchone()[0]
    return bartender_name

def check_if_username_and_password_is_valid(uname,pswd):
    cur.execute(f"select * from bartender where username = '{uname}' and passwd = '{pswd}'")
    valid = cur.fetchone()
    return valid

def set_bartender_status_to_active(sessID,uname):
    cur.execute(f'update bartender set sessionID="{sessID}",active=1 where username="{uname}"')
    db.commit()

def get_complete_drink_list():
    cur.execute("select * from drink")
    drinklist=cur.fetchall()
    return drinklist

def get_active_bartender_id():
    cur.execute("select id from bartender where active=1")
    bartenderID=cur.fetchone()
    return bartenderID

def get_table_bill_from_table_id(tid):
    cur.execute(f"select * from bill where caffeTable_id={tid} and active=1")
    active_table=cur.fetchone()
    return active_table

def create_new_table_bill(tid,bid):
    cur.execute(f"insert into bill values(null,{tid},0,{bid},now(),1,null)")
    db.commit()    

def get_detailed_table_bill_from_active_table_id(tid):
    cur.execute(f"select * from billitems_detailed where bill_id={tid} ")
    table_bill=cur.fetchall()
    return table_bill

def get_total_bill_price_from_bill_id(bid):
    cur.execute(f"select sum(price) from billitems_detailed where bill_id={bid}")
    total_price = cur.fetchone()[0] 
    return total_price

def set_bartender_to_logged_out():
    cur.execute('update bartender set sessionID=null,active=0 where active=1')
    db.commit()

def remove_drink_from_billitems(bid):
    cur.execute(f"delete from billitems where id={bid}")
    db.commit()

def get_bill_id_from_active_table_id(tid):
    cur.execute(f"select id from bill where caffeTable_id={tid} and active=1")
    bill_id=cur.fetchone()[0]
    return bill_id

def add_drink_to_billitems(bid,drid):
    cur.execute(f"insert into billitems values(null,{bid},{drid})")
    db.commit()

def get_table_id_from_bill_id(bid):
    cur.execute(f"select caffeTable_id from bill where id={bid}")
    table_id=cur.fetchone()[0]
    return table_id

def close_bill_and_get_invoice(price,tid):
    cur.execute(f"update bill set total_price={price},active=0,date_finished=now() where caffeTable_id={tid} and active=1")
    db.commit()

def get_all_shift_bills(bid):
    cur.execute(f'select * from bill where bartender_id={bid} and date(date_initiated)=curdate()')
    total_shift_bills = cur.fetchall()
    return total_shift_bills

def get_total_shift_income(bid):
    cur.execute(f'select sum(total_price) from bill where date(date_initiated)=curdate() and bartender_id={bid}')
    sum_total=cur.fetchone()[0]
    return sum_total