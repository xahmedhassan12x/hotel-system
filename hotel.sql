/*insert****************************/
Insert into client values ('112','ahmed','elbitash','01012131415','ahmedhassan@yahoo.com','12');
Insert into reservation values ('6','106','45421548','single','01/05/2019','05/05/2019');
Insert into room values ('235504','405','double','4600','23','104');
Insert into reservation values ('55','199','4842184','single','01/12/2019','12/12/2019');
Insert into client values ('172','mohamed','miami','01112141516','mohamed@yahoo.com','8');
/*update**************************/
Update client
Set name='Ibrahim'
Where client_id='144';
Update reservation
Set room_type='single'
Where reservation_no='77';
Update room
Set price='12000'
Where room_id='1531246';
Update client
Set phone_no='01548756879'
Where client_id='215';
Update room 
Set client_id='198'
Where room_id='687512';
/*delete*****************************/
Delete from client
Where name='Hesham';
Delete from room 
Where room_type='single';
Delete from reservation
Where reservation_no='86';
Delete from client 
Where address='Mansoura';
Delete from room
Where room_id='5647845';
/*select with joins********************/
SELECT *
 FROM reservation
 join room 
on reservation.reservation_no=room.reservation_no;
SELECT room_id
 FROM room 
join client 
on client.client_ID=room.client_ID;
Select *
From client 
Join reservation
On client.client_id=reservation.client_id;
Select *
From client 
Join room
On client.client_id=room.client_id
Order by address desc;
Select *
From room
Join reservation
On room.room_id=reservation.room_id
Where end_date='01/03/2019';
/*select using count and group***********/
Select count (room_id)
From room
Group by price
Having room_type= 'single';
Select reservation_no
From reservation
Group by room_type
Having start_date='06/12/2019';
Select count (*)
From client
Group by name;
/*select using subquery****************/
Select room_no
From room
Where price in (select max(price) from room);
Select phone_no
From client
Where client_id in (select client_id from reservation where room_type='single');
Select*
From reservation
Where reservation_no in (select reservation_no from room where price <'3000');
/* select statement using quireeeeeees****************/
Select room_no
From room
Where room_type='single'
Order by price desc;
Select count (*)
From room;
Select count (*)
From reservation;
Select count (*)
From client;
Select client_id
From reservation
Where start_date='01/08/2019'
Order by reservation_no asc;
Select *
From client
Where name='Adam';
Select *
From room
Order by price desc;
Select name
From client
Order by reservation_no asc;
Select room_no
from room
order by room_no desc;
Select address
From client
Where name='ahmed';
Select reservation_no
From client;
Select price
From room
Where room_type='double';
Select*
From reservation
Where start_date ='2019-06-06 ' and end_date=' 2019-06-12 ';
Select name
From client
Order by name asc;
Select email
From client;
Select price
 From room;
Select name
From client
Where phone_no like'012%';
Select*
From reservation;
Select*
From room;
Select*
From client;


















