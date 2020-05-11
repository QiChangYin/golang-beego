CREATE TABLE cmn_admingroup_tb (
  adminid varchar(50) NOT NULL,
  groupid varchar(50) NOT NULL,
  PRIMARY KEY (adminid,groupid)
);
CREATE TABLE cmn_adminorg_tb (
  adminid varchar(50) NOT NULL,
  orgid varchar(50) NOT NULL,
  PRIMARY KEY (adminid,orgid)
);
CREATE TABLE cmn_adminrole_tb (
  adminid varchar(50) NOT NULL,
  roleid varchar(50) NOT NULL,
  PRIMARY KEY (adminid,roleid)
);

CREATE TABLE cmn_flowaction_tb (
  flowid varchar(50) NOT NULL,
  taskid varchar(50) NOT NULL,
  actionid varchar(50) NOT NULL DEFAULT '',
  nexttaskid varchar(50) DEFAULT NULL,
  backtotaskid varchar(50) DEFAULT NULL,
  taskstatus varchar(50) DEFAULT NULL,
  dispatcher varchar(50) DEFAULT NULL,
  PRIMARY KEY (flowid,taskid,actionid)
);
CREATE TABLE cmn_flowsplit_tb (
  flowid varchar(50) NOT NULL,
  taskid varchar(50) NOT NULL,
  switcherid varchar(50) NOT NULL DEFAULT '',
  varyid varchar(50) DEFAULT NULL,
  functionname varchar(50) DEFAULT NULL,
  functionvalue varchar(50) DEFAULT NULL,
  nexttaskid varchar(50) DEFAULT NULL,
  taskstatus varchar(50) DEFAULT NULL,
  dispatcher varchar(50) DEFAULT NULL,
  taskname varchar(50) DEFAULT NULL,
  PRIMARY KEY (flowid,taskid,switcherid)
);
CREATE TABLE cmn_flowtask_tb (
  flowid varchar(50) NOT NULL,
  taskid varchar(50) NOT NULL,
  taskname varchar(50) DEFAULT NULL,
  flowtype varchar(50) DEFAULT NULL,
  taskjump varchar(50) DEFAULT NULL,
  taskjumpinfer varchar(50) DEFAULT NULL,
  executorconcurrent varchar(50) DEFAULT NULL,
  samepersontaskid varchar(50) DEFAULT NULL,
  nobodytaskid varchar(50) DEFAULT NULL,
  PRIMARY KEY (flowid,taskid)
);
CREATE TABLE cmn_flowuser_tb (
  flowid varchar(50) NOT NULL,
  taskid varchar(50) NOT NULL,
  executorid varchar(50) NOT NULL DEFAULT '',
  executortype varchar(50) DEFAULT NULL,
  executor varchar(50) DEFAULT NULL,
  PRIMARY KEY (flowid,taskid,executorid)
);
CREATE TABLE cmn_flowvar_tb (
  flowid varchar(50) NOT NULL,
  varyid varchar(50) NOT NULL,
  varyname varchar(50) DEFAULT NULL,
  varyvalue varchar(50) DEFAULT NULL,
  PRIMARY KEY (flowid,varyid)
);
CREATE TABLE cmn_grouplevel_tb (
  upperid varchar(50) NOT NULL,
  lowerid varchar(50) NOT NULL,
  PRIMARY KEY (upperid,lowerid)
);
CREATE TABLE cmn_grouprole_tb (
  groupid varchar(50) NOT NULL,
  roleid varchar(50) NOT NULL,
  PRIMARY KEY (groupid,roleid)
);
CREATE TABLE cmn_orgleader_tb (
  orgid varchar(50) NOT NULL,
  userid varchar(50) NOT NULL,
  leadertype char(1) DEFAULT NULL,
  PRIMARY KEY (orgid,userid)
);
CREATE TABLE cmn_orglevel_tb (
  upperid varchar(50) NOT NULL,
  lowerid varchar(50) NOT NULL,
  PRIMARY KEY (upperid,lowerid)
);
CREATE TABLE cmn_orgrole_tb (
  orgid varchar(50) NOT NULL,
  roleid varchar(50) NOT NULL,
  PRIMARY KEY (orgid,roleid)
);
CREATE TABLE cmn_roleprivilege_tb (
  roleid varchar(50) NOT NULL,
  modualid varchar(50) NOT NULL,
  PRIMARY KEY (roleid,modualid)
);
CREATE TABLE cmn_usergroup_tb (
  userid varchar(50) NOT NULL,
  groupid varchar(50) NOT NULL,
  expireddate date DEFAULT NULL,
  PRIMARY KEY (userid,groupid)
);
CREATE TABLE cmn_userrole_tb (
  userid varchar(50) NOT NULL,
  roleid varchar(50) NOT NULL,
  PRIMARY KEY (userid,roleid)
);

CREATE TABLE fi_agent_tb (
  userid varchar(50) DEFAULT NULL,
  agent varchar(50) DEFAULT NULL,
  startdate date DEFAULT NULL,
  enddate date DEFAULT NULL
);
CREATE TABLE fi_countersign (
  tiid int NOT NULL,
  userid varchar(50) NOT NULL,
  fiid int NOT NULL DEFAULT '0',
  taskid varchar(255) NOT NULL DEFAULT '',
  taskstatus varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (tiid,userid)
);
CREATE TABLE fi_flowmantaskaction_tb (
  flowtemplateid varchar(50) NOT NULL,
  tasktype varchar(50) NOT NULL,
  taskid varchar(50) NOT NULL,
  action varchar(50) NOT NULL,
  jump varchar(50) NOT NULL,
  status varchar(50) DEFAULT NULL,
  nexttask varchar(50) DEFAULT NULL,
  backtask varchar(50) DEFAULT NULL,
  PRIMARY KEY (flowtemplateid,taskid,action)
);
CREATE TABLE fi_flowswitchtaskaction_tb (
  flowtemplateid varchar(50) NOT NULL,
  tasktype varchar(50) NOT NULL,
  taskid varchar(50) NOT NULL,
  nos varchar(50) NOT NULL,
  conditions varchar(50) NOT NULL,
  functions varchar(50) NOT NULL,
  valuee varchar(50) NOT NULL,
  jump varchar(50) NOT NULL,
  statuss varchar(50) DEFAULT NULL,
  nexttask varchar(50) DEFAULT NULL,
  backtask varchar(50) DEFAULT NULL,
  PRIMARY KEY (flowtemplateid,taskid,nos)
);
CREATE TABLE fi_flowtask_tb (
  flowtemplateid varchar(50) NOT NULL,
  tasktype varchar(50) NOT NULL,
  taskid varchar(50) NOT NULL,
  taskname varchar(50) NOT NULL,
  supportskip int DEFAULT '0',
  sendmessage int DEFAULT '0',
  concurrent varchar(50) NOT NULL,
  samepersontask varchar(50) DEFAULT NULL,
  nopersontask varchar(50) DEFAULT NULL,
  PRIMARY KEY (flowtemplateid,taskid)
);
CREATE TABLE fi_flowtaskexecuter_tb (
  flowtemplateid varchar(50) NOT NULL,
  tasktype varchar(50) NOT NULL,
  taskid varchar(50) NOT NULL,
  no varchar(50) NOT NULL,
  taskexecuter varchar(50) NOT NULL,
  expression varchar(50) NOT NULL,
  PRIMARY KEY (flowtemplateid,taskid,no)
);
CREATE TABLE fi_org_vary (
  orgid varchar(50) NOT NULL,
  vid varchar(50) NOT NULL,
  vvalue int DEFAULT '0',
  PRIMARY KEY (orgid,vid)
);
CREATE TABLE fi_owner (
  tiid bigint NOT NULL,
  owner varchar(50) NOT NULL,
  PRIMARY KEY (tiid,owner)
);
CREATE TABLE fi_var (
  fiid int NOT NULL,
  vid varchar(50) NOT NULL,
  vvalue varchar(50) DEFAULT NULL,
  PRIMARY KEY (fiid,vid)
);
CREATE TABLE hr_leave_month (
  userid varchar(50) NOT NULL,
  years char(4) NOT NULL,
  remainsalaryleave double DEFAULT NULL,
  usedsalaryleave double DEFAULT NULL,
  remainwelfareleave double DEFAULT NULL,
  usedwelfareleave double DEFAULT NULL,
  remainsickleave double DEFAULT NULL,
  usedsickleave double DEFAULT NULL,
  lastyearremainleave double DEFAULT NULL,
  usedlastyearremainleave double DEFAULT NULL,
  PRIMARY KEY (userid,years)
);
CREATE TABLE hr_leave_year (
  userid varchar(50) NOT NULL,
  years char(4) NOT NULL,
  Currentyearsalaryleave double DEFAULT NULL,
  currentyearwelfareleave double DEFAULT NULL,
  currentyearsickleave double DEFAULT NULL,
  lastyearremainleave double DEFAULT NULL,
  lastyearwanderleave double DEFAULT NULL,
  PRIMARY KEY (userid,years)
);
CREATE TABLE hr_paidleave_month (
  userid varchar(50) NOT NULL,
  years char(4) NOT NULL,
  months varchar(2) NOT NULL,
  overtimeobtained double DEFAULT NULL,
  leaveused double DEFAULT NULL,
  leavedcanceled double DEFAULT NULL,
  invalid double DEFAULT NULL,
  limitdate date DEFAULT NULL,
  PRIMARY KEY (userid,years,months)
);
CREATE TABLE sequence (
  seqname varchar(50) NOT NULL,
  currentValue int NOT NULL,
  increment int NOT NULL DEFAULT '1',
  PRIMARY KEY (seqname)
);


INSERT INTO cmn_org_tb VALUES ('root', '', '', null, -1, null, null);
insert into cmn_user_tb(userid,password) values('devzss','666666');
INSERT INTO cmn_userrole_tb VALUES ('devzss', 'super');
INSERT INTO cmn_role_tb VALUES ('root', 'root', '', -1, null);
INSERT INTO cmn_role_tb VALUES ('super', '��������Ա', 'root', 0, null);
INSERT INTO cmn_roleprivilege_tb VALUES ('super', 'passwordchange');
INSERT INTO cmn_roleprivilege_tb VALUES ('super', 'systemmanage');
INSERT INTO cmn_roleprivilege_tb VALUES ('super', 'administrator');
INSERT INTO cmn_roleprivilege_tb VALUES ('super', 'companymanage');
INSERT INTO cmn_roleprivilege_tb VALUES ('super', 'lang');
INSERT INTO cmn_roleprivilege_tb VALUES ('super', 'modualmanage');
INSERT INTO cmn_roleprivilege_tb VALUES ('super', 'orgmanage');
INSERT INTO cmn_roleprivilege_tb VALUES ('super', 'rolemanage');
INSERT INTO cmn_roleprivilege_tb VALUES ('super', 'usergroup');
INSERT INTO cmn_roleprivilege_tb VALUES ('super', 'usermanage');

INSERT INTO cmn_modual_tb VALUES ('root', 'root', '', null, null, 0);
INSERT INTO cmn_modual_tb VALUES (0, 'managesystem', 'root', '', '', 0);
INSERT INTO cmn_modual_tb VALUES ('administrator', '����Ա', 'systemmanage', '/admin', '', 0);
INSERT INTO cmn_modual_tb VALUES ('agent', '��������', 'flowmanagement', '/agent', '', 0);
INSERT INTO cmn_modual_tb VALUES ('donetask', '�Ѱ�����', 'flowmanagement', '/donetask', '', 0);
INSERT INTO cmn_modual_tb VALUES ('flow-monitor', '���̼��', 'flowmanagement', '/flow-monitor', '', 0);
INSERT INTO cmn_modual_tb VALUES ('flowdefine', '���̶���', 'flowmanagement', '/flowdefine', '', 0);
INSERT INTO cmn_modual_tb VALUES ('flowmanagement', '���̹���', 0, '', '', 0);
INSERT INTO cmn_modual_tb VALUES ('floworgvary', '���̱�������', 'flowmanagement', '/floworgvary', '', 0);
INSERT INTO cmn_modual_tb VALUES ('flowstatus', '����״̬����', 'flowmanagement', '/flowstatus', '', 0);
INSERT INTO cmn_modual_tb VALUES ('flowtemplate', '����ģ��', 'flowmanagement', '/flowtemplate', '', 0);
INSERT INTO cmn_modual_tb VALUES ('lang', '����������', 'systemmanage', '/lang', '', 0);
INSERT INTO cmn_modual_tb VALUES ('modualmanage', 'ģ�����', 'systemmanage', '/modual', '', 0);
INSERT INTO cmn_modual_tb VALUES ('myflow', '�ҵ�����', 'flowmanagement', '/myflow', '', 0);
INSERT INTO cmn_modual_tb VALUES ('orgmanage', '��������', 'systemmanage', '/org', '', 0);
INSERT INTO cmn_modual_tb VALUES ('orgvary', '��������', 'flowmanagement', '/orgvary', '', 0);
INSERT INTO cmn_modual_tb VALUES ('passwordchange', '������', 'commonmanage', '/passwordchange', '', 0);
INSERT INTO cmn_modual_tb VALUES ('rolemanage', '��ɫ����', 'systemmanage', '/role', '', 0);
INSERT INTO cmn_modual_tb VALUES ('systemmanage', 'ϵͳ����', 0, '', '', 0);
INSERT INTO cmn_modual_tb VALUES ('task-trace', '����׷��', 'flowmanagement', '/task-trace', '', 0);
INSERT INTO cmn_modual_tb VALUES ('todo', '��������', 'flowmanagement', '/todo', '', 0);
INSERT INTO cmn_modual_tb VALUES ('transferflow', 'ת��&���&תǩ', 'flowmanagement', '/transferflow', '', 0);
INSERT INTO cmn_modual_tb VALUES ('userinfo', 'Ա����Ϣ', 'hrmanage', '/userinfo', '', 0);
INSERT INTO cmn_modual_tb VALUES ('enum', 'ö�ٹ���', 'systemmanage', '/enum', '', 0);
INSERT INTO cmn_modual_tb VALUES ('usermanage', '�û�����', 'systemmanage', '/usermanage', '', 2);
INSERT INTO cmn_modual_tb VALUES ('usergroup', '�û������', 'systemmanage', '/usergroup', '', 2);
INSERT INTO cmn_modual_tb VALUES ('companymanage', '��˾����', 'systemmanage', '/company', '', 3);





