--
-- Admin script
-- Create test user PROCEXAM
--

ACCEPT userName prompt 'DBA User name: '
ACCEPT userPass prompt 'DBA User pass: ' hide
ACCEPT instName prompt 'TNS name:      '

connect &&username/&&userPass@&&instName
drop user PROCEXAM;
exit;


