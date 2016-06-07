-- 查看 MSSQL 所有数据库, sysdatabases 不同于 sys.databases
select * from sys.databases
select * from sysdatabases

-- 判断某个库是否存在
select count(*) as 是否存在 from sys.databases where name='master'

select count(*) as 数据库总数 from sys.databases 


-- 查看所有表 sysobjects
select * from sysobjects order by name

-- 查看 MSSQL 所有用户表
select * from sysobjects where type='U' order by name

select count(*) from sysobjects where type='U'

select sum(info) from sysobjects where type='U'

select * from sysobjects where type='U' order by name

select * from sysobjects where type='U'

-- 查看某张表是否存在
select * from sysobjects where name='tablename'

-- 查询数据库中所有的字段 syscolumns
select * from sys.columns
select * from syscolumns

-- 查询某张表中所有的字段
select * from syscolumns where id=object_id('ap_check')
select count(*) from syscolumns where id = object_id('ap_check')

select * from sys.tables