INSERT INTO fi_flowtask_tb VALUES ('expense', 'man', 999, '����', 0, 0, 0, '', '');
INSERT INTO fi_flowtask_tb VALUES ('expense', 'man', 5, '���γ�����', 0, 0, 0, 10, 10);
INSERT INTO fi_flowtask_tb VALUES ('expense', 'man', 15, '�γ�����', 0, 0, '', 20, 20);
INSERT INTO fi_flowtask_tb VALUES ('expense', 'man', 20, '����������', 0, 0, '', 25, 25);
INSERT INTO fi_flowtask_tb VALUES ('expense', 'man', 30, '��������', 0, 0, '', 32, 32);
INSERT INTO fi_flowtask_tb VALUES ('expense', 'man', 35, '����������', 0, 0, '', 40, 40);
INSERT INTO fi_flowtask_tb VALUES ('expense', 'man', 50, '�ܾ�������', 0, 0, '', 55, 55);
INSERT INTO fi_flowtask_tb VALUES ('expense', 'man', 60, '����γ�����', 0, 0, '', '', 20);
INSERT INTO fi_flowtask_tb VALUES ('expense', 'man', 70, '���񲿳�����', 0, 0, '', '', 75);
INSERT INTO fi_flowtask_tb VALUES ('expense', 'man', 75, '��������', 0, 0, '', '', 80);
INSERT INTO fi_flowtask_tb VALUES ('expense', 'man', 80, '���ɷ���', 0, 0, '', '', 999);
INSERT INTO fi_flowtask_tb VALUES ('expense', 'switch', 47, '�жϸ����ύ', 0, 0, '', '', '');
INSERT INTO fi_flowtask_tb VALUES ('expense', 'man', 42, 'Ӫҵ��������', 0, 0, '', 47, 47);
INSERT INTO fi_flowtask_tb VALUES ('expense', 'switch', 40, '�жϸ�������', 0, 0, '', '', '');
INSERT INTO fi_flowtask_tb VALUES ('expense', 'switch', 32, '�жϻ�������', 0, 0, '', '', '');
INSERT INTO fi_flowtask_tb VALUES ('expense', 'man', 1, '����', 0, 0, 0, '', '');
INSERT INTO fi_flowtask_tb VALUES ('expense', 'man', 45, '�ۺ�������', 0, 0, '', 47, 47);
INSERT INTO fi_flowtask_tb VALUES ('expense', 'man', 55, '���񵣵�����', 0, 0, '', '', 60);
INSERT INTO fi_flowtask_tb VALUES ('expense', 'man', 65, '���񸱲�������', 0, 0, '', 70, 70);
INSERT INTO fi_flowtask_tb VALUES ('plan', 'man', 1, '����', 0, 0, 0, '', '');
INSERT INTO fi_flowtask_tb VALUES ('plan', 'man', 15, '�γ�����', 0, 0, '', 20, 20);
INSERT INTO fi_flowtask_tb VALUES ('plan', 'man', 20, '����������', 0, 0, '', 25, 25);
INSERT INTO fi_flowtask_tb VALUES ('plan', 'man', 5, '���γ�����', 0, 0, 0, 10, 10);
INSERT INTO fi_flowtask_tb VALUES ('plan', 'man', 999, '����', 0, 0, 0, '', '');
INSERT INTO fi_flowtask_tb VALUES ('pay', 'man', 1, '����', 0, 0, 0, '', '');
INSERT INTO fi_flowtask_tb VALUES ('pay', 'man', 15, '�γ�����', 0, 0, '', 20, 20);
INSERT INTO fi_flowtask_tb VALUES ('pay', 'man', 20, '����������', 0, 0, '', 25, 25);
INSERT INTO fi_flowtask_tb VALUES ('pay', 'man', 30, '��������', 0, 0, '', 32, 32);
INSERT INTO fi_flowtask_tb VALUES ('pay', 'switch', 32, '�жϻ�������', 0, 0, '', '', '');
INSERT INTO fi_flowtask_tb VALUES ('pay', 'man', 35, '����������', 0, 0, '', 40, 40);
INSERT INTO fi_flowtask_tb VALUES ('pay', 'switch', 40, '�жϸ�������', 0, 0, '', '', '');
INSERT INTO fi_flowtask_tb VALUES ('pay', 'man', 42, 'Ӫҵ��������', 0, 0, '', 47, 47);
INSERT INTO fi_flowtask_tb VALUES ('pay', 'man', 45, '�ۺ�������', 0, 0, '', 47, 47);
INSERT INTO fi_flowtask_tb VALUES ('pay', 'switch', 47, '�жϸ����ύ', 0, 0, '', '', '');
INSERT INTO fi_flowtask_tb VALUES ('pay', 'man', 5, '���γ�����', 0, 0, 0, 10, 10);
INSERT INTO fi_flowtask_tb VALUES ('pay', 'man', 50, '�ܾ�������', 0, 0, '', 55, 55);
INSERT INTO fi_flowtask_tb VALUES ('pay', 'man', 55, '���񵣵�����', 0, 0, '', '', 60);
INSERT INTO fi_flowtask_tb VALUES ('pay', 'man', 60, '����γ�����', 0, 0, '', '', 20);
INSERT INTO fi_flowtask_tb VALUES ('pay', 'man', 65, '���񸱲�������', 0, 0, '', 70, 70);
INSERT INTO fi_flowtask_tb VALUES ('pay', 'man', 70, '���񲿳�����', 0, 0, '', '', 75);
INSERT INTO fi_flowtask_tb VALUES ('pay', 'man', 75, '��������', 0, 0, '', '', 80);
INSERT INTO fi_flowtask_tb VALUES ('pay', 'man', 80, '���ɷ���', 0, 0, '', '', 999);
INSERT INTO fi_flowtask_tb VALUES ('pay', 'man', 999, '����', 0, 0, 0, '', '');
INSERT INTO fi_flowtask_tb VALUES ('loantravel', 'man', 1, '����', 0, 0, 0, '', '');
INSERT INTO fi_flowtask_tb VALUES ('loantravel', 'man', 15, '�γ�����', 0, 0, '', 20, 20);
INSERT INTO fi_flowtask_tb VALUES ('loantravel', 'man', 20, '����������', 0, 0, '', 25, 25);
INSERT INTO fi_flowtask_tb VALUES ('loantravel', 'man', 30, '��������', 0, 0, '', 32, 32);
INSERT INTO fi_flowtask_tb VALUES ('loantravel', 'man', 5, '���γ�����', 0, 0, 0, 10, 10);
INSERT INTO fi_flowtask_tb VALUES ('loantravel', 'man', 999, '����', 0, 0, 0, '', '');
INSERT INTO fi_flowtask_tb VALUES ('loan', 'man', 1, '����', 0, 0, 0, '', '');
INSERT INTO fi_flowtask_tb VALUES ('loan', 'man', 15, '�γ�����', 0, 0, '', 20, 20);
INSERT INTO fi_flowtask_tb VALUES ('loan', 'man', 20, '����������', 0, 0, '', 25, 25);
INSERT INTO fi_flowtask_tb VALUES ('loan', 'man', 5, '���γ�����', 0, 0, 0, 10, 10);
INSERT INTO fi_flowtask_tb VALUES ('loan', 'man', 80, '���ɷ���', 0, 0, '', '', 999);
INSERT INTO fi_flowtask_tb VALUES ('loan', 'man', 999, '����', 0, 0, 0, '', '');
INSERT INTO fi_flowtask_tb VALUES ('meeting', 'man', 1, '����', 0, 0, 0, '', '');
INSERT INTO fi_flowtask_tb VALUES ('meeting', 'man', 15, '�γ�����', 0, 0, '', 20, 20);
INSERT INTO fi_flowtask_tb VALUES ('meeting', 'man', 20, '����������', 0, 0, '', 25, 25);
INSERT INTO fi_flowtask_tb VALUES ('meeting', 'switch', 40, '�жϸ�������', 0, 0, '', '', '');
INSERT INTO fi_flowtask_tb VALUES ('meeting', 'switch', 47, '�жϸ����ύ', 0, 0, '', '', '');
INSERT INTO fi_flowtask_tb VALUES ('meeting', 'man', 5, '���γ�����', 0, 0, 0, 10, 10);
INSERT INTO fi_flowtask_tb VALUES ('meeting', 'man', 50, '�ܾ�������', 0, 0, '', 55, 55);
INSERT INTO fi_flowtask_tb VALUES ('meeting', 'man', 55, '���񵣵�����', 0, 0, '', '', 60);
INSERT INTO fi_flowtask_tb VALUES ('meeting', 'man', 60, '����γ�����', 0, 0, '', '', 20);
INSERT INTO fi_flowtask_tb VALUES ('meeting', 'man', 65, '���񸱲�������', 0, 0, '', 70, 70);
INSERT INTO fi_flowtask_tb VALUES ('meeting', 'man', 70, '���񲿳�����', 0, 0, '', '', 75);
INSERT INTO fi_flowtask_tb VALUES ('meeting', 'man', 75, '��������', 0, 0, '', '', 80);
INSERT INTO fi_flowtask_tb VALUES ('meeting', 'man', 80, '���ɷ���', 0, 0, '', '', 999);
INSERT INTO fi_flowtask_tb VALUES ('meeting', 'man', 999, '����', 0, 0, 0, '', '');
INSERT INTO fi_flowtask_tb VALUES ('meeting', 'switch', 33, '�жϽ��2', 0, 0, '', '', '');
INSERT INTO fi_flowtask_tb VALUES ('meeting', 'switch', 32, '�жϽ��1', 0, 0, '', '', '');
INSERT INTO fi_flowtask_tb VALUES ('meeting', 'man', 30, '��������', 0, 0, '', 34, 34);
INSERT INTO fi_flowtask_tb VALUES ('meeting', 'switch', 34, '�жϻ�������', 0, 0, '', '', '');
INSERT INTO fi_flowtask_tb VALUES ('meeting', 'man', 42, 'Ӫҵ��������', 0, 0, '', 46, 46);
INSERT INTO fi_flowtask_tb VALUES ('meeting', 'man', 45, '�ۺ�������', 0, 0, '', 46, 46);
INSERT INTO fi_flowtask_tb VALUES ('meeting', 'switch', 46, '�жϽ��3', 0, 0, '', '', '');
INSERT INTO fi_flowtask_tb VALUES ('meeting', 'man', 37, '������2����', 0, 0, '', 33, 33);
INSERT INTO fi_flowtask_tb VALUES ('meeting', 'man', 35, '����������', 0, 0, '', 40, 40);
INSERT INTO fi_flowtask_tb VALUES ('common', 'man', 1, '����', 0, 0, 0, '', '');
INSERT INTO fi_flowtask_tb VALUES ('common', 'man', 15, '�γ�����', 0, 0, '', 20, 20);
INSERT INTO fi_flowtask_tb VALUES ('common', 'man', 20, '����������', 0, 0, '', 25, 25);
INSERT INTO fi_flowtask_tb VALUES ('common', 'man', 5, '���γ�����', 0, 0, 0, 10, 10);
INSERT INTO fi_flowtask_tb VALUES ('common', 'man', 50, '�ܾ�������', 0, 0, '', 55, 55);
INSERT INTO fi_flowtask_tb VALUES ('common', 'man', 55, '���񵣵�����', 0, 0, '', '', 60);
INSERT INTO fi_flowtask_tb VALUES ('common', 'man', 60, '����γ�����', 0, 0, '', '', 20);
INSERT INTO fi_flowtask_tb VALUES ('common', 'man', 70, '���񲿳�����', 0, 0, '', '', 75);
INSERT INTO fi_flowtask_tb VALUES ('common', 'man', 75, '��������', 0, 0, '', '', 80);
INSERT INTO fi_flowtask_tb VALUES ('common', 'man', 80, '���ɷ���', 0, 0, '', '', 999);
INSERT INTO fi_flowtask_tb VALUES ('common', 'man', 999, '����', 0, 0, 0, '', '');
INSERT INTO fi_flowtask_tb VALUES ('common', 'man', 30, '��������', 0, 0, '', 35, 35);
INSERT INTO fi_flowtask_tb VALUES ('common', 'man', 35, '����������', 0, 0, '', 45, 45);
INSERT INTO fi_flowtask_tb VALUES ('common', 'man', 45, '��������', 0, 0, '', 50, 50);
INSERT INTO fi_flowtask_tb VALUES ('common', 'man', 65, '���񸱲�������', 0, 0, '', '', 70);
INSERT INTO fi_flowtask_tb VALUES ('loan', 'man', 30, '��������', 0, 0, '', 32, 80);
INSERT INTO fi_flowtask_tb VALUES ('loan', 'man', 25, '����������', 0, 0, '', 30, 30);
INSERT INTO fi_flowtask_tb VALUES ('loan', 'man', 10, '����γ�����', 0, 0, '', 15, 15);
INSERT INTO fi_flowtask_tb VALUES ('expense', 'man', 10, '����γ�����', 0, 0, '', 15, 15);
INSERT INTO fi_flowtask_tb VALUES ('expense', 'man', 25, '����������', 0, 0, '', 30, 30);
INSERT INTO fi_flowtask_tb VALUES ('plan', 'switch', 40, '�жϽ��', 0, 0, '', '', '');
INSERT INTO fi_flowtask_tb VALUES ('plan', 'man', 50, '�ۺ��󻭿γ�����', 0, 0, '', '', 60);
INSERT INTO fi_flowtask_tb VALUES ('plan', 'man', 60, '�ۺ��󻭲�������', 0, 0, '', '', 70);
INSERT INTO fi_flowtask_tb VALUES ('plan', 'man', 70, '����������', 0, 0, '', '', 80);
INSERT INTO fi_flowtask_tb VALUES ('plan', 'switch', 85, '�жϽ��2', 0, 0, '', '', '');
INSERT INTO fi_flowtask_tb VALUES ('plan', 'man', 80, '��������', 0, 0, '', '', 85);
INSERT INTO fi_flowtask_tb VALUES ('plan', 'man', 90, '�ܾ�������', 0, 0, '', '', 999);
INSERT INTO fi_flowtask_tb VALUES ('plan', 'man', 30, '��������', 0, 0, '', 32, 40);
INSERT INTO fi_flowtask_tb VALUES ('plan', 'man', 10, '����γ�����', 0, 0, '', 15, 15);
INSERT INTO fi_flowtask_tb VALUES ('plan', 'man', 25, '����������', 0, 0, '', 30, 30);
INSERT INTO fi_flowtask_tb VALUES ('loantravel', 'switch', 32, '�жϻ�������', 0, 0, '', '', '');
INSERT INTO fi_flowtask_tb VALUES ('loantravel', 'man', 35, '����������', 0, 0, '', 5, 45);
INSERT INTO fi_flowtask_tb VALUES ('loantravel', 'man', 45, '��������', 0, 0, '', 47, 50);
INSERT INTO fi_flowtask_tb VALUES ('loantravel', 'switch', 50, '�жϹ���/����', 0, 0, '', '', '');
INSERT INTO fi_flowtask_tb VALUES ('loantravel', 'man', 10, '����γ�����', 0, 0, '', 15, 15);
INSERT INTO fi_flowtask_tb VALUES ('loantravel', 'man', 25, '����������', 0, 0, '', 30, 30);
INSERT INTO fi_flowtask_tb VALUES ('meeting', 'man', 10, '����γ�����', 0, 0, '', 15, 15);
INSERT INTO fi_flowtask_tb VALUES ('meeting', 'man', 25, '����������', 0, 0, '', 30, 30);
INSERT INTO fi_flowtask_tb VALUES ('pay', 'man', 10, '����γ�����', 0, 0, '', 15, 15);
INSERT INTO fi_flowtask_tb VALUES ('pay', 'man', 25, '����������', 0, 0, '', 30, 30);
INSERT INTO fi_flowtask_tb VALUES ('common', 'man', 10, '����γ�����', 0, 0, '', 15, 15);
INSERT INTO fi_flowtask_tb VALUES ('common', 'man', 25, '����������', 0, 0, '', 30, 30);
INSERT INTO fi_flowtask_tb VALUES ('common2', 'man', 1, '����', 0, 0, 0, '', '');
INSERT INTO fi_flowtask_tb VALUES ('common2', 'man', 10, '����γ�����', 0, 0, '', 15, 15);
INSERT INTO fi_flowtask_tb VALUES ('common2', 'man', 15, '�γ�����', 0, 0, '', 20, 20);
INSERT INTO fi_flowtask_tb VALUES ('common2', 'man', 20, '����������', 0, 0, '', 25, 25);
INSERT INTO fi_flowtask_tb VALUES ('common2', 'man', 25, '����������', 0, 0, '', 30, 30);
INSERT INTO fi_flowtask_tb VALUES ('common2', 'man', 30, '��������', 0, 0, '', 35, 35);
INSERT INTO fi_flowtask_tb VALUES ('common2', 'man', 35, '����������', 0, 0, '', 45, 45);
INSERT INTO fi_flowtask_tb VALUES ('common2', 'man', 45, '��������', 0, 0, '', 50, 50);
INSERT INTO fi_flowtask_tb VALUES ('common2', 'man', 5, '���γ�����', 0, 0, 0, 10, 10);
INSERT INTO fi_flowtask_tb VALUES ('common2', 'man', 999, '����', 0, 0, 0, '', '');
INSERT INTO fi_flowtask_tb VALUES ('common2', 'man', 50, '�ܾ�������', 0, 0, '', 999, 999);
INSERT INTO fi_flowtask_tb VALUES ('loantravel', 'man', 60, '�ܾ�������', 0, 0, '', 47, 999);
INSERT INTO fi_flowtask_tb VALUES ('travel', 'man', 1, '����', 0, 0, 0, '', '');
INSERT INTO fi_flowtask_tb VALUES ('travel', 'man', 10, '����γ�����', 0, 0, '', 15, 15);
INSERT INTO fi_flowtask_tb VALUES ('travel', 'man', 15, '�γ�����', 0, 0, '', 20, 20);
INSERT INTO fi_flowtask_tb VALUES ('travel', 'man', 20, '����������', 0, 0, '', 25, 25);
INSERT INTO fi_flowtask_tb VALUES ('travel', 'man', 25, '����������', 0, 0, '', 30, 30);
INSERT INTO fi_flowtask_tb VALUES ('travel', 'man', 30, '��������', 0, 0, '', 32, 32);
INSERT INTO fi_flowtask_tb VALUES ('travel', 'switch', 32, '�жϻ�������', 0, 0, '', '', '');
INSERT INTO fi_flowtask_tb VALUES ('travel', 'man', 35, '����������', 0, 0, '', 40, 40);
INSERT INTO fi_flowtask_tb VALUES ('travel', 'switch', 40, '�жϸ�������', 0, 0, '', '', '');
INSERT INTO fi_flowtask_tb VALUES ('travel', 'man', 42, 'Ӫҵ��������', 0, 0, '', 47, 47);
INSERT INTO fi_flowtask_tb VALUES ('travel', 'man', 45, '�ۺ�������', 0, 0, '', 47, 47);
INSERT INTO fi_flowtask_tb VALUES ('travel', 'switch', 47, '�жϸ����ύ', 0, 0, '', '', '');
INSERT INTO fi_flowtask_tb VALUES ('travel', 'man', 5, '���γ�����', 0, 0, 0, 10, 10);
INSERT INTO fi_flowtask_tb VALUES ('travel', 'man', 50, '�ܾ�������', 0, 0, '', 55, 55);
INSERT INTO fi_flowtask_tb VALUES ('travel', 'man', 55, '���񵣵�����', 0, 0, '', '', 60);
INSERT INTO fi_flowtask_tb VALUES ('travel', 'man', 60, '����γ�����', 0, 0, '', '', 20);
INSERT INTO fi_flowtask_tb VALUES ('travel', 'man', 65, '���񸱲�������', 0, 0, '', 70, 70);
INSERT INTO fi_flowtask_tb VALUES ('travel', 'man', 70, '���񲿳�����', 0, 0, '', '', 75);
INSERT INTO fi_flowtask_tb VALUES ('travel', 'man', 75, '��������', 0, 0, '', '', 80);
INSERT INTO fi_flowtask_tb VALUES ('travel', 'man', 80, '���ɷ���', 0, 0, '', '', 999);
INSERT INTO fi_flowtask_tb VALUES ('travel', 'man', 999, '����', 0, 0, 0, '', '');
INSERT INTO fi_flowtask_tb VALUES ('payaccount', 'man', 1, '����', 0, 0, 0, '', '');
INSERT INTO fi_flowtask_tb VALUES ('payaccount', 'man', 10, '����γ�����', 0, 0, '', 15, 15);
INSERT INTO fi_flowtask_tb VALUES ('payaccount', 'man', 15, '�γ�����', 0, 0, '', 20, 20);
INSERT INTO fi_flowtask_tb VALUES ('payaccount', 'man', 20, '����������', 0, 0, '', 25, 25);
INSERT INTO fi_flowtask_tb VALUES ('payaccount', 'man', 25, '����������', 0, 0, '', 30, 30);
INSERT INTO fi_flowtask_tb VALUES ('payaccount', 'man', 5, '���γ�����', 0, 0, 0, 10, 10);
INSERT INTO fi_flowtask_tb VALUES ('payaccount', 'man', 65, '���񸱲�������', 0, 0, '', '', 70);
INSERT INTO fi_flowtask_tb VALUES ('payaccount', 'man', 999, '����', 0, 0, 0, '', '');
INSERT INTO fi_flowtask_tb VALUES ('payaccount', 'man', 30, '��������', 0, 0, '', 35, 40);
INSERT INTO fi_flowtask_tb VALUES ('payaccount', 'man', 40, '���񵣵�����', 0, 0, '', '', 50);
INSERT INTO fi_flowtask_tb VALUES ('payaccount', 'man', 50, '��������', 0, 0, '', '', 60);
INSERT INTO fi_flowtask_tb VALUES ('payaccount', 'man', 70, '���񲿳�����', 0, 0, '', '', 999);
INSERT INTO fi_flowtask_tb VALUES ('payaccount', 'man', 60, '����γ�����', 0, 0, '', '', 65);
INSERT INTO fi_flowtask_tb VALUES ('att', 'man', 999, '����', 0, 0, 0, '', '');
INSERT INTO fi_flowtask_tb VALUES ('att', 'man', 1, '����', 0, 0, 0, '', '');
INSERT INTO fi_flowtask_tb VALUES ('att', 'man', 15, '�γ�����', 0, 0, '', 30, 30);
INSERT INTO fi_flowtask_tb VALUES ('att', 'man', 30, '��������', 0, 0, '', 999, 999);
INSERT INTO fi_flowtask_tb VALUES ('attcancel', 'man', 1, '����', 0, 0, 0, '', '');
INSERT INTO fi_flowtask_tb VALUES ('attcancel', 'man', 15, '�γ�����', 0, 0, '', 30, 30);
INSERT INTO fi_flowtask_tb VALUES ('attcancel', 'man', 30, '��������', 0, 0, '', 999, 999);
INSERT INTO fi_flowtask_tb VALUES ('attcancel', 'man', 999, '����', 0, 0, 0, '', '');
INSERT INTO fi_flowtask_tb VALUES ('overtime', 'man', 30, '��������', 0, 0, '', 999, 999);
INSERT INTO fi_flowtask_tb VALUES ('overtime', 'man', 999, '����', 0, 0, 0, '', '');
INSERT INTO fi_flowtask_tb VALUES ('overtime', 'switch', 5, '�жϵ��¼Ӱ�����', 0, 0, '', '', '');
INSERT INTO fi_flowtask_tb VALUES ('overtime', 'man', 1, '����', 0, 0, 0, '', '');
INSERT INTO fi_flowtask_tb VALUES ('overtime', 'man', 50, '�ܾ�������', 0, 0, '', 999, 999);
INSERT INTO fi_flowtask_tb VALUES ('overtime', 'switch', 10, '�жϼӰ�����', 0, 0, '', '', '');
INSERT INTO fi_flowtask_tb VALUES ('overtime', 'man', 40, '��������', 0, 0, '', 999, 999);
INSERT INTO fi_flowtask_tb VALUES ('resign', 'man', 1, '����', 0, 0, 0, '', '');
INSERT INTO fi_flowtask_tb VALUES ('resign', 'man', 15, '�γ�����', 0, 0, '', 30, 30);
INSERT INTO fi_flowtask_tb VALUES ('resign', 'man', 30, '��������', 0, 0, '', 999, 999);
INSERT INTO fi_flowtask_tb VALUES ('resign', 'man', 999, '����', 0, 0, 0, '', '');
INSERT INTO fi_flowtask_tb VALUES ('meetingroomapply', 'man', 1, '����', 0, 0, 0, '', '');
INSERT INTO fi_flowtask_tb VALUES ('meetingroomapply', 'man', 999, '����', 0, 0, 0, '', '');
INSERT INTO fi_flowtask_tb VALUES ('meetingroomapply', 'switch', 5, '�ж��Ƿ���Ҫ����', 0, 0, '', '', '');
INSERT INTO fi_flowtask_tb VALUES ('meetingroomapply', 'man', 10, '�����ҹ���������', 0, 0, '', '', 999);

