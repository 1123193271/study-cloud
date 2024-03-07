@echo.服务启动......  
@echo off  
@sc create Consul binpath= "D:\WorkSpace\consul\consul.exe agent -server -ui -bind=127.0.0.1 -client=0.0.0.0 -bootstrap-expect  1  -data-dir D:\WorkSpace\consul\mydata   "
@net start Consul
@sc config Consul start= AUTO  
@echo.Consul start is OK......success
@pause