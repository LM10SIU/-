@echo off
echo 正在执行SQL脚本创建数据库表...
mysql -h localhost -P 3306 -u root -p1234 tour_travel < itinerary_hotel_restaurant_tables.sql
echo SQL执行完成
pause