INSERT INTO fi_flowtaskexecuter_tb VALUES ('expense', 'man', 5, 1, 7, 6);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('expense', 'man', 15, 1, 6, 5);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('expense', 'man', 20, 1, 7, 4);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('expense', 'man', 30, 1, 6, 3);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('expense', 'man', 35, 1, 6, 2);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('expense', 'man', 50, 1, 3, 'gm');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('expense', 'man', 60, 1, 3, 'finance_director');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('expense', 'man', 70, 1, 3, 'finance_minister');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('expense', 'man', 75, 1, 3, 'chuna1');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('expense', 'man', 80, 1, 3, 'chuna2');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('expense', 'man', 42, 1, 3, 'business_vicegm');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('expense', 'man', 45, 1, 3, 'aftersale_vicegm');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('expense', 'man', 55, 1, 3, 'finance_employee');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('expense', 'man', 65, 1, 3, 'finance_viceminister');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('plan', 'man', 15, 1, 6, 5);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('plan', 'man', 20, 1, 7, 4);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('plan', 'man', 5, 1, 7, 6);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('pay', 'man', 15, 1, 6, 5);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('pay', 'man', 20, 1, 7, 4);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('pay', 'man', 30, 1, 6, 3);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('pay', 'man', 35, 1, 6, 2);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('pay', 'man', 42, 1, 3, 'business_vicegm');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('pay', 'man', 45, 1, 3, 'aftersale_vicegm');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('pay', 'man', 5, 1, 7, 6);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('pay', 'man', 50, 1, 3, 'gm');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('pay', 'man', 55, 1, 3, 'finance_employee');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('pay', 'man', 60, 1, 3, 'finance_director');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('pay', 'man', 65, 1, 3, 'finance_viceminister');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('pay', 'man', 70, 1, 3, 'finance_minister');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('pay', 'man', 75, 1, 3, 'chuna1');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('pay', 'man', 80, 1, 3, 'chuna2');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('loantravel', 'man', 15, 1, 6, 5);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('loantravel', 'man', 20, 1, 7, 4);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('loantravel', 'man', 30, 1, 6, 3);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('loantravel', 'man', 5, 1, 7, 6);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('loan', 'man', 15, 1, 6, 5);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('loan', 'man', 20, 1, 7, 4);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('loan', 'man', 5, 1, 7, 6);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('loan', 'man', 80, 1, 3, 'chuna2');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('meeting', 'man', 15, 1, 6, 5);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('meeting', 'man', 20, 1, 7, 4);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('meeting', 'man', 5, 1, 7, 6);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('meeting', 'man', 50, 1, 3, 'gm');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('meeting', 'man', 55, 1, 3, 'finance_employee');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('meeting', 'man', 60, 1, 3, 'finance_director');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('meeting', 'man', 65, 1, 3, 'finance_viceminister');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('meeting', 'man', 70, 1, 3, 'finance_minister');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('meeting', 'man', 75, 1, 3, 'chuna1');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('meeting', 'man', 80, 1, 3, 'chuna2');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('meeting', 'man', 30, 1, 6, 3);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('meeting', 'man', 42, 1, 3, 'business_vicegm');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('meeting', 'man', 45, 1, 3, 'aftersale_vicegm');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('meeting', 'man', 37, 1, 6, 2);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('meeting', 'man', 35, 1, 6, 2);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('common', 'man', 15, 1, 6, 5);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('common', 'man', 20, 1, 7, 4);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('common', 'man', 5, 1, 7, 6);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('common', 'man', 50, 1, 3, 'gm');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('common', 'man', 55, 1, 3, 'finance_employee');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('common', 'man', 60, 1, 3, 'finance_director');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('common', 'man', 70, 1, 3, 'finance_minister');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('common', 'man', 75, 1, 3, 'chuna1');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('common', 'man', 80, 1, 3, 'chuna2');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('common', 'man', 30, 1, 6, 3);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('common', 'man', 35, 1, 6, 2);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('common', 'man', 45, 1, 7, 1);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('common', 'man', 65, 1, 3, 'finance_viceminister');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('loan', 'man', 30, 1, 6, 3);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('loan', 'man', 25, 1, 6, 4);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('loan', 'man', 10, 1, 6, 6);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('expense', 'man', 10, 1, 6, 6);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('expense', 'man', 25, 1, 6, 4);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('plan', 'man', 50, 1, 3, 'comprehensiveplan_director');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('plan', 'man', 60, 1, 3, 'comprehensiveplan_minister');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('plan', 'man', 70, 1, 6, 2);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('plan', 'man', 80, 1, 7, 1);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('plan', 'man', 90, 1, 3, 'gm');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('plan', 'man', 30, 1, 6, 3);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('plan', 'man', 10, 1, 6, 6);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('plan', 'man', 25, 1, 6, 4);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('loantravel', 'man', 35, 1, 6, 2);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('loantravel', 'man', 45, 1, 7, 1);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('loantravel', 'man', 10, 1, 6, 6);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('loantravel', 'man', 25, 1, 6, 4);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('meeting', 'man', 10, 1, 6, 6);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('meeting', 'man', 25, 1, 6, 4);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('pay', 'man', 10, 1, 6, 6);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('pay', 'man', 25, 1, 6, 4);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('common', 'man', 10, 1, 6, 6);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('common', 'man', 25, 1, 6, 4);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('common2', 'man', 10, 1, 6, 6);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('common2', 'man', 15, 1, 6, 5);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('common2', 'man', 20, 1, 7, 4);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('common2', 'man', 25, 1, 6, 4);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('common2', 'man', 30, 1, 6, 3);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('common2', 'man', 35, 1, 6, 2);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('common2', 'man', 45, 1, 7, 1);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('common2', 'man', 5, 1, 7, 6);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('common2', 'man', 50, 1, 3, 'gm');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('loantravel', 'man', 60, 1, 3, 'gm');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('travel', 'man', 10, 1, 6, 6);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('travel', 'man', 15, 1, 6, 5);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('travel', 'man', 20, 1, 7, 4);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('travel', 'man', 25, 1, 6, 4);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('travel', 'man', 30, 1, 6, 3);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('travel', 'man', 35, 1, 6, 2);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('travel', 'man', 42, 1, 3, 'business_vicegm');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('travel', 'man', 45, 1, 3, 'aftersale_vicegm');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('travel', 'man', 5, 1, 7, 6);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('travel', 'man', 50, 1, 3, 'gm');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('travel', 'man', 55, 1, 3, 'finance_employee');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('travel', 'man', 60, 1, 3, 'finance_director');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('travel', 'man', 65, 1, 3, 'finance_viceminister');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('travel', 'man', 70, 1, 3, 'finance_minister');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('travel', 'man', 75, 1, 3, 'chuna1');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('travel', 'man', 80, 1, 3, 'chuna2');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('payaccount', 'man', 10, 1, 6, 6);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('payaccount', 'man', 15, 1, 6, 5);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('payaccount', 'man', 20, 1, 7, 4);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('payaccount', 'man', 25, 1, 6, 4);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('payaccount', 'man', 5, 1, 7, 6);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('payaccount', 'man', 65, 1, 3, 'finance_viceminister');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('payaccount', 'man', 30, 1, 6, 3);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('payaccount', 'man', 40, 1, 3, 'finance_employee');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('payaccount', 'man', 50, 1, 3, 'chuna1');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('payaccount', 'man', 70, 1, 3, 'finance_minister');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('payaccount', 'man', 60, 1, 3, 'finance_director');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('att', 'man', 15, 1, 6, 5);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('att', 'man', 30, 1, 6, 3);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('attcancel', 'man', 15, 1, 6, 5);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('attcancel', 'man', 30, 1, 6, 3);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('overtime', 'man', 30, 1, 6, 3);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('overtime', 'man', 50, 1, 3, 'gm');
INSERT INTO fi_flowtaskexecuter_tb VALUES ('overtime', 'man', 40, 1, 7, 1);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('resign', 'man', 15, 1, 6, 5);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('resign', 'man', 30, 1, 6, 3);
INSERT INTO fi_flowtaskexecuter_tb VALUES ('meetingroomapply', 'man', 10, 1, 3, 'meetingroomverify');

