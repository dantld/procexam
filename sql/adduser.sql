--
-- Admin script
-- Create test user PROCEXAM
--

ACCEPT userName prompt 'DBA User name: '
ACCEPT userPass prompt 'DBA User pass: ' hide
ACCEPT instName prompt 'TNS name:      '

connect &&username/&&userPass@&&instName

create user PROCEXAM identified by PROCEXAM;
grant create session to procexam ; 
grant resource to procexam ;
alter user procexam quota 1M on USERS;
exit;

