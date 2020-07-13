
--创建临时表空间
create temporary tablespace epcc_temp tempfile 'D:\app\gcc\oradata\epcc\epcc_temp.dbf' size 32M autoextend on next 32M maxsize unlimited extent management local;
--创建表空间
create tablespace epcc_data logging datafile 'D:\app\gcc\oradata\epcc\epcc_data.dbf'size 32M autoextend on next 32M maxsize unlimited extent management local;

--删除临时表空间
DROP TABLESPACE db_temp INCLUDING CONTENTS AND DATAFILES;


/*第3步：创建用户并指定表空间  */
create user epcc identified by epcc
default tablespace epcc_data
temporary tablespace epcc_temp;


/*第4步：给用户授予权限  */
grant connect,resource,dba to epcc