INSERT INTO fi_flowswitchtaskaction_tb VALUES ('expense', 'switch', 47, 1, 'orglevel', 4, 1, 'forward', '�����ύ', 50, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('expense', 'switch', 47, 2, 'orglevel', 2, 1, 'forward', '�Ǹ����ύ', 55, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('expense', 'switch', 47, 3, 'orglevel', 3, 1, 'forward', '�Ǹ����ύ', 55, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('expense', 'switch', 40, 1, 'vicemanagertype', 4, 1, 'forward', '', 45, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('expense', 'switch', 40, 2, 'vicemanagertype', 4, 2, 'forward', '', 42, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('expense', 'switch', 32, 1, 'orglevel', 4, 0, 'forward', '�ܾ����ύ', 55, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('expense', 'switch', 32, 2, 'orglevel', 4, 1, 'forward', '�����ύ', 50, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('expense', 'switch', 32, 3, 'orglevel', 4, 2, 'forward', '�������ύ', 40, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('expense', 'switch', 32, 4, 'orglevel', 4, 3, 'forward', '�����ύ', 35, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('expense', 'switch', 32, 5, 'orglevel', 0, 4, 'forward', '���������ύ', 55, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('pay', 'switch', 32, 1, 'orglevel', 4, 0, 'forward', '�ܾ����ύ', 55, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('pay', 'switch', 32, 2, 'orglevel', 4, 1, 'forward', '�����ύ', 50, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('pay', 'switch', 32, 3, 'orglevel', 4, 2, 'forward', '�������ύ', 40, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('pay', 'switch', 32, 4, 'orglevel', 4, 3, 'forward', '�����ύ', 35, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('pay', 'switch', 32, 5, 'orglevel', 0, 4, 'forward', '���������ύ', 55, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('pay', 'switch', 40, 1, 'vicemanagertype', 4, 1, 'forward', '', 45, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('pay', 'switch', 40, 2, 'vicemanagertype', 4, 2, 'forward', '', 42, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('pay', 'switch', 47, 1, 'orglevel', 4, 1, 'forward', '�����ύ', 50, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('pay', 'switch', 47, 2, 'orglevel', 2, 1, 'forward', '�Ǹ����ύ', 55, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('pay', 'switch', 47, 3, 'orglevel', 3, 1, 'forward', '�Ǹ����ύ', 55, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('meeting', 'switch', 40, 1, 'vicemanagertype', 4, 1, 'forward', '', 45, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('meeting', 'switch', 40, 2, 'vicemanagertype', 4, 2, 'forward', '', 42, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('meeting', 'switch', 47, 1, 'orglevel', 4, 1, 'forward', '�����ύ', 50, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('meeting', 'switch', 47, 2, 'orglevel', 2, 1, 'forward', '�Ǹ����ύ', 55, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('meeting', 'switch', 47, 3, 'orglevel', 3, 1, 'forward', '�Ǹ����ύ', 55, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('meeting', 'switch', 33, 1, 'money', 0, 5000, 'forward', '', 40, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('meeting', 'switch', 33, 2, 'money', 3, 5000, 'forward', '', 55, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('meeting', 'switch', 32, 1, 'money', 0, 5000, 'forward', '', 35, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('meeting', 'switch', 32, 2, 'money', 3, 5000, 'forward', '', 55, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('meeting', 'switch', 34, 1, 'orglevel', 4, 0, 'forward', '�ܾ����ύ', 55, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('meeting', 'switch', 34, 2, 'orglevel', 4, 1, 'forward', '�����ύ', 50, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('meeting', 'switch', 34, 3, 'orglevel', 4, 2, 'forward', '�������ύ', 40, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('meeting', 'switch', 34, 4, 'orglevel', 4, 3, 'forward', '�����ύ', 37, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('meeting', 'switch', 34, 5, 'orglevel', 0, 4, 'forward', '���������ύ', 32, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('meeting', 'switch', 46, 1, 'money', 0, 10000, 'forward', '', 50, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('meeting', 'switch', 46, 2, 'money', 3, 10000, 'forward', '', 47, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('plan', 'switch', 40, 1, 'money', 0, 100000, 'forward', '', 50, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('plan', 'switch', 40, 2, 'money', 3, 100000, 'forward', '', 70, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('plan', 'switch', 85, 1, 'money', 0, 2000000, 'forward', '', 90, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('plan', 'switch', 85, 2, 'money', 3, 2000000, 'forward', '', 999, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('loantravel', 'switch', 32, 1, 'orglevel', 4, 0, 'forward', '�ܾ����ύ', 999, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('loantravel', 'switch', 32, 2, 'orglevel', 4, 1, 'forward', '�����ύ', 60, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('loantravel', 'switch', 32, 3, 'orglevel', 4, 2, 'forward', '�������ύ', 45, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('loantravel', 'switch', 32, 4, 'orglevel', 4, 3, 'forward', '�����ύ', 35, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('loantravel', 'switch', 32, 5, 'orglevel', 0, 4, 'forward', '���������ύ', 50, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('loantravel', 'switch', 50, 1, 'scopeflag', 4, 0, 'forward', '���ڳ���', 999, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('loantravel', 'switch', 50, 2, 'scopeflag', 4, 1, 'forward', '�������', 60, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('travel', 'switch', 32, 1, 'orglevel', 4, 0, 'forward', '�ܾ����ύ', 55, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('travel', 'switch', 32, 2, 'orglevel', 4, 1, 'forward', '�����ύ', 50, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('travel', 'switch', 32, 3, 'orglevel', 4, 2, 'forward', '�������ύ', 40, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('travel', 'switch', 32, 4, 'orglevel', 4, 3, 'forward', '�����ύ', 35, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('travel', 'switch', 32, 5, 'orglevel', 0, 4, 'forward', '���������ύ', 55, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('travel', 'switch', 40, 1, 'vicemanagertype', 4, 1, 'forward', '', 45, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('travel', 'switch', 40, 2, 'vicemanagertype', 4, 2, 'forward', '', 42, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('travel', 'switch', 47, 1, 'orglevel', 4, 1, 'forward', '�����ύ', 50, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('travel', 'switch', 47, 2, 'orglevel', 2, 1, 'forward', '�Ǹ����ύ', 55, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('travel', 'switch', 47, 3, 'orglevel', 3, 1, 'forward', '�Ǹ����ύ', 55, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('overtime', 'switch', 5, 1, 'totalovertimedays', 1, 4.5, 'forward', '', 10, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('overtime', 'switch', 5, 2, 'totalovertimedays', 2, 4.5, 'forward', '', 50, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('overtime', 'switch', 10, 1, 'exceeddays', 1, 7, 'forward', '', 30, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('overtime', 'switch', 10, 2, 'exceeddays', 2, 7, 'forward', '', 40, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('meetingroomapply', 'switch', 5, 1, 'schedule', 4, 0, 'forward', '����Ҫ����', 999, '');
INSERT INTO fi_flowswitchtaskaction_tb VALUES ('meetingroomapply', 'switch', 5, 2, 'schedule', 4, 1, 'forward', '��Ҫ����', 10, '');

INSERT INTO fi_flowstatus VALUES (0, '������');
INSERT INTO fi_flowstatus VALUES (1, '��ͨ��');
INSERT INTO fi_flowstatus VALUES (2, '����ֹ');
INSERT INTO fi_flowstatus VALUES (4, '��ȡ��');

INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 5, 'next', 'forward', '���γ�����ͨ��', 10, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 5, 'return', 'backward', '���γ���������', 1, 5);
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 5, 'stop', 'stop', '���γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 15, 'next', 'forward', '�γ�����ͨ��', 20, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 15, 'return', 'backward', '�γ���������', 1, 15);
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 15, 'stop', 'stop', '�γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 20, 'next', 'forward', '����������ͨ��', 25, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 20, 'return', 'backward', '��������������', 1, 20);
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 20, 'stop', 'stop', '������������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 30, 'next', 'forward', '��������ͨ��', 32, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 30, 'return', 'backward', '������������', 1, 30);
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 30, 'stop', 'stop', '����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 35, 'next', 'forward', '��������ͨ��', 40, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 35, 'return', 'backward', '������������', 1, 35);
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 35, 'stop', 'stop', '����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 50, 'next', 'forward', '�ܾ�������ͬ��', 55, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 50, 'return', 'backward', '�ܾ�����������', 1, 50);
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 50, 'stop', 'stop', '�ܾ���������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 60, 'next', 'forward', '����γ�����ͨ��', 65, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 60, 'return', 'backward', '����γ���������', 1, 60);
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 60, 'stop', 'stop', '����γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 70, 'next', 'forward', '���񲿳�����ͨ��', 75, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 70, 'return', 'backward', '���񲿳���������', 1, 70);
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 70, 'stop', 'stop', '���񲿳�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 75, 'next', 'forward', '��������ͨ��', 80, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 75, 'return', 'backward', '������������', 1, 75);
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 75, 'stop', 'stop', '����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 80, 'next', 'forward', '���ɷ���', 999, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 80, 'return', 'backward', '���ɷ����', 1, 80);
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 80, 'stop', 'stop', '���ɷ�����ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 42, 'next', 'forward', 'Ӫҵ��������ͨ��', 47, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 42, 'return', 'backward', 'Ӫҵ������������', 1, 42);
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 42, 'stop', 'stop', 'Ӫҵ����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 1, 'save', 'pause', '', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 1, 'submit', 'forward', '������', 5, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 45, 'next', 'forward', '�ۺ�������ͨ��', 47, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 45, 'return', 'backward', '�ۺ�����������', 1, 45);
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 45, 'stop', 'stop', '�ۺ���������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 55, 'next', 'forward', '���񵣵�����ͨ��', 60, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 55, 'return', 'backward', '���񵣵���������', 1, 55);
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 55, 'stop', 'stop', '���񵣵�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 65, 'next', 'forward', '���񸱲�������', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 65, 'return', 'backward', '���񸱲�������', 1, 65);
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 65, 'stop', 'stop', '���񸱲�������', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 1, 'save', 'pause', '', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 1, 'submit', 'forward', '������', 5, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 15, 'next', 'forward', '�γ�����ͨ��', 20, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 15, 'return', 'backward', '�γ���������', 1, 15);
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 15, 'stop', 'stop', '�γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 20, 'next', 'forward', '����������ͨ��', 25, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 20, 'return', 'backward', '��������������', 1, 20);
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 20, 'stop', 'stop', '������������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 5, 'next', 'forward', '���γ�����ͨ��', 10, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 5, 'return', 'backward', '���γ���������', 1, 5);
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 5, 'stop', 'stop', '���γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 1, 'save', 'pause', '', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 1, 'submit', 'forward', '������', 5, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 15, 'next', 'forward', '�γ�����ͨ��', 20, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 15, 'return', 'backward', '�γ���������', 1, 15);
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 15, 'stop', 'stop', '�γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 20, 'next', 'forward', '����������ͨ��', 25, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 20, 'return', 'backward', '��������������', 1, 20);
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 20, 'stop', 'stop', '������������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 30, 'next', 'forward', '��������ͨ��', 32, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 30, 'return', 'backward', '������������', 1, 30);
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 30, 'stop', 'stop', '����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 35, 'next', 'forward', '��������ͨ��', 40, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 35, 'return', 'backward', '������������', 1, 35);
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 35, 'stop', 'stop', '����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 42, 'next', 'forward', 'Ӫҵ��������ͨ��', 47, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 42, 'return', 'backward', 'Ӫҵ������������', 1, 42);
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 42, 'stop', 'stop', 'Ӫҵ����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 45, 'next', 'forward', '�ۺ�������ͨ��', 47, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 45, 'return', 'backward', '�ۺ�����������', 1, 45);
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 45, 'stop', 'stop', '�ۺ���������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 5, 'next', 'forward', '���γ�����ͨ��', 10, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 5, 'return', 'backward', '���γ���������', 1, 5);
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 5, 'stop', 'stop', '���γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 50, 'next', 'forward', '�ܾ�������ͬ��', 55, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 50, 'return', 'backward', '�ܾ�����������', 1, 50);
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 50, 'stop', 'stop', '�ܾ���������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 55, 'next', 'forward', '���񵣵�����ͨ��', 60, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 55, 'return', 'backward', '���񵣵���������', 1, 55);
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 55, 'stop', 'stop', '���񵣵�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 60, 'next', 'forward', '����γ�����ͨ��', 65, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 60, 'return', 'backward', '����γ���������', 1, 60);
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 60, 'stop', 'stop', '����γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 65, 'next', 'forward', '���񸱲�������', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 65, 'return', 'backward', '���񸱲�������', 1, 65);
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 65, 'stop', 'stop', '���񸱲�������', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 70, 'next', 'forward', '���񲿳�����ͨ��', 75, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 70, 'return', 'backward', '���񲿳���������', 1, 70);
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 70, 'stop', 'stop', '���񲿳�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 75, 'next', 'forward', '��������ͨ��', 80, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 75, 'return', 'backward', '������������', 1, 75);
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 75, 'stop', 'stop', '����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 80, 'next', 'forward', '���ɷ���', 999, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 80, 'return', 'backward', '���ɷ����', 1, 80);
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 80, 'stop', 'stop', '���ɷ�����ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loantravel', 'man', 1, 'save', 'pause', '', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loantravel', 'man', 1, 'submit', 'forward', '������', 5, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loantravel', 'man', 15, 'next', 'forward', '�γ�����ͨ��', 20, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loantravel', 'man', 15, 'return', 'backward', '�γ���������', 1, 15);
INSERT INTO fi_flowmantaskaction_tb VALUES ('loantravel', 'man', 15, 'stop', 'stop', '�γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loantravel', 'man', 20, 'next', 'forward', '����������ͨ��', 25, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loantravel', 'man', 20, 'return', 'backward', '��������������', 1, 20);
INSERT INTO fi_flowmantaskaction_tb VALUES ('loantravel', 'man', 20, 'stop', 'stop', '������������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loantravel', 'man', 30, 'next', 'forward', '��������ͨ��', 32, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loantravel', 'man', 30, 'return', 'backward', '������������', 1, 30);
INSERT INTO fi_flowmantaskaction_tb VALUES ('loantravel', 'man', 30, 'stop', 'stop', '����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loantravel', 'man', 5, 'next', 'forward', '���γ�����ͨ��', 10, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loantravel', 'man', 5, 'return', 'backward', '���γ���������', 1, 5);
INSERT INTO fi_flowmantaskaction_tb VALUES ('loantravel', 'man', 5, 'stop', 'stop', '���γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loan', 'man', 1, 'save', 'pause', '', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loan', 'man', 1, 'submit', 'forward', '������', 5, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loan', 'man', 15, 'next', 'forward', '�γ�����ͨ��', 20, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loan', 'man', 15, 'return', 'backward', '�γ���������', 1, 15);
INSERT INTO fi_flowmantaskaction_tb VALUES ('loan', 'man', 15, 'stop', 'stop', '�γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loan', 'man', 20, 'next', 'forward', '����������ͨ��', 25, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loan', 'man', 20, 'return', 'backward', '��������������', 1, 20);
INSERT INTO fi_flowmantaskaction_tb VALUES ('loan', 'man', 20, 'stop', 'stop', '������������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loan', 'man', 5, 'next', 'forward', '���γ�����ͨ��', 10, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loan', 'man', 5, 'return', 'backward', '���γ���������', 1, 5);
INSERT INTO fi_flowmantaskaction_tb VALUES ('loan', 'man', 5, 'stop', 'stop', '���γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loan', 'man', 80, 'next', 'forward', '���ɷ���', 999, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loan', 'man', 80, 'return', 'backward', '���ɷ����', 1, 80);
INSERT INTO fi_flowmantaskaction_tb VALUES ('loan', 'man', 80, 'stop', 'stop', '���ɷ�����ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 1, 'save', 'pause', '', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 1, 'submit', 'forward', '������', 5, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 15, 'next', 'forward', '�γ�����ͨ��', 20, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 15, 'return', 'backward', '�γ���������', 1, 15);
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 15, 'stop', 'stop', '�γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 20, 'next', 'forward', '����������ͨ��', 25, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 20, 'return', 'backward', '��������������', 1, 20);
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 20, 'stop', 'stop', '������������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 5, 'next', 'forward', '���γ�����ͨ��', 10, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 5, 'return', 'backward', '���γ���������', 1, 5);
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 5, 'stop', 'stop', '���γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 50, 'next', 'forward', '�ܾ�������ͬ��', 55, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 50, 'return', 'backward', '�ܾ�����������', 1, 50);
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 50, 'stop', 'stop', '�ܾ���������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 55, 'next', 'forward', '���񵣵�����ͨ��', 60, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 55, 'return', 'backward', '���񵣵���������', 1, 55);
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 55, 'stop', 'stop', '���񵣵�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 60, 'next', 'forward', '����γ�����ͨ��', 65, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 60, 'return', 'backward', '����γ���������', 1, 60);
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 60, 'stop', 'stop', '����γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 65, 'next', 'forward', '���񸱲�������', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 65, 'return', 'backward', '���񸱲�������', 1, 65);
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 65, 'stop', 'stop', '���񸱲�������', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 70, 'next', 'forward', '���񲿳�����ͨ��', 75, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 70, 'return', 'backward', '���񲿳���������', 1, 70);
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 70, 'stop', 'stop', '���񲿳�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 75, 'next', 'forward', '��������ͨ��', 80, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 75, 'return', 'backward', '������������', 1, 75);
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 75, 'stop', 'stop', '����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 80, 'next', 'forward', '���ɷ���', 999, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 80, 'return', 'backward', '���ɷ����', 1, 80);
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 80, 'stop', 'stop', '���ɷ�����ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 30, 'next', 'forward', '��������ͨ��', 34, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 30, 'return', 'backward', '������������', 1, 30);
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 30, 'stop', 'stop', '����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 42, 'next', 'forward', 'Ӫҵ��������ͨ��', 46, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 42, 'return', 'backward', 'Ӫҵ������������', 1, 42);
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 42, 'stop', 'stop', 'Ӫҵ����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 45, 'next', 'forward', '�ۺ�������ͨ��', 46, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 45, 'return', 'backward', '�ۺ�����������', 1, 45);
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 45, 'stop', 'stop', '�ۺ���������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 37, 'next', 'forward', '����������ͨ��', 33, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 37, 'return', 'backward', '��������������', 1, 35);
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 37, 'stop', 'stop', '������������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 35, 'next', 'forward', '����������ͨ��', 40, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 35, 'return', 'backward', '��������������', 1, 35);
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 35, 'stop', 'stop', '������������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 1, 'save', 'pause', '', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 1, 'submit', 'forward', '������', 5, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 15, 'next', 'forward', '�γ�����ͨ��', 20, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 15, 'return', 'backward', '�γ���������', 1, 15);
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 15, 'stop', 'stop', '�γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 20, 'next', 'forward', '����������ͨ��', 25, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 20, 'return', 'backward', '��������������', 1, 20);
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 20, 'stop', 'stop', '������������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 5, 'next', 'forward', '���γ�����ͨ��', 10, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 5, 'return', 'backward', '���γ���������', 1, 5);
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 5, 'stop', 'stop', '���γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 50, 'next', 'forward', '�ܾ�������ͬ��', 55, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 50, 'return', 'backward', '�ܾ�����������', 1, 50);
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 50, 'stop', 'stop', '�ܾ���������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 55, 'next', 'forward', '���񵣵�����ͨ��', 60, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 55, 'return', 'backward', '���񵣵���������', 1, 55);
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 55, 'stop', 'stop', '���񵣵�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 60, 'next', 'forward', '����γ�����ͨ��', 65, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 60, 'return', 'backward', '����γ���������', 1, 60);
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 60, 'stop', 'stop', '����γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 70, 'next', 'forward', '���񲿳�����ͨ��', 75, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 70, 'return', 'backward', '���񲿳���������', 1, 70);
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 70, 'stop', 'stop', '���񲿳�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 75, 'next', 'forward', '��������ͨ��', 80, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 75, 'return', 'backward', '������������', 1, 75);
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 75, 'stop', 'stop', '����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 80, 'next', 'forward', '���ɷ���', 999, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 80, 'return', 'backward', '���ɷ����', 1, 80);
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 80, 'stop', 'stop', '���ɷ�����ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 30, 'next', 'forward', '��������ͨ��', 35, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 30, 'return', 'backward', '������������', 1, 30);
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 30, 'stop', 'stop', '����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 35, 'next', 'forward', '��������ͨ��', 45, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 35, 'return', 'backward', '������������', 1, 35);
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 35, 'stop', 'stop', '����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 45, 'next', 'forward', '��������ͨ��', 50, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 45, 'return', 'backward', '������������', 1, 45);
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 45, 'stop', 'stop', '����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 65, 'next', 'forward', '���񸱲�������', 70, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 65, 'return', 'backward', '���񸱲�������', 1, 65);
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 65, 'stop', 'stop', '���񸱲�������', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loan', 'man', 30, 'next', 'forward', '��������ͨ��', 80, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loan', 'man', 30, 'return', 'backward', '������������', 1, 30);
INSERT INTO fi_flowmantaskaction_tb VALUES ('loan', 'man', 30, 'stop', 'stop', '����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loan', 'man', 25, 'next', 'forward', '����������ͨ��', 30, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loan', 'man', 25, 'return', 'backward', '��������������', 1, 25);
INSERT INTO fi_flowmantaskaction_tb VALUES ('loan', 'man', 25, 'stop', 'stop', '������������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loan', 'man', 10, 'next', 'forward', '����γ�����ͨ��', 15, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loan', 'man', 10, 'return', 'backward', '����γ���������', 1, 10);
INSERT INTO fi_flowmantaskaction_tb VALUES ('loan', 'man', 10, 'stop', 'stop', '����γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 10, 'next', 'forward', '����γ�����ͨ��', 15, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 10, 'return', 'backward', '����γ���������', 1, 10);
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 10, 'stop', 'stop', '����γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 25, 'next', 'forward', '����������ͨ��', 30, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 25, 'return', 'backward', '��������������', 1, 25);
INSERT INTO fi_flowmantaskaction_tb VALUES ('expense', 'man', 25, 'stop', 'stop', '������������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 50, 'next', 'forward', '�ۺ��󻭿γ�����ͨ��', 60, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 50, 'return', 'backward', '�ۺ��󻭿γ���������', 1, 50);
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 50, 'stop', 'stop', '�ۺ��󻭿γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 60, 'next', 'forward', '�ۺ��󻭲�������ͨ��', 70, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 60, 'return', 'backward', '�ۺ��󻭲�����������', 1, 60);
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 60, 'stop', 'stop', '�ۺ��󻭲���������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 70, 'next', 'forward', '����������ͨ��', 80, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 70, 'return', 'backward', '��������������', 1, 70);
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 70, 'stop', 'stop', '������������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 80, 'next', 'forward', '��������ͨ��', 85, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 80, 'return', 'backward', '������������', 1, 80);
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 80, 'stop', 'stop', '����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 90, 'next', 'forward', '�ܾ�������ͨ��', 999, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 90, 'return', 'backward', '�ܾ�����������', 1, 90);
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 90, 'stop', 'stop', '�ܾ���������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 30, 'next', 'forward', '��������ͨ��', 40, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 30, 'return', 'backward', '������������', 1, 30);
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 30, 'stop', 'stop', '����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 10, 'next', 'forward', '����γ�����ͨ��', 15, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 10, 'return', 'backward', '����γ���������', 1, 10);
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 10, 'stop', 'stop', '����γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 25, 'next', 'forward', '����������ͨ��', 30, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 25, 'return', 'backward', '��������������', 1, 25);
INSERT INTO fi_flowmantaskaction_tb VALUES ('plan', 'man', 25, 'stop', 'stop', '������������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loantravel', 'man', 35, 'next', 'forward', '��������ͨ��', 45, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loantravel', 'man', 35, 'return', 'backward', '������������', 1, 35);
INSERT INTO fi_flowmantaskaction_tb VALUES ('loantravel', 'man', 35, 'stop', 'stop', '����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loantravel', 'man', 45, 'next', 'forward', '��������ͨ��', 50, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loantravel', 'man', 45, 'return', 'backward', '������������', 1, 45);
INSERT INTO fi_flowmantaskaction_tb VALUES ('loantravel', 'man', 45, 'stop', 'stop', '����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loantravel', 'man', 10, 'next', 'forward', '����γ�����ͨ��', 15, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loantravel', 'man', 10, 'return', 'backward', '����γ���������', 1, 10);
INSERT INTO fi_flowmantaskaction_tb VALUES ('loantravel', 'man', 10, 'stop', 'stop', '����γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loantravel', 'man', 25, 'next', 'forward', '����������ͨ��', 30, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loantravel', 'man', 25, 'return', 'backward', '��������������', 1, 25);
INSERT INTO fi_flowmantaskaction_tb VALUES ('loantravel', 'man', 25, 'stop', 'stop', '������������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 10, 'next', 'forward', '����γ�����ͨ��', 15, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 10, 'return', 'backward', '����γ���������', 1, 10);
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 10, 'stop', 'stop', '����γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 25, 'next', 'forward', '����������ͨ��', 30, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 25, 'return', 'backward', '��������������', 1, 25);
INSERT INTO fi_flowmantaskaction_tb VALUES ('meeting', 'man', 25, 'stop', 'stop', '������������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 10, 'next', 'forward', '����γ�����ͨ��', 15, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 10, 'return', 'backward', '����γ���������', 1, 10);
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 10, 'stop', 'stop', '����γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 25, 'next', 'forward', '����������ͨ��', 30, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 25, 'return', 'backward', '��������������', 1, 25);
INSERT INTO fi_flowmantaskaction_tb VALUES ('pay', 'man', 25, 'stop', 'stop', '������������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 10, 'next', 'forward', '����γ�����ͨ��', 15, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 10, 'return', 'backward', '����γ���������', 1, 10);
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 10, 'stop', 'stop', '����γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 25, 'next', 'forward', '����������ͨ��', 30, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 25, 'return', 'backward', '��������������', 1, 25);
INSERT INTO fi_flowmantaskaction_tb VALUES ('common', 'man', 25, 'stop', 'stop', '������������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common2', 'man', 1, 'save', 'pause', '', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common2', 'man', 1, 'submit', 'forward', '������', 5, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common2', 'man', 10, 'next', 'forward', '����γ�����ͨ��', 15, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common2', 'man', 10, 'return', 'backward', '����γ���������', 1, 10);
INSERT INTO fi_flowmantaskaction_tb VALUES ('common2', 'man', 10, 'stop', 'stop', '����γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common2', 'man', 15, 'next', 'forward', '�γ�����ͨ��', 20, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common2', 'man', 15, 'return', 'backward', '�γ���������', 1, 15);
INSERT INTO fi_flowmantaskaction_tb VALUES ('common2', 'man', 15, 'stop', 'stop', '�γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common2', 'man', 20, 'next', 'forward', '����������ͨ��', 25, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common2', 'man', 20, 'return', 'backward', '��������������', 1, 20);
INSERT INTO fi_flowmantaskaction_tb VALUES ('common2', 'man', 20, 'stop', 'stop', '������������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common2', 'man', 25, 'next', 'forward', '����������ͨ��', 30, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common2', 'man', 25, 'return', 'backward', '��������������', 1, 25);
INSERT INTO fi_flowmantaskaction_tb VALUES ('common2', 'man', 25, 'stop', 'stop', '������������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common2', 'man', 30, 'next', 'forward', '��������ͨ��', 35, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common2', 'man', 30, 'return', 'backward', '������������', 1, 30);
INSERT INTO fi_flowmantaskaction_tb VALUES ('common2', 'man', 30, 'stop', 'stop', '����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common2', 'man', 35, 'next', 'forward', '��������ͨ��', 45, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common2', 'man', 35, 'return', 'backward', '������������', 1, 35);
INSERT INTO fi_flowmantaskaction_tb VALUES ('common2', 'man', 35, 'stop', 'stop', '����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common2', 'man', 45, 'next', 'forward', '��������ͨ��', 50, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common2', 'man', 45, 'return', 'backward', '������������', 1, 45);
INSERT INTO fi_flowmantaskaction_tb VALUES ('common2', 'man', 45, 'stop', 'stop', '����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common2', 'man', 5, 'next', 'forward', '���γ�����ͨ��', 10, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common2', 'man', 5, 'return', 'backward', '���γ���������', 1, 5);
INSERT INTO fi_flowmantaskaction_tb VALUES ('common2', 'man', 5, 'stop', 'stop', '���γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common2', 'man', 50, 'next', 'forward', '�ܾ�������ͬ��', 999, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('common2', 'man', 50, 'return', 'backward', '�ܾ�����������', 1, 50);
INSERT INTO fi_flowmantaskaction_tb VALUES ('common2', 'man', 50, 'stop', 'stop', '�ܾ���������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loantravel', 'man', 60, 'next', 'forward', '�ܾ�������ͨ��', 999, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('loantravel', 'man', 60, 'return', 'backward', '�ܾ�����������', 1, 60);
INSERT INTO fi_flowmantaskaction_tb VALUES ('loantravel', 'man', 60, 'stop', 'stop', '�ܾ���������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 1, 'save', 'pause', '', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 1, 'submit', 'forward', '������', 5, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 10, 'next', 'forward', '����γ�����ͨ��', 15, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 10, 'return', 'backward', '����γ���������', 1, 10);
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 10, 'stop', 'stop', '����γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 15, 'next', 'forward', '�γ�����ͨ��', 20, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 15, 'return', 'backward', '�γ���������', 1, 15);
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 15, 'stop', 'stop', '�γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 20, 'next', 'forward', '����������ͨ��', 25, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 20, 'return', 'backward', '��������������', 1, 20);
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 20, 'stop', 'stop', '������������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 25, 'next', 'forward', '����������ͨ��', 30, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 25, 'return', 'backward', '��������������', 1, 25);
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 25, 'stop', 'stop', '������������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 30, 'next', 'forward', '��������ͨ��', 32, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 30, 'return', 'backward', '������������', 1, 30);
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 30, 'stop', 'stop', '����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 35, 'next', 'forward', '��������ͨ��', 40, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 35, 'return', 'backward', '������������', 1, 35);
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 35, 'stop', 'stop', '����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 42, 'next', 'forward', 'Ӫҵ��������ͨ��', 47, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 42, 'return', 'backward', 'Ӫҵ������������', 1, 42);
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 42, 'stop', 'stop', 'Ӫҵ����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 45, 'next', 'forward', '�ۺ�������ͨ��', 47, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 45, 'return', 'backward', '�ۺ�����������', 1, 45);
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 45, 'stop', 'stop', '�ۺ���������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 5, 'next', 'forward', '���γ�����ͨ��', 10, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 5, 'return', 'backward', '���γ���������', 1, 5);
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 5, 'stop', 'stop', '���γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 50, 'next', 'forward', '�ܾ�������ͬ��', 55, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 50, 'return', 'backward', '�ܾ�����������', 1, 50);
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 50, 'stop', 'stop', '�ܾ���������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 55, 'next', 'forward', '���񵣵�����ͨ��', 60, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 55, 'return', 'backward', '���񵣵���������', 1, 55);
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 55, 'stop', 'stop', '���񵣵�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 60, 'next', 'forward', '����γ�����ͨ��', 65, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 60, 'return', 'backward', '����γ���������', 1, 60);
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 60, 'stop', 'stop', '����γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 65, 'next', 'forward', '���񸱲�������', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 65, 'return', 'backward', '���񸱲�������', 1, 65);
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 65, 'stop', 'stop', '���񸱲�������', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 70, 'next', 'forward', '���񲿳�����ͨ��', 75, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 70, 'return', 'backward', '���񲿳���������', 1, 70);
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 70, 'stop', 'stop', '���񲿳�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 75, 'next', 'forward', '��������ͨ��', 80, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 75, 'return', 'backward', '������������', 1, 75);
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 75, 'stop', 'stop', '����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 80, 'next', 'forward', '���ɷ���', 999, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 80, 'return', 'backward', '���ɷ����', 1, 80);
INSERT INTO fi_flowmantaskaction_tb VALUES ('travel', 'man', 80, 'stop', 'stop', '���ɷ�����ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 1, 'save', 'pause', '', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 1, 'submit', 'forward', '������', 5, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 10, 'next', 'forward', '����γ�����ͨ��', 15, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 10, 'return', 'backward', '����γ���������', 1, 10);
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 10, 'stop', 'stop', '����γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 15, 'next', 'forward', '�γ�����ͨ��', 20, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 15, 'return', 'backward', '�γ���������', 1, 15);
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 15, 'stop', 'stop', '�γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 20, 'next', 'forward', '����������ͨ��', 25, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 20, 'return', 'backward', '��������������', 1, 20);
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 20, 'stop', 'stop', '������������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 25, 'next', 'forward', '����������ͨ��', 30, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 25, 'return', 'backward', '��������������', 1, 25);
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 25, 'stop', 'stop', '������������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 5, 'next', 'forward', '���γ�����ͨ��', 10, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 5, 'return', 'backward', '���γ���������', 1, 5);
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 5, 'stop', 'stop', '���γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 65, 'next', 'forward', '���񸱲�������', 70, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 65, 'return', 'backward', '���񸱲�������', 1, 65);
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 65, 'stop', 'stop', '���񸱲�������', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 30, 'next', 'forward', '��������ͨ��', 40, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 30, 'return', 'backward', '������������', 1, 30);
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 30, 'stop', 'stop', '����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 40, 'next', 'forward', '���񵣵�����ͨ��', 50, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 40, 'return', 'backward', '���񵣵���������', 1, 55);
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 40, 'stop', 'stop', '���񵣵�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 50, 'next', 'forward', '��������ͨ��', 60, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 50, 'return', 'backward', '������������', 1, 50);
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 50, 'stop', 'stop', '����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 70, 'next', 'forward', '���񲿳�����ͨ��', 999, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 70, 'return', 'backward', '���񲿳���������', 1, 70);
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 70, 'stop', 'stop', '���񲿳�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 60, 'next', 'forward', '����γ�����ͨ��', 65, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 60, 'return', 'backward', '����γ���������', 1, 60);
INSERT INTO fi_flowmantaskaction_tb VALUES ('payaccount', 'man', 60, 'stop', 'stop', '����γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('att', 'man', 1, 'save', 'pause', '', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('att', 'man', 1, 'submit', 'forward', '������', 15, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('att', 'man', 15, 'next', 'forward', '�γ�����ͨ��', 30, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('att', 'man', 15, 'return', 'backward', '�γ���������', 1, 15);
INSERT INTO fi_flowmantaskaction_tb VALUES ('att', 'man', 15, 'stop', 'stop', '�γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('att', 'man', 30, 'next', 'forward', '��������ͨ��', 999, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('att', 'man', 30, 'return', 'backward', '������������', 1, 30);
INSERT INTO fi_flowmantaskaction_tb VALUES ('att', 'man', 30, 'stop', 'stop', '����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('attcancel', 'man', 1, 'save', 'pause', '', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('attcancel', 'man', 1, 'submit', 'forward', '������', 15, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('attcancel', 'man', 15, 'next', 'forward', '�γ�����ͨ��', 30, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('attcancel', 'man', 15, 'return', 'backward', '�γ���������', 1, 15);
INSERT INTO fi_flowmantaskaction_tb VALUES ('attcancel', 'man', 15, 'stop', 'stop', '�γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('attcancel', 'man', 30, 'next', 'forward', '��������ͨ��', 999, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('attcancel', 'man', 30, 'return', 'backward', '������������', 1, 30);
INSERT INTO fi_flowmantaskaction_tb VALUES ('attcancel', 'man', 30, 'stop', 'stop', '����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('overtime', 'man', 30, 'next', 'forward', '��������ͨ��', 999, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('overtime', 'man', 30, 'return', 'backward', '������������', 1, 30);
INSERT INTO fi_flowmantaskaction_tb VALUES ('overtime', 'man', 30, 'stop', 'stop', '����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('overtime', 'man', 1, 'save', 'pause', '', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('overtime', 'man', 1, 'submit', 'forward', '������', 5, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('overtime', 'man', 50, 'next', 'forward', '�ܾ�������ͨ��', 999, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('overtime', 'man', 50, 'return', 'backward', '�ܾ�����������', 1, 50);
INSERT INTO fi_flowmantaskaction_tb VALUES ('overtime', 'man', 50, 'stop', 'stop', '�ܾ���������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('overtime', 'man', 40, 'next', 'forward', '��������ͨ��', 999, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('overtime', 'man', 40, 'return', 'backward', '������������', 1, 40);
INSERT INTO fi_flowmantaskaction_tb VALUES ('overtime', 'man', 40, 'stop', 'stop', '����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('resign', 'man', 1, 'save', 'pause', '', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('resign', 'man', 1, 'submit', 'forward', '������', 15, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('resign', 'man', 15, 'next', 'forward', '�γ�����ͨ��', 30, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('resign', 'man', 15, 'return', 'backward', '�γ���������', 1, 15);
INSERT INTO fi_flowmantaskaction_tb VALUES ('resign', 'man', 15, 'stop', 'stop', '�γ�������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('resign', 'man', 30, 'next', 'forward', '��������ͨ��', 999, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('resign', 'man', 30, 'return', 'backward', '������������', 1, 30);
INSERT INTO fi_flowmantaskaction_tb VALUES ('resign', 'man', 30, 'stop', 'stop', '����������ֹ', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meetingroomapply', 'man', 1, 'save', 'pause', '', '', '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meetingroomapply', 'man', 1, 'submit', 'forward', '������', 5, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meetingroomapply', 'man', 10, 'next', 'forward', '�����ҹ���������ͨ��', 999, '');
INSERT INTO fi_flowmantaskaction_tb VALUES ('meetingroomapply', 'man', 10, 'return', 'backward', '�����ҹ�������������', 1, 10);
INSERT INTO fi_flowmantaskaction_tb VALUES ('meetingroomapply', 'man', 10, 'stop', 'stop', '�����ҹ�����������ֹ', '', '');


INSERT INTO cmn_group_tb VALUES ('root', '', 'root', -1, null);
INSERT INTO cmn_group_tb VALUES ('chuna', 'root', '����', -1, '');
INSERT INTO cmn_group_tb VALUES ('finance_employee', 'root', '���񵣵�', -1, '');
INSERT INTO cmn_group_tb VALUES ('finance_viceminister', 'root', '���񸱲���', -1, '');
INSERT INTO cmn_group_tb VALUES ('finance_minister', 'root', '���񲿳�', -1, '');
INSERT INTO cmn_group_tb VALUES ('finance_vicedirector', 'root', '���񸱿γ�', -1, '');
INSERT INTO cmn_group_tb VALUES ('finance_director', 'root', '����γ�', -1, '');
INSERT INTO cmn_group_tb VALUES ('gm', 'root', '�ܾ���', -1, '');
INSERT INTO cmn_group_tb VALUES ('chuna1', 'root', '���������', -1, '');
INSERT INTO cmn_group_tb VALUES ('chuna2', 'root', '���ɷ�����', -1, '');
INSERT INTO cmn_group_tb VALUES ('human_director', 'root', '���¿γ�', -1, '');
INSERT INTO cmn_group_tb VALUES ('human_minister', 'root', '���²���', -1, '');
INSERT INTO cmn_group_tb VALUES ('admin_minister', 'root', '��������', -1, '');
INSERT INTO cmn_group_tb VALUES ('manage_vicegm', 'root', '������', -1, '');
INSERT INTO cmn_group_tb VALUES ('business_vicegm', 'root', 'Ӫҵ����', -1, '');
INSERT INTO cmn_group_tb VALUES ('businessplan_vicegm', 'root', 'Ӫҵ֧Ԯ����', -1, '');
INSERT INTO cmn_group_tb VALUES ('aftersale_vicegm', 'root', '�ۺ�Ʒ����', -1, '');
INSERT INTO cmn_group_tb VALUES ('comprehensiveplan_director', 'root', '�ۺ��󻭿γ�', -1, '');
INSERT INTO cmn_group_tb VALUES ('comprehensiveplan_minister', 'root', ' �ۺ��󻮲�������', -1, '');
INSERT INTO cmn_group_tb VALUES ('contract_remind', 'root', '��ͬ����', -1, '');
INSERT INTO cmn_group_tb VALUES ('vehicle_director', 'root', '���������ογ�', -1, '');
INSERT INTO cmn_group_tb VALUES ('vehicle_minister', 'root', '���������β���', -1, '');
INSERT INTO cmn_group_tb VALUES ('meetingroomverify', 'root', '����������������', -1, '');


INSERT INTO cmn_lang_tb VALUES ('Account', '�˺�', '�˺�', 'account', '�˺�');
INSERT INTO cmn_lang_tb VALUES ('Accountid', '�˻����', '�˻����', 'account id', '�˻����');
INSERT INTO cmn_lang_tb VALUES ('Accounttype', '�˻����', '�˻����', 'account type', '�˻����');
INSERT INTO cmn_lang_tb VALUES ('Action', '����', '����', 'action', '����');
INSERT INTO cmn_lang_tb VALUES ('Address', '��ַ', '��ַ', 'address', '��ַ');
INSERT INTO cmn_lang_tb VALUES ('Agent', '������', '������', 'agent', '������');
INSERT INTO cmn_lang_tb VALUES ('All', 'ȫ��', 'ȫ��', 'all', 'ȫ��');
INSERT INTO cmn_lang_tb VALUES ('Amend', '�����ϰ����ʱ��', '�����ϰ����ʱ��', 'am end', '�����ϰ����ʱ��');
INSERT INTO cmn_lang_tb VALUES ('Amount', '���', '���', 'amount', '���');
INSERT INTO cmn_lang_tb VALUES ('Amstart', '�����ϰ࿪ʼʱ��', '�����ϰ࿪ʼʱ��', 'am start', '�����ϰ࿪ʼʱ��');
INSERT INTO cmn_lang_tb VALUES ('Attachment', '����', '����', 'attachment', '����');
INSERT INTO cmn_lang_tb VALUES ('Authorization', '��Ȩ', '��Ȩ', 'authorization', '��Ȩ');
INSERT INTO cmn_lang_tb VALUES ('Backtask', '���˷���', '���˷���', 'back task', '���˷���');
INSERT INTO cmn_lang_tb VALUES ('Backward', '����', '����', 'backward', '����');
INSERT INTO cmn_lang_tb VALUES ('Balance', '���', '���', 'balance money', '���');
INSERT INTO cmn_lang_tb VALUES ('Bankid', '����', '����', 'bank id', '����');
INSERT INTO cmn_lang_tb VALUES ('Bankname', '��������', '��������', 'bank name', '��������');
INSERT INTO cmn_lang_tb VALUES ('Bankofdeposit', '������', '������', 'band of deposit', '������');
INSERT INTO cmn_lang_tb VALUES ('Beginmonth', '��ʼ�·�', '��ʼ�·�', 'begin month', '��ʼ�·�');
INSERT INTO cmn_lang_tb VALUES ('Birthday', '����', '����', 'birthday', '����');
INSERT INTO cmn_lang_tb VALUES ('Caller', '������', '������', 'caller', '������');
INSERT INTO cmn_lang_tb VALUES ('Cancel', 'ȡ��', 'ȡ��', 'cancel', 'ȡ��');
INSERT INTO cmn_lang_tb VALUES ('Carborrow_qualification', '�賵�ʸ�', '�賵�ʸ�', 'car borrow qualification', '�賵�ʸ�');
INSERT INTO cmn_lang_tb VALUES ('China', '�й�', '�й�', 'china', '�й�');
INSERT INTO cmn_lang_tb VALUES ('Chinese', '��������', '��������', 'chinese', '��������');
INSERT INTO cmn_lang_tb VALUES ('City', '����', '����', 'city', '����');
INSERT INTO cmn_lang_tb VALUES ('Computer', '����������ã�', '����������ã�', 'computer', '����������ã�');
INSERT INTO cmn_lang_tb VALUES ('Computer_cert', '�����֤��', '�����֤��', 'computer cert', '�����֤��');
INSERT INTO cmn_lang_tb VALUES ('Computer_level', '�����ˮƽ', '�����ˮƽ', 'computer level', '�����ˮƽ');
INSERT INTO cmn_lang_tb VALUES ('Concurrent', 'ִ���˲���', 'ִ���˲���', 'concurrent', 'ִ���˲���');
INSERT INTO cmn_lang_tb VALUES ('Conditions', '����', '����', 'conditions', '����');
INSERT INTO cmn_lang_tb VALUES ('Contact_person', '������ϵ��', '������ϵ��', 'contact person', '������ϵ��');
INSERT INTO cmn_lang_tb VALUES ('Contact_way', '������ϵ��ʽ', '������ϵ��ʽ', 'contact way', '������ϵ��ʽ');
INSERT INTO cmn_lang_tb VALUES ('Content', '����', '����', 'content', '����');
INSERT INTO cmn_lang_tb VALUES ('Controldisplayname', '�ؼ���ʾ����', '�ؼ���ʾ����', 'control display name', '�ؼ���ʾ����');
INSERT INTO cmn_lang_tb VALUES ('Controlname', '�ؼ�����', '�ؼ�����', 'control name', '�ؼ�����');
INSERT INTO cmn_lang_tb VALUES ('Controltype', '�ؼ�����', '�ؼ�����', 'control type', '�ؼ�����');
INSERT INTO cmn_lang_tb VALUES ('Countersign', '��ǩ', '��ǩ', 'countersign', '��ǩ');
INSERT INTO cmn_lang_tb VALUES ('Country', '����', '����', 'country', '����');
INSERT INTO cmn_lang_tb VALUES ('Create', '����', '����', 'Create', '����');
INSERT INTO cmn_lang_tb VALUES ('Currencyid', '����ID', '����ID', 'currency id', '����ID');
INSERT INTO cmn_lang_tb VALUES ('Currencyname', '��������', '��������', 'currency name', '��������');
INSERT INTO cmn_lang_tb VALUES ('Currencysymbol', '���ַ���', '���ַ���', 'currency symbol', '���ַ���');
INSERT INTO cmn_lang_tb VALUES ('Datefrom', '��ʼ����', '��ʼ����', 'start date', '��ʼ����');
INSERT INTO cmn_lang_tb VALUES ('Dateto', '��������', '��������', 'end date', '��������');
INSERT INTO cmn_lang_tb VALUES ('Defaultvalue', 'ȱʡֵ', 'ȱʡֵ', 'default value', 'ȱʡֵ');
INSERT INTO cmn_lang_tb VALUES ('Degree', 'ѧ�����', 'ѧ�����', 'degree', 'ѧ�����');
INSERT INTO cmn_lang_tb VALUES ('Degreename', 'ְ������', 'ְ������', 'degree name', 'ְ������');
INSERT INTO cmn_lang_tb VALUES ('Delete', 'ɾ��', 'ɾ��', 'Delete', 'ɾ��');
INSERT INTO cmn_lang_tb VALUES ('Edit', '�༭', '�༭', 'edit', '�༭');
INSERT INTO cmn_lang_tb VALUES ('Editor', '������', '������', 'editor', '������');
INSERT INTO cmn_lang_tb VALUES ('Email', '����', '����', 'email', '����');
INSERT INTO cmn_lang_tb VALUES ('Emergency', '������', '������', 'emergency', '������');
INSERT INTO cmn_lang_tb VALUES ('Employeeid', 'Ψһ��', 'Ψһ��', 'employee id', 'Ψһ��');
INSERT INTO cmn_lang_tb VALUES ('End', '����', '����', 'end', '����');
INSERT INTO cmn_lang_tb VALUES ('Enddate', '��������', '��������', 'end date', '��������');
INSERT INTO cmn_lang_tb VALUES ('Endmonth', '��ֹ�·�', '��ֹ�·�', 'end month', '��ֹ�·�');
INSERT INTO cmn_lang_tb VALUES ('English', 'Ӣ��', 'Ӣ��', 'english', 'Ӣ��');
INSERT INTO cmn_lang_tb VALUES ('English_cert', 'Ӣ��֤��', 'Ӣ��֤��', 'english cert', 'Ӣ��֤��');
INSERT INTO cmn_lang_tb VALUES ('English_level', 'Ӣ��ˮƽ', 'Ӣ��ˮƽ', 'english level', 'Ӣ��ˮƽ');
INSERT INTO cmn_lang_tb VALUES ('English_name', 'Ӣ������', 'Ӣ������', 'english name', 'Ӣ������');
INSERT INTO cmn_lang_tb VALUES ('Entrydate', '��ְ����', '��ְ����', 'entrydate', '��ְ����');
INSERT INTO cmn_lang_tb VALUES ('Expired', '�ѹ���', '�ѹ���', 'expired', '�ѹ���');
INSERT INTO cmn_lang_tb VALUES ('Expireddate', '��Ч��', '��Ч��', 'expired date', '��Ч��');
INSERT INTO cmn_lang_tb VALUES ('Expression', '���ʽ', '���ʽ', 'expression', '���ʽ');
INSERT INTO cmn_lang_tb VALUES ('Ext', '�ֻ�����', '�ֻ�����', 'ext', '�ֻ�����');
INSERT INTO cmn_lang_tb VALUES ('Female', 'Ů', 'Ů', 'female', 'Ů');
INSERT INTO cmn_lang_tb VALUES ('Fiid', '���̱��', '���̱��', 'flow id', '���̱��');
INSERT INTO cmn_lang_tb VALUES ('Filesize', '�ļ���С', '�ļ���С', 'file size', '�ļ���С');
INSERT INTO cmn_lang_tb VALUES ('Filetype', '�ļ�����', '�ļ�����', 'file type', '�ļ�����');
INSERT INTO cmn_lang_tb VALUES ('Flowcontent', '��������', '��������', 'flow content', '��������');
INSERT INTO cmn_lang_tb VALUES ('Flowfinishtime', '���̽���ʱ��', '���̽���ʱ��', 'flow finish time', '���̽���ʱ��');
INSERT INTO cmn_lang_tb VALUES ('Flowid', '��������', '��������', 'flow id', '��������');
INSERT INTO cmn_lang_tb VALUES ('Flowinstid', '���̱��', '���̱��', 'flow instid', '���̱��');
INSERT INTO cmn_lang_tb VALUES ('Flowinstidcol', '���̱���ֶ�', '���̱���ֶ�', 'flow fiid column', '���̱���ֶ�');
INSERT INTO cmn_lang_tb VALUES ('Flowname', '��������', '��������', 'flow name', '��������');
INSERT INTO cmn_lang_tb VALUES ('Flowstarttime', '���̿�ʼʱ��', '���̿�ʼʱ��', 'flow start time', '���̿�ʼʱ��');
INSERT INTO cmn_lang_tb VALUES ('Flowstatus', '����״̬', '����״̬', 'flow status', '����״̬');
INSERT INTO cmn_lang_tb VALUES ('Flowstatuscol', '����״̬�ֶ�', '����״̬�ֶ�', 'flow status column', '����״̬�ֶ�');
INSERT INTO cmn_lang_tb VALUES ('Flowstatusname', '����״̬����', '����״̬����', 'flow status name', '����״̬����');
INSERT INTO cmn_lang_tb VALUES ('Flowtemplateid', '����ģ����', '����ģ����', 'flow template id', '����ģ����');
INSERT INTO cmn_lang_tb VALUES ('Flowtemplatename', '����ģ������', '����ģ������', 'flow template name', '����ģ������');
INSERT INTO cmn_lang_tb VALUES ('Forward', 'ǰ��', 'ǰ��', 'forward', 'ǰ��');
INSERT INTO cmn_lang_tb VALUES ('Friday', '������', '������', 'friday', '������');
INSERT INTO cmn_lang_tb VALUES ('Functions', '����', '����', 'function', '����');
INSERT INTO cmn_lang_tb VALUES ('Good', '����', '����', 'good', '����');
INSERT INTO cmn_lang_tb VALUES ('Grade1', 'һ��', 'һ��', 'grade one', 'һ��');
INSERT INTO cmn_lang_tb VALUES ('Grade2', '����', '����', 'grade two', '����');
INSERT INTO cmn_lang_tb VALUES ('Grade3', '����', '����', 'grade three', '����');
INSERT INTO cmn_lang_tb VALUES ('Grade4', '�ļ�', '�ļ�', 'grade four', '�ļ�');
INSERT INTO cmn_lang_tb VALUES ('Grade6', '����', '����', 'grade six', '����');
INSERT INTO cmn_lang_tb VALUES ('Grade8', '�˼�', '�˼�', 'grade eight', '�˼�');
INSERT INTO cmn_lang_tb VALUES ('Groupid', '����', '����', 'group id', '����');
INSERT INTO cmn_lang_tb VALUES ('Grouplevel', '�鼶��', '�鼶��', 'group level', '�鼶��');
INSERT INTO cmn_lang_tb VALUES ('Groupname', '������', '������', 'group name', '������');
INSERT INTO cmn_lang_tb VALUES ('Guard_card', '�Ž���', '�Ž���', 'guard card', '�Ž���');
INSERT INTO cmn_lang_tb VALUES ('Holiday', '�ڼ���', '�ڼ���', 'holiday', '�ڼ���');
INSERT INTO cmn_lang_tb VALUES ('Idcard', '���֤����', '���֤����', 'id card', '���֤����');
INSERT INTO cmn_lang_tb VALUES ('Isleader', '����', '����', 'is leader', '����');
INSERT INTO cmn_lang_tb VALUES ('Ismultiple', '��ѡ', '��ѡ', 'is multiple', '��ѡ');
INSERT INTO cmn_lang_tb VALUES ('Japanese', '����', '����', 'japanese', '����');
INSERT INTO cmn_lang_tb VALUES ('Japanese_cert', '����֤��', '����֤��', 'japaness cert', '����֤��');
INSERT INTO cmn_lang_tb VALUES ('Japanese_level', '����ˮƽ', '����ˮƽ', 'japanese level', '����ˮƽ');
INSERT INTO cmn_lang_tb VALUES ('Jump', '����', '����', 'jump', '����');
INSERT INTO cmn_lang_tb VALUES ('Key_user', 'Կ��', 'Կ��', 'key user', 'Կ��');
INSERT INTO cmn_lang_tb VALUES ('Langid', '����ID', '����ID', 'lang id', '����ID');
INSERT INTO cmn_lang_tb VALUES ('Leadertype', '��������', '��������', 'leader type', '��������');
INSERT INTO cmn_lang_tb VALUES ('Limit', '����', '����', 'limit', '����');
INSERT INTO cmn_lang_tb VALUES ('Limitfileqty', '�����ļ�����', '�����ļ�����', 'limit file quantity', '�����ļ�����');
INSERT INTO cmn_lang_tb VALUES ('Loginip', '��¼IP', '��¼IP', 'login ip', '��¼IP');
INSERT INTO cmn_lang_tb VALUES ('Major', 'רҵ', 'רҵ', 'major', 'רҵ');
INSERT INTO cmn_lang_tb VALUES ('Male', '��', '��', 'male', '��');
INSERT INTO cmn_lang_tb VALUES ('Manager', '����', '����', 'manager', '����');
INSERT INTO cmn_lang_tb VALUES ('Marital_status', '����״��', '����״��', 'marital status', '����״��');
INSERT INTO cmn_lang_tb VALUES ('Marry', '�ѻ�', '�ѻ�', 'marry', '�ѻ�');
INSERT INTO cmn_lang_tb VALUES ('Maxvalue', '���ֵ', '���ֵ', 'max value', '���ֵ');
INSERT INTO cmn_lang_tb VALUES ('Minvalue', '��Сֵ', '��Сֵ', 'min value', '��Сֵ');
INSERT INTO cmn_lang_tb VALUES ('Mobile', '�ֻ�����', '�ֻ�����', 'mobile', '�ֻ�����');
INSERT INTO cmn_lang_tb VALUES ('Monday', '����һ', '����һ', 'monday', '����һ');
INSERT INTO cmn_lang_tb VALUES ('NO', '���', '���', 'no', '���');
INSERT INTO cmn_lang_tb VALUES ('Native_place', '����', '����', 'native place', '����');
INSERT INTO cmn_lang_tb VALUES ('Next', 'ͬ��', 'ͬ��', 'next', 'ͬ��');
INSERT INTO cmn_lang_tb VALUES ('Nexttask', '��һ����', '��һ����', 'next task', '��һ����');
INSERT INTO cmn_lang_tb VALUES ('Nextyearleave', '��ת�����ݼ�', '��ת�����ݼ�', 'next year leave', '��ת�����ݼ�');
INSERT INTO cmn_lang_tb VALUES ('No', '��', '��', 'no', '��');
INSERT INTO cmn_lang_tb VALUES ('Nopersontask', '����ת��', '����ת��', 'no person task', '����ת��');
INSERT INTO cmn_lang_tb VALUES ('Normal', 'һ��', 'һ��', 'normal', 'һ��');
INSERT INTO cmn_lang_tb VALUES ('Nos', '���', '���', 'no', '���');
INSERT INTO cmn_lang_tb VALUES ('NotMarry', 'δ��', 'δ��', 'not marry', 'δ��');
INSERT INTO cmn_lang_tb VALUES ('Notcity', '�ǳ���', '�ǳ���', 'not city', '�ǳ���');
INSERT INTO cmn_lang_tb VALUES ('Notexpired', 'δ����', 'δ����', 'not expired', 'δ����');
INSERT INTO cmn_lang_tb VALUES ('Nothing', '��', '��', 'nothing', '��');
INSERT INTO cmn_lang_tb VALUES ('Notpassed', 'δͨ��', 'δͨ��', 'not passed', 'δͨ��');
INSERT INTO cmn_lang_tb VALUES ('Offdutytimebutton', '�°��', '�°��', 'off duty time', '�°��');
INSERT INTO cmn_lang_tb VALUES ('Ondutytimebutton', '�ϰ��', '�ϰ��', 'on duty time', '�ϰ��');
INSERT INTO cmn_lang_tb VALUES ('Opnion', '�������', '�������', 'opnion', '�������');
INSERT INTO cmn_lang_tb VALUES ('Orgid', '�������', '�������', 'organization id', '�������');
INSERT INTO cmn_lang_tb VALUES ('Orglevel', '��������', '��������', 'organization level', '��������');
INSERT INTO cmn_lang_tb VALUES ('Orgname', '��������', '��������', 'organization name', '��������');
INSERT INTO cmn_lang_tb VALUES ('Orgtype', '�������', '�������', 'organization type', '�������');
INSERT INTO cmn_lang_tb VALUES ('Orgtypename', '�����������', '�����������', 'organization type name', '�����������');
INSERT INTO cmn_lang_tb VALUES ('Outtype', '�������', '�������', 'out type', '�������');
INSERT INTO cmn_lang_tb VALUES ('Outtypeid', '�������ͱ��', '�������ͱ��', 'out type id', '�������ͱ��');
INSERT INTO cmn_lang_tb VALUES ('Outtypename', '������������', '������������', 'out type name', '������������');
INSERT INTO cmn_lang_tb VALUES ('Parentid', '�����', '�����', 'parent id', '�����');
INSERT INTO cmn_lang_tb VALUES ('Pass', 'ͨ��', 'ͨ��', 'pass', 'ͨ��');
INSERT INTO cmn_lang_tb VALUES ('Passed', 'ͨ��', 'ͨ��', 'pass', 'ͨ��');
INSERT INTO cmn_lang_tb VALUES ('Pause', '��ͣ', '��ͣ', 'pause', '��ͣ');
INSERT INTO cmn_lang_tb VALUES ('Paytype', '֧������', '֧������', 'pay type', '֧������');
INSERT INTO cmn_lang_tb VALUES ('Paytypename', '֧����������', '֧����������', 'pay type name', '֧����������');
INSERT INTO cmn_lang_tb VALUES ('Planid', '����ID', '����ID', 'plan id', '����ID');
INSERT INTO cmn_lang_tb VALUES ('Pmend', '�����ϰ����ʱ��', '�����ϰ����ʱ��', 'pm end', '�����ϰ����ʱ��');
INSERT INTO cmn_lang_tb VALUES ('Pmstart', '�����ϰ࿪ʼʱ��', '�����ϰ࿪ʼʱ��', 'pm start', '�����ϰ࿪ʼʱ��');
INSERT INTO cmn_lang_tb VALUES ('Post', 'ְλ����', 'ְλ����', 'post management', 'ְλ����');
INSERT INTO cmn_lang_tb VALUES ('Postcode', '�ʱ�', '�ʱ�', 'post code', '�ʱ�');
INSERT INTO cmn_lang_tb VALUES ('Postid', 'ְλ���', 'ְλ���', 'postid', 'ְλ���');
INSERT INTO cmn_lang_tb VALUES ('Postname', 'ְλ����', 'ְλ����', 'postname', 'ְλ����');
INSERT INTO cmn_lang_tb VALUES ('Professional_title', 'ְ��', 'ְ��', 'professional title', 'ְ��');
INSERT INTO cmn_lang_tb VALUES ('Pssword', '����', '����', 'password', '����');
INSERT INTO cmn_lang_tb VALUES ('Rank', 'ְ��', 'ְ��', 'rank', 'ְ��');
INSERT INTO cmn_lang_tb VALUES ('Rate', '˰��', '˰��', 'rate', '˰��');
INSERT INTO cmn_lang_tb VALUES ('Remark', '��ע', '��ע', 'remark', '��ע');
INSERT INTO cmn_lang_tb VALUES ('Remarks', '��ע', '��ע', 'remark', '��ע');
INSERT INTO cmn_lang_tb VALUES ('Resetpassword', '��������', '��������', 'reset password', '��������');
INSERT INTO cmn_lang_tb VALUES ('Residence_addres', '�������ڵ�', '�������ڵ�', 'residence address', '�������ڵ�');
INSERT INTO cmn_lang_tb VALUES ('Residence_type', '��������', '��������', 'residence type', '��������');
INSERT INTO cmn_lang_tb VALUES ('Restart', '����', '����', 'restart', '����');
INSERT INTO cmn_lang_tb VALUES ('Return', '����', '����', 'return', '����');
INSERT INTO cmn_lang_tb VALUES ('Rows', '����', '����', 'rows', '����');
INSERT INTO cmn_lang_tb VALUES ('Salaryleave', '�и��ݼ�', '�и��ݼ�', 'salary leave', '�и��ݼ�');
INSERT INTO cmn_lang_tb VALUES ('Samepersontask', 'ͬ��ת��', 'ͬ��ת��', 'same person task', 'ͬ��ת��');
INSERT INTO cmn_lang_tb VALUES ('Saturday', '������', '������', 'saturday', '������');
INSERT INTO cmn_lang_tb VALUES ('Save', '����', '����', 'save', '����');
INSERT INTO cmn_lang_tb VALUES ('School', '��ҵԺУ', '��ҵԺУ', 'school', '��ҵԺУ');
INSERT INTO cmn_lang_tb VALUES ('Sendmessage', '������Ϣ', '��������', 'Sendmessage', '��������');
INSERT INTO cmn_lang_tb VALUES ('Sex', '�Ա�', '�Ա�', 'sex', '�Ա�');
INSERT INTO cmn_lang_tb VALUES ('Skip', '����', '����', 'skip', '����');
INSERT INTO cmn_lang_tb VALUES ('Speciality', '�س�', '�س�', 'speciality', '�س�');
INSERT INTO cmn_lang_tb VALUES ('Speciality_cert', '�س�֤��', '�س�֤��', 'speciality cert', '�س�֤��');
INSERT INTO cmn_lang_tb VALUES ('Split', '����', '����', 'split flow', '����');
INSERT INTO cmn_lang_tb VALUES ('Start', '��ʼ', '��ʼ', 'start', '��ʼ');
INSERT INTO cmn_lang_tb VALUES ('Startdate', '��ʼ����', '��ʼ����', 'start date', '��ʼ����');
INSERT INTO cmn_lang_tb VALUES ('Status', '����״̬', '����״̬', 'status', '����״̬');
INSERT INTO cmn_lang_tb VALUES ('Statuss', '����״̬', '����״̬', 'status', '����״̬');
INSERT INTO cmn_lang_tb VALUES ('Stepvalue', '����', '����', 'step value', '����');
INSERT INTO cmn_lang_tb VALUES ('Stop', '��ֹ', '��ֹ', 'stop', '��ֹ');
INSERT INTO cmn_lang_tb VALUES ('Submit', '�ύ', '�ύ', 'submit', '�ύ');
INSERT INTO cmn_lang_tb VALUES ('Sunday', '������', '������', 'sunday', '������');
INSERT INTO cmn_lang_tb VALUES ('Supporskip', '֧����ת', '֧����ת', 'support skip', '֧����ת');
INSERT INTO cmn_lang_tb VALUES ('Supportskip', '֧����ת', '֧����ת', 'Supportskip', '֧����ת');
INSERT INTO cmn_lang_tb VALUES ('Taskexecuter', 'ִ����', 'ִ����', 'task executer', 'ִ����');
INSERT INTO cmn_lang_tb VALUES ('Taskfinishtime', '�������ʱ��', '�������ʱ��', 'task finish time', '�������ʱ��');
INSERT INTO cmn_lang_tb VALUES ('Taskid', '����ID', '����ID', 'task id', '����ID');
INSERT INTO cmn_lang_tb VALUES ('Taskname', '��������', '��������', 'task name', '��������');
INSERT INTO cmn_lang_tb VALUES ('Taskstarttime', '����ʼʱ��', '����ʼʱ��', 'task start time', '����ʼʱ��');
INSERT INTO cmn_lang_tb VALUES ('Taskstatus', '����״̬', '����״̬', 'task status', '����״̬');
INSERT INTO cmn_lang_tb VALUES ('Tchinese', '��������', '��������', 'tchinese', '��������');
INSERT INTO cmn_lang_tb VALUES ('Telphone', '�绰����', '�绰����', 'telphone', '�绰����');
INSERT INTO cmn_lang_tb VALUES ('Thursday', '������', '������', 'thursday', '������');
INSERT INTO cmn_lang_tb VALUES ('Tickets', '��Ʊ����', '��Ʊ����', 'tickets', '��Ʊ����');
INSERT INTO cmn_lang_tb VALUES ('Totalleave', '�ϼ��ݼ�', '�ϼ��ݼ�', 'total leave', '�ϼ��ݼ�');
INSERT INTO cmn_lang_tb VALUES ('Transfer', 'ת��', 'ת��', 'transfer', 'ת��');
INSERT INTO cmn_lang_tb VALUES ('Transferpost', 'ת��', 'ת��', 'transfer post', 'ת��');
INSERT INTO cmn_lang_tb VALUES ('Transfersign', 'תǩ', 'תǩ', 'transfer sign', 'תǩ');
INSERT INTO cmn_lang_tb VALUES ('Transfertype', 'ת������', 'ת������', 'transfer type', 'ת������');
INSERT INTO cmn_lang_tb VALUES ('Transferuserid', 'תǩ��ת��������/��ְ�Ӱ���', 'תǩ��ת��������/��ְ�Ӱ���', 'transfer useid', 'תǩ��ת��������/��ְ�Ӱ���');
INSERT INTO cmn_lang_tb VALUES ('Tuesday', '���ڶ�', '���ڶ�', 'tuesday', '���ڶ�');
INSERT INTO cmn_lang_tb VALUES ('Upload', '�ϴ�', '�ϴ�', 'Upload', '�ϴ�');
INSERT INTO cmn_lang_tb VALUES ('Userid', '�û����', '�û����', 'user id', '�û����');
INSERT INTO cmn_lang_tb VALUES ('Userlevel', '�û�����', '�û�����', 'user level', '�û�����');
INSERT INTO cmn_lang_tb VALUES ('Username', '�û�����', '�û�����', 'user name', '�û�����');
INSERT INTO cmn_lang_tb VALUES ('Usertype', '�û�����', '�û�����', 'user type', '�û�����');
INSERT INTO cmn_lang_tb VALUES ('Valuee', 'ֵ', 'ֵ', 'value', 'ֵ');
INSERT INTO cmn_lang_tb VALUES ('Vary', '����', '����', 'vary', '����');
INSERT INTO cmn_lang_tb VALUES ('Varyname', '��������', '��������', 'vary name', '��������');
INSERT INTO cmn_lang_tb VALUES ('Varytype', '��������', '��������', 'vary type', '��������');
INSERT INTO cmn_lang_tb VALUES ('Varyvalue', '����ֵ', '����ֵ', 'vary value', '����ֵ');
INSERT INTO cmn_lang_tb VALUES ('Verygood', '��ͨ', '��ͨ', 'vary good', '��ͨ');
INSERT INTO cmn_lang_tb VALUES ('ViceManager', '������', '������', '', '������');
INSERT INTO cmn_lang_tb VALUES ('Vicemanager', '������', '������', 'vice manager', '������');
INSERT INTO cmn_lang_tb VALUES ('Vid', '����', '����', 'vary', '����');
INSERT INTO cmn_lang_tb VALUES ('View', '�鿴', '�鿴', 'view', '�鿴');
INSERT INTO cmn_lang_tb VALUES ('Vname', '��������', '��������', 'vary name', '��������');
INSERT INTO cmn_lang_tb VALUES ('Vvalue', '����ֵ', '����ֵ', 'vary value', '����ֵ');
INSERT INTO cmn_lang_tb VALUES ('Wednesday', '������', '������', 'wednesday', '������');
INSERT INTO cmn_lang_tb VALUES ('Weekend', '˫����', '˫����', 'week end', '˫����');
INSERT INTO cmn_lang_tb VALUES ('Welfareleave', '�����ݼ�', '�����ݼ�', 'welfare leave', '�����ݼ�');
INSERT INTO cmn_lang_tb VALUES ('Work_card', '�����ƺ�', '�����ƺ�', 'work card', '�����ƺ�');
INSERT INTO cmn_lang_tb VALUES ('Work_date', '�μӹ���ʱ��', '�μӹ���ʱ��', 'work date', '�μӹ���ʱ��');
INSERT INTO cmn_lang_tb VALUES ('Workday', '������', '������', 'workday', '������');
INSERT INTO cmn_lang_tb VALUES ('Years', '��ְ����', '��ְ����', 'years', '��ְ����');
INSERT INTO cmn_lang_tb VALUES ('Yes', '��', '��', 'yes', '��');
INSERT INTO cmn_lang_tb VALUES ('cancel', '��ȡ��', '��ȡ��', 'cancel', '��ȡ��');
INSERT INTO cmn_lang_tb VALUES ('export', '����', '����', 'export', '����');
INSERT INTO cmn_lang_tb VALUES ('isleader', '�Ƿ�����', '�Ƿ�����', 'isleader', '�Ƿ�����');
INSERT INTO cmn_lang_tb VALUES ('leave', '��ְ', '��ְ', 'leave', '��ְ');
INSERT INTO cmn_lang_tb VALUES ('loadjson', '��ȡjson�ļ�', '��ȡjson�ļ�', 'load json file', '��ȡjson�ļ�');
INSERT INTO cmn_lang_tb VALUES ('next', '����', '����', 'to do', '����');
INSERT INTO cmn_lang_tb VALUES ('orgvary', '��������', '��������', 'organization vary', '��������');
INSERT INTO cmn_lang_tb VALUES ('ownerdepartment', '��������', '��������', 'ownerdepartment', '��������');
INSERT INTO cmn_lang_tb VALUES ('passed', '��ͨ��', '��ͨ��', 'passed', '��ͨ��');
INSERT INTO cmn_lang_tb VALUES ('query', '��ѯ', '��ѯ', 'query', '��ѯ');
INSERT INTO cmn_lang_tb VALUES ('relatedusers', '�����û�', '�����û�', 'related users', '�����û�');
INSERT INTO cmn_lang_tb VALUES ('restart', '����', '����', 'restart', '����');
INSERT INTO cmn_lang_tb VALUES ('save', '����', '����', 'save', '����');
INSERT INTO cmn_lang_tb VALUES ('skip', '����', '����', 'skip', '����');
INSERT INTO cmn_lang_tb VALUES ('stop', '����ֹ', '����ֹ', 'stop', '����ֹ');
INSERT INTO cmn_lang_tb VALUES ('submit', '�ύ', '�ύ', 'submit', '�ύ');
INSERT INTO cmn_lang_tb VALUES ('updatejson', '����json�ļ�', '����json�ļ�', 'update json file', '����json�ļ�');
INSERT INTO cmn_lang_tb VALUES ('upload', '�ϴ�', '�ϴ�', 'upload', '�ϴ�');
INSERT INTO cmn_lang_tb VALUES ('Attdate', '��������', '��������', 'Attdate', '��������');
INSERT INTO cmn_lang_tb VALUES ('Palondutytime', '��ǩ�ϰ�ʱ��', '��ǩ�ϰ�ʱ��', 'Palondutytime', '��ǩ�ϰ�ʱ��');
INSERT INTO cmn_lang_tb VALUES ('Paloffdutytime', '��ǩ�°�ʱ��', '��ǩ�°�ʱ��', 'Paloffdutytime', '��ǩ�°�ʱ��');
INSERT INTO cmn_lang_tb VALUES ('Palreason', '��ǩԭ��', '��ǩ�°�ʱ��', 'Palreason', '��ǩ�°�ʱ��');
INSERT INTO cmn_lang_tb VALUES ('Remainleave', 'ʣ�����', 'ʣ�����', 'Remainleave', 'ʣ�����');
INSERT INTO cmn_lang_tb VALUES ('Usedleave', '�������', '�������', 'Usedleave', '�������');
INSERT INTO cmn_lang_tb VALUES ('Year', '���', '���', 'Year', '���');
INSERT INTO cmn_lang_tb VALUES ('Outdays', '�������', '�������', 'Outdays', '�������');
INSERT INTO cmn_lang_tb VALUES ('Comment', 'ע��', 'ע��', 'Comment', 'ע��');
INSERT INTO cmn_lang_tb VALUES ('Reason', 'ԭ��', 'ԭ��', 'Reason', 'ԭ��');
INSERT INTO cmn_lang_tb VALUES ('Linkman', '��ϵ��', '��ϵ��', 'Linkman', '��ϵ��');
INSERT INTO cmn_lang_tb VALUES ('Calltimefrom', '����ʱ��FROM', '����ʱ��FROM', 'Calltimefrom', '����ʱ��FROM');
INSERT INTO cmn_lang_tb VALUES ('Calltimeto', '����ʱ��TO', '����ʱ��TO', 'Calltimeto', '����ʱ��TO');
INSERT INTO cmn_lang_tb VALUES ('Calltime', '����ʱ��', '����ʱ��', 'Calltime', '����ʱ��');
INSERT INTO cmn_lang_tb VALUES ('Overtimereason', '�Ӱ�ԭ��', '�Ӱ�ԭ��', 'Overtimereason', '�Ӱ�ԭ��');
INSERT INTO cmn_lang_tb VALUES ('Overtimedate', '�Ӱ�����', '�Ӱ�����', 'Overtimedate', '�Ӱ�����');
INSERT INTO cmn_lang_tb VALUES ('Istravel', '�Ƿ����', '�Ƿ����', 'Istravel', '�Ƿ����');
INSERT INTO cmn_lang_tb VALUES ('Leave', '���', '���', 'Leave', '���');
INSERT INTO cmn_lang_tb VALUES ('Ondutytime', '�ϰ�ʱ��', '�ϰ�ʱ��', 'Ondutytime', '�ϰ�ʱ��');
INSERT INTO cmn_lang_tb VALUES ('Offdutytime', '�°�ʱ��', '�°�ʱ��', 'Offdutytime', '�°�ʱ��');
INSERT INTO cmn_lang_tb VALUES ('Attmonth', '�����·�', '�����·�', 'Attmonth', '�����·�');
INSERT INTO cmn_lang_tb VALUES ('Attexception', '�����쳣', '�����쳣', 'Attexception', '�����쳣');
INSERT INTO cmn_lang_tb VALUES ('Earlyleave', '����', '����', 'Earlyleave', '����');
INSERT INTO cmn_lang_tb VALUES ('Late', '�ٵ�', '�ٵ�', 'Late', '�ٵ�');
INSERT INTO cmn_lang_tb VALUES ('Dayovertime', 'ƽ�ռӰ�ʱ��', '�ٵ�', 'Dayovertime', '�ٵ�');
INSERT INTO cmn_lang_tb VALUES ('Nightovertime', '��ҹ�Ӱ�ʱ��', '�ٵ�', 'Nightovertime', '�ٵ�');
INSERT INTO cmn_lang_tb VALUES ('Weekendovertime', '��ĩ�Ӱ�ʱ��', '�ٵ�', 'Weekendovertime', '�ٵ�');
INSERT INTO cmn_lang_tb VALUES ('Lastweekendovertime', '������ĩ�Ӱ����', '������ĩ�Ӱ����', 'Lastweekendovertime', '������ĩ�Ӱ����');
INSERT INTO cmn_lang_tb VALUES ('Holidayovertime', '���ռӰ�ʱ��', '���ռӰ�ʱ��', 'Holidayovertime', '���ռӰ�ʱ��');
INSERT INTO cmn_lang_tb VALUES ('Overtimefee', '��ͷ�', '���ռӰ�ʱ��', 'Overtimefee', '���ռӰ�ʱ��');
INSERT INTO cmn_lang_tb VALUES ('Sickleave', '����', '����', 'Sickleave', '����');
INSERT INTO cmn_lang_tb VALUES ('Casualleave', '�ر��', '�ر��', 'Casualleave', '�ر��');
INSERT INTO cmn_lang_tb VALUES ('Lastwelfareleave', '��ת�����', '��ת�����', 'Lastwelfareleave', '��ת�����');
INSERT INTO cmn_lang_tb VALUES ('Reverseleave', '���ݼ�', '���ݼ�', 'Reverseleave', '���ݼ�');
INSERT INTO cmn_lang_tb VALUES ('Medicalleave', 'Medical', 'Medical', 'Medicalleave', 'Medical');
INSERT INTO cmn_lang_tb VALUES ('Marriageleave', '���', '���', 'Marriageleave', '���');
INSERT INTO cmn_lang_tb VALUES ('Checkleave', '�¼�', '�¼�', 'Checkleave', '�¼�');
INSERT INTO cmn_lang_tb VALUES ('Maternityleave', '����', '����', 'Maternityleave', '����');
INSERT INTO cmn_lang_tb VALUES ('Paternityleave', '�����', '�����', 'Paternityleave', '�����');
INSERT INTO cmn_lang_tb VALUES ('Planmaternityleave', '�����', '�����', 'Planmaternityleave', '�����');
INSERT INTO cmn_lang_tb VALUES ('Funeralleave', 'ɥ��', '����', 'Funeralleave', '����');
INSERT INTO cmn_lang_tb VALUES ('Officialholiday', '���ҷ�����', '���ҷ�����', 'Officialholiday', '���ҷ�����');
INSERT INTO cmn_lang_tb VALUES ('Hasticket', '�Ƿ��з�Ʊ', '���ҷ�����', 'Hasticket', '���ҷ�����');
INSERT INTO cmn_lang_tb VALUES ('Ticketcomment', '��Ʊע��', '��Ʊע��', 'Ticketcomment', '��Ʊע��');
INSERT INTO cmn_lang_tb VALUES ('Attchment', '����', '��Ʊע��', 'Attchment', '��Ʊע��');
INSERT INTO cmn_lang_tb VALUES ('Claimantfile', '�����ļ�', '�����ļ�', 'Claimantfile', '�����ļ�');
INSERT INTO cmn_lang_tb VALUES ('Payee', '֧������', '֧������', 'Payee', '֧������');
INSERT INTO cmn_lang_tb VALUES ('Bankaccount', '�����˻�', '�����˻�', 'Bankaccount', '�����˻�');
INSERT INTO cmn_lang_tb VALUES ('Bank', '����', '����', 'Bank', '����');
INSERT INTO cmn_lang_tb VALUES ('Branchno', '����', '����', 'Branchno', '����');
INSERT INTO cmn_lang_tb VALUES ('Taxcode', '˰��', '˰��', 'Taxcode', '˰��');
INSERT INTO cmn_lang_tb VALUES ('Address_tel', '��ַ�绰', '��ַ�绰', 'Address_tel', '��ַ�绰');
INSERT INTO cmn_lang_tb VALUES ('Modify', '����', '����', 'Modify', '����');
INSERT INTO cmn_lang_tb VALUES ('Aim', 'Ŀ��', 'Ŀ��', 'Aim', 'Ŀ��');
INSERT INTO cmn_lang_tb VALUES ('Budgetary', 'Ԥ���ʩ', 'Ԥ���ʩ', 'Budgetary', 'Ԥ���ʩ');
INSERT INTO cmn_lang_tb VALUES ('Dotime', '��������', '��������', 'Dotime', '��������');
INSERT INTO cmn_lang_tb VALUES ('Others', '����', '����', 'Others', '����');
INSERT INTO cmn_lang_tb VALUES ('Travelarea', '��������', '��������', 'Travelarea', '��������');
INSERT INTO cmn_lang_tb VALUES ('Customercompany', '�Է���˾', '�Է���˾', 'Customercompany', '�Է���˾');
INSERT INTO cmn_lang_tb VALUES ('Customer', '�ͻ�', '�ͻ�', 'Customer', '�ͻ�');
INSERT INTO cmn_lang_tb VALUES ('Itemcode', '���ñ��', '���ñ��', 'Itemcode', '���ñ��');
INSERT INTO cmn_lang_tb VALUES ('Itemdescription', '����˵��', '����˵��', 'Itemdescription', '����˵��');
INSERT INTO cmn_lang_tb VALUES ('Travelid', '����������', '����������', 'Travelid', '����������');
INSERT INTO cmn_lang_tb VALUES ('Destination', 'Ŀ�ĵ�', '����˵��', 'Destination', '����˵��');
INSERT INTO cmn_lang_tb VALUES ('Dayamount', 'ÿ�첹��', 'ÿ�첹��', 'Dayamount', 'ÿ�첹��');
INSERT INTO cmn_lang_tb VALUES ('Dayamount_description', 'ÿ�첹��˵��', 'ÿ�첹��˵��', 'Dayamount_description', 'ÿ�첹��˵��');
INSERT INTO cmn_lang_tb VALUES ('Itemdate', '��Ŀ����', '��Ŀ����', 'Itemdate', '��Ŀ����');
INSERT INTO cmn_lang_tb VALUES ('Itemtype', '��Ŀ����', '��Ŀ����', 'Itemtype', '��Ŀ����');
INSERT INTO cmn_lang_tb VALUES ('Flytno', '�����', '�����', 'Flytno', '�����');
INSERT INTO cmn_lang_tb VALUES ('Pamount', 'Ԥ��', 'Ԥ��', 'Pamount', 'Ԥ��');
INSERT INTO cmn_lang_tb VALUES ('Camount', '�渶', '�渶', 'Camount', '�渶');
INSERT INTO cmn_lang_tb VALUES ('Line', '��·', '��·', 'Line', '��·');
INSERT INTO cmn_lang_tb VALUES ('Name', '����', '����', 'Name', '����');
INSERT INTO cmn_lang_tb VALUES ('Displayno', '��ʾ˳��', '��ʾ˳��', 'Displayno', '��ʾ˳��');
INSERT INTO cmn_lang_tb VALUES ('Accountype', '�˻�����', '�˻�����', 'Accountype', '�˻�����');
INSERT INTO cmn_lang_tb VALUES ('Openbank', '������', '������', 'Openbank', '������');
INSERT INTO cmn_lang_tb VALUES ('Modualid', 'ģ����', 'ģ����', 'Modualid', 'ģ����');
INSERT INTO cmn_lang_tb VALUES ('Modualname', 'ģ������', 'ģ������', 'Modualname', 'ģ������');
INSERT INTO cmn_lang_tb VALUES ('Tablename', '����', '����', 'Tablename', '����');
INSERT INTO cmn_lang_tb VALUES ('Roleid', '��ɫID', '��ɫID', 'Roleid', '��ɫID');
INSERT INTO cmn_lang_tb VALUES ('Rolename', '��ɫ����', '��ɫ����', 'Rolename', '��ɫ����');
INSERT INTO cmn_lang_tb VALUES ('Rolelevel', '��ɫ����', '��ɫ����', 'Rolelevel', '��ɫ����');
INSERT INTO cmn_lang_tb VALUES ('Userfile', '�û��ļ�', '�û��ļ�', 'Userfile', '�û��ļ�');
INSERT INTO cmn_lang_tb VALUES ('Componentname', '�������', '�������', 'Componentname', '�������');
INSERT INTO cmn_lang_tb VALUES ('Title', '����', '����', 'Title', '����');
INSERT INTO cmn_lang_tb VALUES ('Buttons', '��ť', '��ť', 'Buttons', '��ť');
INSERT INTO cmn_lang_tb VALUES ('Style', 'ҳ����', 'ҳ����', 'Style', 'ҳ����');
INSERT INTO cmn_lang_tb VALUES ('Gutter', '���', '���', 'Gutter', '���');
INSERT INTO cmn_lang_tb VALUES ('Colcount', '����', '����', 'Colcount', '����');
INSERT INTO cmn_lang_tb VALUES ('Componentlevel', '�������', '�������', 'Componentlevel', '�������');
INSERT INTO cmn_lang_tb VALUES ('Godirectory', 'golang��Ŀ·��', 'golang��Ŀ·��', 'Godirectory', 'golang��Ŀ·��');
INSERT INTO cmn_lang_tb VALUES ('Ngdirectory', 'angular��Ŀ·��', 'angular��Ŀ·��', 'Ngdirectory', 'angular��Ŀ·��');
INSERT INTO cmn_lang_tb VALUES ('Islimit', '�Ƿ�����', '�Ƿ�����', 'Islimit', '�Ƿ�����');
INSERT INTO cmn_lang_tb VALUES ('Minvalues', '��Сֵ', '��Сֵ', 'Minvalues', '��Сֵ');
INSERT INTO cmn_lang_tb VALUES ('Maxvalues', '���ֵ', '���ֵ', 'Maxvalues', '���ֵ');
INSERT INTO cmn_lang_tb VALUES ('Icon', 'ͼ��', 'ͼ��', 'Icon', 'ͼ��');
INSERT INTO cmn_lang_tb VALUES ('Password', '����', '����', 'Password', '����');
INSERT INTO cmn_lang_tb VALUES ('Seq', '��ʾ˳��', '��ʾ˳��', 'Seq', '��ʾ˳��');
INSERT INTO cmn_lang_tb VALUES ('Hotel', 'ס�޵�ַ������', 'ס�޵�ַ������', 'Hotel', 'ס�޵�ַ������');
INSERT INTO cmn_lang_tb VALUES ('Flytime', '����ʱ��', '����ʱ��', 'Flytime', '����ʱ��');
INSERT INTO cmn_lang_tb VALUES ('Vehicle', '��ͨ����', '��ͨ����', 'Vehicle', '��ͨ����');
INSERT INTO cmn_lang_tb VALUES ('Idate', '��������', '��������', 'Idate', '��������');
INSERT INTO cmn_lang_tb VALUES ('Medical', '���', '���', 'Medical', '���');
INSERT INTO cmn_lang_tb VALUES ('Paycontent', '֧������', '֧������', 'Paycontent', '֧������');
INSERT INTO cmn_lang_tb VALUES ('Ticketnum', '��Ʊ��', '��Ʊ��', 'Ticketnum', '��Ʊ��');
INSERT INTO cmn_lang_tb VALUES ('expensequerytitle', '���ñ��������ѯ', '���ñ��������ѯ', 'expensequerytitle', '���ñ��������ѯ');
INSERT INTO cmn_lang_tb VALUES ('aftersignattformtitle', '��ǩ����', '��ǩ����', 'aftersign att', '��ǩ����');
INSERT INTO cmn_lang_tb VALUES ('attoutquerytitle', '��������ѯ', '��������ѯ', 'attout query', '��������ѯ');
INSERT INTO cmn_lang_tb VALUES ('attoutformtitle', '�������', '�������', 'att out apply', '�������');
INSERT INTO cmn_lang_tb VALUES ('attoutquerylisttitle', '��������ѯ�б�', '��������ѯ�б�', 'att out query list', '��������ѯ�б�');
INSERT INTO cmn_lang_tb VALUES ('overtimeformtitle', '�Ӱ�����', '�Ӱ�����', 'overtimeformtitle', '�Ӱ�����');
INSERT INTO cmn_lang_tb VALUES ('transfer flow management', '����ת��', '����ת��', 'transfer flow management', '����ת��');
INSERT INTO cmn_lang_tb VALUES ('attformtitle', '�������', '�������', 'attformtitle', '�������');
INSERT INTO cmn_lang_tb VALUES ('attquerytitle', '��������ѯ', '��������ѯ', 'attquerytitle', '��������ѯ');
INSERT INTO cmn_lang_tb VALUES ('attquerylisttitle', '��������ѯ�б�', '��������ѯ�б�', 'attquerylisttitle', '��������ѯ�б�');
INSERT INTO cmn_lang_tb VALUES ('claimantformtitle', '��������', '��������', 'claimantformtitle', '��������');
INSERT INTO cmn_lang_tb VALUES ('claimantimportformtitle', '�������뵼��', '�������뵼��', 'claimantimportformtitle', '�������뵼��');
INSERT INTO cmn_lang_tb VALUES ('claimantquerytitle', '���������ѯ', '���������ѯ', 'claimantquerytitle', '���������ѯ');
INSERT INTO cmn_lang_tb VALUES ('claimantquerylisttitle', '���������ѯ�б�', '���������ѯ�б�', 'claimantquerylisttitle', '���������ѯ�б�');
INSERT INTO cmn_lang_tb VALUES ('payaccountformtitle', '֧���˻�����', '֧���˻�����', 'payaccountformtitle', '֧���˻�����');
INSERT INTO cmn_lang_tb VALUES ('payaccountquerytitle', '֧���˻������ѯ', '֧���˻������ѯ', 'payaccountquerytitle', '֧���˻������ѯ');
INSERT INTO cmn_lang_tb VALUES ('payaccountquerylisttitle', '֧���˻������ѯ�б�', '֧���˻������ѯ�б�', 'payaccountquerylisttitle', '֧���˻������ѯ�б�');
INSERT INTO cmn_lang_tb VALUES ('payformtitle', '֧������', '֧������', 'payformtitle', '֧������');
INSERT INTO cmn_lang_tb VALUES ('payquerytitle', '֧�������ѯ', '֧�������ѯ', 'payquerytitle', '֧�������ѯ');
INSERT INTO cmn_lang_tb VALUES ('payquerylisttitle', '֧�������ѯ�б�', '֧�������ѯ�б�', 'payquerylisttitle', '֧�������ѯ�б�');
INSERT INTO cmn_lang_tb VALUES ('expensequerylisttitle', '���ñ��������ѯ�б�', '���ñ��������ѯ�б�', 'expensequerylisttitle', '���ñ��������ѯ�б�');
INSERT INTO cmn_lang_tb VALUES ('meetingformtitle', '���������', '���������', 'meetingformtitle', '���������');
INSERT INTO cmn_lang_tb VALUES ('meetingquerytitle', '����������ѯ', '����������ѯ', 'meetingquerytitle', '����������ѯ');
INSERT INTO cmn_lang_tb VALUES ('meetingquerylisttitle', '����������ѯ�б�', '����������ѯ�б�', 'meeting query list', '����������ѯ�б�');
INSERT INTO cmn_lang_tb VALUES ('travelformtitle', '���÷ѱ�������', '���÷ѱ�������', 'travel form', '���÷ѱ�������');
INSERT INTO cmn_lang_tb VALUES ('travelquerytitle', '���÷ѱ��������ѯ', '���÷ѱ��������ѯ', 'travel query', '���÷ѱ��������ѯ');
INSERT INTO cmn_lang_tb VALUES ('travelquerylisttitle', '���÷ѱ��������ѯ�б�', '���÷ѱ��������ѯ�б�', 'travel query list', '���÷ѱ��������ѯ�б�');
INSERT INTO cmn_lang_tb VALUES ('loanformtitle', '�������', '�������', 'loan', '�������');
INSERT INTO cmn_lang_tb VALUES ('loanquerytitle', '��������ѯ', '��������ѯ', 'loan query', '��������ѯ');
INSERT INTO cmn_lang_tb VALUES ('loanquerylisttitle', '��������ѯ�б�', '��������ѯ�б�', 'loan query list', '��������ѯ�б�');
INSERT INTO cmn_lang_tb VALUES ('loantravelformtitle', '��������', '��������', 'loantravel form', '��������');
INSERT INTO cmn_lang_tb VALUES ('loantravelquerytitle', '���������ѯ', '���������ѯ', 'loantravel query', '���������ѯ');
INSERT INTO cmn_lang_tb VALUES ('loantravelquerylisttitle', '���������ѯ�б�', '���������ѯ�б�', 'loantravel query list', '���������ѯ�б�');
INSERT INTO cmn_lang_tb VALUES ('planformtitle', '������', '������', 'plan form', '������');
INSERT INTO cmn_lang_tb VALUES ('planquerytitle', '�������ѯ', '�������ѯ', 'plan query', '�������ѯ');
INSERT INTO cmn_lang_tb VALUES ('planquerylisttitle', '�������ѯ�б�', '�������ѯ�б�', 'plan query list', '�������ѯ�б�');
INSERT INTO cmn_lang_tb VALUES ('accounttitle', '�����˻�', '�����˻�', 'account', '�����˻�');
INSERT INTO cmn_lang_tb VALUES ('meetingfeetypetitle', '���������', '���������', 'meeting fee type', '���������');
INSERT INTO cmn_lang_tb VALUES ('langsetting', '������', '���������', 'lang setting', '���������');
INSERT INTO cmn_lang_tb VALUES ('annualrule', '��ٹ���', '��ٹ���', 'annual rule', '��ٹ���');
INSERT INTO cmn_lang_tb VALUES ('attsetup', '��������', '��������', 'att setup', '��������');
INSERT INTO cmn_lang_tb VALUES ('holidaysetting', '�ڼ�������', '�ڼ�������', 'holidaysetting', '�ڼ�������');
INSERT INTO cmn_lang_tb VALUES ('outtype', '��������', '��������', 'outtype', '��������');
INSERT INTO cmn_lang_tb VALUES ('usersearch', '�û�����', '�û�����', 'usersearch', '�û�����');
INSERT INTO cmn_lang_tb VALUES ('userlist', '�û��б�', '�û��б�', 'userlist', '�û��б�');
INSERT INTO cmn_lang_tb VALUES ('donetasksearch', '�Ѱ��������', '�Ѱ��������', 'donetasksearch', '�Ѱ��������');
INSERT INTO cmn_lang_tb VALUES ('donetasklist', '�Ѱ������б�', '�Ѱ������б�', 'donetasklist', '�Ѱ������б�');
INSERT INTO cmn_lang_tb VALUES ('flowmonitor', '���̼��', '���̼��', 'flowmonitor', '���̼��');
INSERT INTO cmn_lang_tb VALUES ('flowmonitorlist', '���̼���б�', '���̼���б�', 'flowmonitorlist', '���̼���б�');
INSERT INTO cmn_lang_tb VALUES ('myflow', '�ҵ�����', '�ҵ�����', 'myflow', '�ҵ�����');
INSERT INTO cmn_lang_tb VALUES ('myflowlist', '�ҵ������б�', '�ҵ������б�', 'myflowlist', '�ҵ������б�');
INSERT INTO cmn_lang_tb VALUES ('todotask', '��������', '��������', 'todotask', '��������');
INSERT INTO cmn_lang_tb VALUES ('todotasklist', '���������б�', '���������б�', 'todotasklist', '���������б�');
INSERT INTO cmn_lang_tb VALUES ('mantask', '�˹�����', '�˹�����', 'mantask', '�˹�����');
INSERT INTO cmn_lang_tb VALUES ('action', '����', '����', 'action', '����');
INSERT INTO cmn_lang_tb VALUES ('executor', 'ִ����', 'ִ����', 'executor', 'ִ����');
INSERT INTO cmn_lang_tb VALUES ('floworgvary', '���̻�������', '���̻�������', 'floworgvary', '���̻�������');
INSERT INTO cmn_lang_tb VALUES ('flowstatus', '����״̬', '����״̬', 'flowstatus', '����״̬');
INSERT INTO cmn_lang_tb VALUES ('flowtemplate', '����ģ��', '����״̬', 'flowtemplate', '����״̬');
INSERT INTO cmn_lang_tb VALUES ('varies', '����', '����', 'varies', '����');
INSERT INTO cmn_lang_tb VALUES ('transferflowmanagement', '����ת������', '����ת������', 'transferflowmanagement', '����ת������');
INSERT INTO cmn_lang_tb VALUES ('expense', '���ñ�������', '���ñ�������', 'expense', '���ñ�������');
INSERT INTO cmn_lang_tb VALUES ('claimantformlisttitle', '��������б�', '���ñ�������', 'claimantformlisttitle', '���ñ�������');
INSERT INTO cmn_lang_tb VALUES ('meetinglisttitle', '������б�', '������б�', 'meetinglisttitle', '������б�');
INSERT INTO cmn_lang_tb VALUES ('customerlisttitle', '�ͻ��б�', '�ͻ��б�', 'customerlisttitle', '�ͻ��б�');
INSERT INTO cmn_lang_tb VALUES ('detaillisttitle', '�������ϸ', '�������ϸ', 'detaillisttitle', '�������ϸ');
INSERT INTO cmn_lang_tb VALUES ('feelisttitle', '�����б�', '�����б�', 'feelisttitle', '�����б�');
INSERT INTO cmn_lang_tb VALUES ('travellisttitle', '���÷���ϸ�б�', '���÷���ϸ�б�', 'travellisttitle', '���÷���ϸ�б�');
INSERT INTO cmn_lang_tb VALUES ('loanlisttitle', '�����ϸ�б�', '�����ϸ�б�', 'loanlisttitle', '�����ϸ�б�');
INSERT INTO cmn_lang_tb VALUES ('loantravellisttitle', '������ϸ�б�', '������ϸ�б�', 'loantravellisttitle', '������ϸ�б�');
INSERT INTO cmn_lang_tb VALUES ('planlisttitle', '����ϸ�б�', '����ϸ�б�', 'planlisttitle', '����ϸ�б�');
INSERT INTO cmn_lang_tb VALUES ('banksetting', '��������', '��������', 'banksetting', '��������');
INSERT INTO cmn_lang_tb VALUES ('currencysetting', '��������', '��������', 'currencysetting', '��������');
INSERT INTO cmn_lang_tb VALUES ('paytypetitle', '֧������', '֧������', 'paytypetitle', '֧������');
INSERT INTO cmn_lang_tb VALUES ('degreetitle', 'ѧ��', 'ѧ��', 'degreetitle', 'ѧ��');
INSERT INTO cmn_lang_tb VALUES ('orgtypetitle', '��������', '��������', 'orgtypetitle', '��������');
INSERT INTO cmn_lang_tb VALUES ('posttitle', 'ְλ', 'ְλ', 'posttitle', 'ְλ');
INSERT INTO cmn_lang_tb VALUES ('usermanagement', '�û�����', '�û�����', 'usermanagement', '�û�����');
INSERT INTO cmn_lang_tb VALUES ('userimport', '�û�����', '�û�����', 'userimport', '�û�����');
INSERT INTO cmn_lang_tb VALUES ('userinfo', '�û���Ϣ', '�û���Ϣ', 'userinfo', '�û���Ϣ');
INSERT INTO cmn_lang_tb VALUES ('passwordchange', '������', '������', 'passwordchange', '������');
INSERT INTO cmn_lang_tb VALUES ('agentsetting', '��������', '��������', 'agentsetting', '��������');
INSERT INTO cmn_lang_tb VALUES ('switchtask', '��֧����', '��֧����', 'switchtask', '��֧����');
INSERT INTO cmn_lang_tb VALUES ('switch', '��֧', '��֧', 'switch', '��֧');
INSERT INTO cmn_lang_tb VALUES ('modualmanagement', 'ģ�����', 'ģ�����', 'modualmanagement', 'ģ�����');
INSERT INTO cmn_lang_tb VALUES ('orgmanagement', '��������', '��������', 'orgmanagement', '��������');
INSERT INTO cmn_lang_tb VALUES ('orgleader', '��������', '��������', 'orgleader', '��������');
INSERT INTO cmn_lang_tb VALUES ('rolemanagement', '��ɫ����', '��ɫ����', 'rolemanagement', '��ɫ����');
INSERT INTO cmn_lang_tb VALUES ('usergroupmanagement', '�û������', '�û������', 'usergroupmanagement', '�û������');
INSERT INTO cmn_lang_tb VALUES ('Langname', '��������', '��������', 'Langname', '��������');
INSERT INTO cmn_lang_tb VALUES ('user', '�û�', '�û�', 'user', '�û�');
INSERT INTO cmn_lang_tb VALUES ('langsearch', '�����Լ���', 'langsearch', 'langsearch', 'langsearch');
INSERT INTO cmn_lang_tb VALUES ('Copy', '����', '����', 'Copy', '����');
INSERT INTO cmn_lang_tb VALUES ('designelmentstitle', '��ƻ���Ԫ��', '��ƻ���Ԫ��', 'designelmentstitle', '��ƻ���Ԫ��');
INSERT INTO cmn_lang_tb VALUES ('designcomponent', '������', '������', 'design component', '������');
INSERT INTO cmn_lang_tb VALUES ('preview', 'Ԥ��', 'Ԥ��', 'preview', 'Ԥ��');
INSERT INTO cmn_lang_tb VALUES ('paylisttitle', '֧����ϸ�б�', '֧����ϸ�б�', 'paylisttitle', '֧����ϸ�б�');
INSERT INTO cmn_lang_tb VALUES ('donetrace', '�Ѱ����', '�Ѱ����', 'donetrace', '�Ѱ����');
INSERT INTO cmn_lang_tb VALUES ('todotrace', '�������', '�������', 'todotrace', '�������');
INSERT INTO cmn_lang_tb VALUES ('print', '��ӡ', '��ӡ', 'print', '��ӡ');
INSERT INTO cmn_lang_tb VALUES ('Opinion', '�������', '�������', 'Opinion', '�������');
INSERT INTO cmn_lang_tb VALUES ('Now', '��ǰʱ��', '��ǰʱ��', 'Now', '��ǰʱ��');
INSERT INTO cmn_lang_tb VALUES ('meetingroomtitle', '�����ҹ���', '�����ҹ���', 'meetingroomtitle', '�����ҹ���');
INSERT INTO cmn_lang_tb VALUES ('Roomid', '�����ұ��', '�����ұ��', 'Roomid', '�����ұ��');
INSERT INTO cmn_lang_tb VALUES ('Roomname', '����������', '����������', 'Roomname', '����������');
INSERT INTO cmn_lang_tb VALUES ('Layer', '����¥��', '����¥��', 'Layer', '����¥��');
INSERT INTO cmn_lang_tb VALUES ('Persons', '��������', '��������', 'Persons', '��������');
INSERT INTO cmn_lang_tb VALUES ('Isvalid', '�Ƿ����', '�Ƿ����', 'Isvalid', '�Ƿ����');
INSERT INTO cmn_lang_tb VALUES ('Equipment', '�豸', '�豸', 'Equipment', '�豸');
INSERT INTO cmn_lang_tb VALUES ('Schedule', '�ܷ�ԤԼ', '�ܷ�ԤԼ', 'Schedule', '�ܷ�ԤԼ');
INSERT INTO cmn_lang_tb VALUES ('supplytypetitle', '��Ʒ���͹���', '��Ʒ���͹���', 'supplytypetitle', '��Ʒ���͹���');
INSERT INTO cmn_lang_tb VALUES ('Mtcode', '��Ʒ���ͱ��', '��Ʒ���ͱ��', 'Mtcode', '��Ʒ���ͱ��');
INSERT INTO cmn_lang_tb VALUES ('Mtname', '��Ʒ��������', '��Ʒ��������', 'Mtname', '��Ʒ��������');
INSERT INTO cmn_lang_tb VALUES ('equipmenttitle', '�������豸����', '�������豸����', 'equipmenttitle', '�������豸����');
INSERT INTO cmn_lang_tb VALUES ('Equipmentcode', '�豸���', '�豸���', 'Equipmentcode', '�豸���');
INSERT INTO cmn_lang_tb VALUES ('Equipmentname', '�豸����', '�豸����', 'Equipmentname', '�豸����');
INSERT INTO cmn_lang_tb VALUES ('unittitle', '��λ����', '��λ����', 'unittitle', '��λ����');
INSERT INTO cmn_lang_tb VALUES ('Unitcode', '��λ���', '��λ���', 'Unitcode', '��λ���');
INSERT INTO cmn_lang_tb VALUES ('Unitname', '��λ����', '��λ����', 'Unitname', '��λ����');
INSERT INTO cmn_lang_tb VALUES ('meetingroomapplyformtitle', '����������', '����������', 'meetingroomapplyformtitle', '����������');
INSERT INTO cmn_lang_tb VALUES ('Meetingtopic', '��������', '��������', 'Meetingtopic', '��������');
INSERT INTO cmn_lang_tb VALUES ('Meetingdate', '��������', '��������', 'Meetingdate', '��������');
INSERT INTO cmn_lang_tb VALUES ('Meetingstarttime', '���鿪ʼʱ��', '���鿪ʼʱ��', 'Meetingstarttime', '���鿪ʼʱ��');
INSERT INTO cmn_lang_tb VALUES ('Meetingendtime', '�������ʱ��', '�������ʱ��', 'Meetingendtime', '�������ʱ��');
INSERT INTO cmn_lang_tb VALUES ('Meetingroom', '������', '������', 'Meetingroom', '������');
INSERT INTO cmn_lang_tb VALUES ('Meetingpersons', '�λ���Ա', '�λ���Ա', 'Meetingpersons', '�λ���Ա');
INSERT INTO cmn_lang_tb VALUES ('Notice', '�Ƿ�����', '�Ƿ�����', 'Notice', '�Ƿ�����');
INSERT INTO cmn_lang_tb VALUES ('Meetingcontent', '��������', '��������', 'Meetingcontent', '��������');

insert into sequence(seqname,currentValue,increment) values('fiid_sequence',201800001,1);
insert into sequence(seqname,currentValue,increment) values('tiid_sequence',1,1);

INSERT INTO cmn_org_tb VALUES (1, '�ۺ����', 0, '', 1, '', '');
INSERT INTO cmn_org_tb VALUES (11, '�ۺ󱾲�', 1, '', 2, '', '');
INSERT INTO cmn_org_tb VALUES (11101, '�ۺ󲿴���', 111, '', 4, '', '');
INSERT INTO cmn_org_tb VALUES (11111, '�ۺ�δ���', 1111, '', 6, '', '');
INSERT INTO cmn_org_tb VALUES (111, '�ۺ�', 11, '', 3, '', '');
INSERT INTO cmn_org_tb VALUES (1111, '�ۺ��', 11101, '', 5, '', '');
INSERT INTO cmn_org_tb VALUES (0, '***��˾', 'root', '', 0, '', '');
INSERT INTO cmn_org_tb VALUES (11112, '����δ���', 1112, '', 6, '', '');
INSERT INTO cmn_org_tb VALUES (1112, '�����', 11101, '', 5, '', '');



CREATE TABLE dev_component_tb (
    componentname varchar(255) NOT NULL ,
    parentid varchar(255) NOT NULL DEFAULT '' ,
    title varchar(255) NOT NULL DEFAULT '' ,
    buttons varchar(255),
    style varchar(255),
    gutter varchar(255),
    colcount varchar(255), 
    componentlevel varchar(255), 
    godirectory varchar(255), 
    ngdirectory varchar(255),
  PRIMARY KEY (componentname));

-- ----------------------------
-- Records of dev_component_tb
-- ----------------------------
INSERT INTO  dev_component_tb VALUES ('root', -1, '***��Ŀ', '', '', '', '', 0, 'D:\goproject\src\skl-api', 'D:\angular\skl');

INSERT INTO skl_enum_tb VALUES ('orgtype', '��������');
INSERT INTO skl_enum_tb VALUES ('usertype', '�û�����');
INSERT INTO skl_enum_tb VALUES ('employeetype', 'ְԱ����');
INSERT INTO skl_enum_tb VALUES ('degree', 'ѧ������');
INSERT INTO skl_enum_tb VALUES ('post', 'ְλ����');
INSERT INTO skl_enumitem_tb(enumcode,value,label) VALUES ('orgtype', 1, '��˾');
INSERT INTO skl_enumitem_tb(enumcode,value,label) VALUES ('orgtype', 2, '����');
INSERT INTO skl_enumitem_tb(enumcode,value,label) VALUES ('usertype', 1, '�����û�');
INSERT INTO skl_enumitem_tb(enumcode,value,label) VALUES ('usertype', 2, '��ͨ�û�');
INSERT INTO skl_enumitem_tb(enumcode,value,label) VALUES ('usertype', 3, 'ϵͳ����Ա');
INSERT INTO skl_enumitem_tb(enumcode,value,label) VALUES ('employeetype', 1, '����Ա��');
INSERT INTO skl_enumitem_tb(enumcode,value,label) VALUES ('employeetype', 2, '�ⲺԱ��');
INSERT INTO skl_enumitem_tb(enumcode,value,label) VALUES ('employeetype', 3, 'Э����˾');
INSERT INTO skl_enumitem_tb(enumcode,value,label) VALUES ('degree', 10, '��ʿ��');
INSERT INTO skl_enumitem_tb(enumcode,value,label) VALUES ('degree', 20, '��ʿ');
INSERT INTO skl_enumitem_tb(enumcode,value,label) VALUES ('degree', 30, '˶ʿ');
INSERT INTO skl_enumitem_tb(enumcode,value,label) VALUES ('degree', 40, 'ѧʿ');
INSERT INTO skl_enumitem_tb(enumcode,value,label) VALUES ('degree', 50, '��ר');
INSERT INTO skl_enumitem_tb(enumcode,value,label) VALUES ('degree', 60, '����');
INSERT INTO skl_enumitem_tb(enumcode,value,label) VALUES ('post', 1, '�ܾ���');
INSERT INTO skl_enumitem_tb(enumcode,value,label) VALUES ('post', 2, '���ܾ���');
INSERT INTO skl_enumitem_tb(enumcode,value,label) VALUES ('post', 3, '������');
INSERT INTO skl_enumitem_tb(enumcode,value,label) VALUES ('post', 4, '����');
INSERT INTO skl_enumitem_tb(enumcode,value,label) VALUES ('post', 5, '������');
INSERT INTO skl_enumitem_tb(enumcode,value,label) VALUES ('post', 6, '������');
INSERT INTO skl_enumitem_tb(enumcode,value,label) VALUES ('post', 7, '�γ�');
INSERT INTO skl_enumitem_tb(enumcode,value,label) VALUES ('post', 8, '����');
INSERT INTO skl_enumitem_tb(enumcode,value,label) VALUES ('post', 9, '����γ�');
INSERT INTO skl_enumitem_tb(enumcode,value,label) VALUES ('post', 10, '���γ�');
INSERT INTO skl_enumitem_tb(enumcode,value,label) VALUES ('post', 11, '�ܹ�');
INSERT INTO skl_enumitem_tb(enumcode,value,label) VALUES ('post', 12, 'һ��Ա��');

INSERT INTO fi_template_tb VALUES ('expense', '���ñ���', '���ñ���', 'flowinstid', 'flowstatus');
INSERT INTO fi_templateitem_tb(flowtemplateid,vary,varyname,varytype,varyvalue) VALUES ('expense', 'money', '���', 2, '');
INSERT INTO fi_templateitem_tb(flowtemplateid,vary,varyname,varytype,varyvalue) VALUES ('expense', 'orglevel', '��������', 2, '');
INSERT INTO fi_templateitem_tb(flowtemplateid,vary,varyname,varytype,varyvalue) VALUES ('expense', 'vicemanagertype', '�������', 2, '');