
--������ʱ��ռ�
create temporary tablespace epcc_temp tempfile 'D:\app\gcc\oradata\epcc\epcc_temp.dbf' size 32M autoextend on next 32M maxsize unlimited extent management local;
--������ռ�
create tablespace epcc_data logging datafile 'D:\app\gcc\oradata\epcc\epcc_data.dbf'size 32M autoextend on next 32M maxsize unlimited extent management local;

--ɾ����ʱ��ռ�
DROP TABLESPACE db_temp INCLUDING CONTENTS AND DATAFILES;


/*��3���������û���ָ����ռ�  */
create user epcc identified by epcc
default tablespace epcc_data
temporary tablespace epcc_temp;


/*��4�������û�����Ȩ��  */
grant connect,resource,dba to epcc
