SELECT insurdiff 
FROM   ccfa 
WHERE  ibdpatient LIKE "yes" 
       AND country LIKE "%usa%" 
       AND insurdiff LIKE "%not%" 

SELECT insurdiff 
FROM   ccfa 
WHERE  insurdiff NOT LIKE "" 

SELECT * 
FROM   ccfa 
WHERE  insurafford LIKE "%diff%" 
       AND ibdpatient LIKE "yes" 
       AND country LIKE "%usa%" 

SELECT * 
FROM   ccfa 
WHERE  country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 

SELECT insurexclude 
FROM   ccfa 
WHERE  insurexclude LIKE "yes" 
       AND country LIKE "%usa%" 
       AND ibdpatient LIKE "yes" 

SELECT * 
FROM   ccfa 
WHERE  insurdiff LIKE "%diff%" 
       AND buyinsur LIKE "yes" 
       AND country LIKE "%usa%" 
       AND ibdpatient LIKE "yes" 

SELECT * 
FROM   ccfa 
WHERE  insurafford LIKE "%diff%" 
       AND ibdpatient LIKE "yes" 
       AND country LIKE "%usa%" 

SELECT * 
FROM   ccfa 
WHERE  insurdeny LIKE "%yes%" 
       AND ibdpatient LIKE "yes" 
       AND country LIKE "%usa%" 

SELECT * 
FROM   ccfa 
WHERE  insurdeny LIKE "%yes%" 
       AND ibdpatient LIKE "yes" 
       AND country LIKE "%usa%" 
SELECT * 
FROM   ccfa 
WHERE  delayhealthcare LIKE '%yes%' 
       AND ibdpatient LIKE "yes" 
       AND flare12 LIKE "yes" 
       AND state NOT LIKE "n/a" 
       AND ( lat NOT LIKE "38" 
             AND lon NOT LIKE "-97" ) 
       AND country LIKE "%usa%" 

SELECT * 
FROM   ccfa 
WHERE  delayhealthcare LIKE '%yes%' 
       AND ibdpatient LIKE "yes" 
       AND state NOT LIKE "n/a" 
       AND ( lat NOT LIKE "38" 
             AND lon NOT LIKE "-97" ) 
       AND country LIKE "%usa%" 

SELECT * 
FROM   ccfa 
WHERE  flare12 LIKE '%yes%' 
       AND ibdpatient LIKE "yes" 
       AND state NOT LIKE "n/a" 
       AND ( lat NOT LIKE "38" 
             AND lon NOT LIKE "-97" ) 
       AND country LIKE "%usa%" 

SELECT * 
FROM   ccfa 
WHERE  secondaryinsur LIKE "yes" 
       AND secadequate LIKE "%primary insurance%" 
       AND ibdpatient LIKE "yes" 
       AND country LIKE "%usa%" 


/*table 1*/
/*males that have IBD VERIFIED*/

SELECT ibddiag 
FROM   ccfa 
WHERE  sex LIKE "male" 
       AND country LIKE "%united states%" 

/*males that have UC*/ 

SELECT ibddiag 
FROM   ccfa 
WHERE  sex LIKE "male" 
       AND country LIKE "%united states%" 
       AND ibddiag LIKE "%ulcerative%" 
       AND ibddiag NOT LIKE ""; 

/*Males that have CD*/ 

SELECT ibddiag 
FROM   ccfa 
WHERE  sex LIKE "male" 
       AND country LIKE "%united states%" 
       AND ibddiag LIKE "%crohn%" 
       AND ibddiag NOT LIKE ""; 

/*Males ind*/ 

SELECT ibddiag 
FROM   ccfa 
WHERE  sex LIKE "male" 
       AND country LIKE "%united states%" 
       AND ibddiag LIKE "%ind%" 
       AND ibddiag NOT LIKE ""; 

/*Males don't know*/ 

SELECT ibddiag 
FROM   ccfa 
WHERE  sex LIKE "male" 
       AND country LIKE "%united states%" 
       AND ibddiag LIKE "%know%" 
       AND ibddiag NOT LIKE ""; 

/*Males Unknown*/ 

SELECT ibddiag 
FROM   ccfa 
WHERE  sex LIKE "male" 
       AND country LIKE "%united states%" 
       AND ibddiag LIKE ""; 

/*females that have IBD VERIFIED*/ 

SELECT ibddiag 
FROM   ccfa 
WHERE  sex LIKE "female" 
       AND country LIKE "%united states%" 

/*females that have UC*/ 

SELECT ibddiag 
FROM   ccfa 
WHERE  sex LIKE "female" 
       AND country LIKE "%united states%" 
       AND ibddiag LIKE "%ulcerative%" 
       AND ibddiag NOT LIKE ""; 

/*females that have CD*/ 

SELECT ibddiag 
FROM   ccfa 
WHERE  sex LIKE "female" 
       AND country LIKE "%united states%" 
       AND ibddiag LIKE "%crohn%" 
       AND ibddiag NOT LIKE ""; 

/*females ind*/ 

SELECT ibddiag 
FROM   ccfa 
WHERE  sex LIKE "female" 
       AND country LIKE "%united states%" 
       AND ibddiag LIKE "%ind%" 
       AND ibddiag NOT LIKE ""; 

/*females don't know*/ 

SELECT ibddiag 
FROM   ccfa 
WHERE  sex LIKE "female" 
       AND country LIKE "%united states%" 
       AND ibddiag LIKE "%know%" 
       AND ibddiag NOT LIKE ""; 

/*females Unknown*/ 

SELECT ibddiag 
FROM   ccfa 
WHERE  sex LIKE "female" 
       AND country LIKE "%united states%" 
       AND ibddiag LIKE ""; 

/*unknown that have IBD CORRECT IN PAPER*/ 
 
SELECT * 
FROM   ccfa 
WHERE  sex LIKE "" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 

/*unknown that have UC*/ 

SELECT ibddiag 
FROM   ccfa 
WHERE  sex LIKE "" 
       AND country LIKE "%united states%" 
       AND ibddiag LIKE "%ulcerative%" 
       AND ibddiag NOT LIKE "" 
       AND ibdpatient LIKE "yes"; 

/*unknown that have CD*/ 

SELECT ibddiag 
FROM   ccfa 
WHERE  sex LIKE "" 
       AND country LIKE "%united states%" 
       AND ibddiag LIKE "%crohn%" 
       AND ibddiag NOT LIKE "" 
       AND ibdpatient LIKE "yes"; 

/*unknown ind*/ 

SELECT ibddiag 
FROM   ccfa 
WHERE  sex LIKE "" 
       AND country LIKE "%united states%" 
       AND ibddiag LIKE "%ind%" 
       AND ibddiag NOT LIKE "" 
       AND ibdpatient LIKE "yes"; 

/*unknown don't know*/ 
 
SELECT ibddiag 
FROM   ccfa 
WHERE  sex LIKE "" 
       AND country LIKE "%united states%" 
       AND ibddiag LIKE "%know%" 
       AND ibddiag NOT LIKE "" 
       AND ibdpatient LIKE "yes"; 

/*unknown Unknown*/ 

SELECT DISTINCT * 
FROM   ccfa 
WHERE  sex LIKE "" 
       AND country LIKE "%(usa)%" 
       AND ibddiag LIKE "" 
       AND ibdpatient LIKE "yes" 

SELECT * 
FROM   ccfa 
WHERE  ibddiag LIKE "%crohn%" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 

SELECT * 
FROM   ccfa 
WHERE  ibddiag LIKE "%ulcerative%" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 

/*Table 2 VERIFIED*/

/*total number of responses for duration of disease*/ 
SELECT ibddur 
FROM   ccfa 
WHERE  country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND ibddur NOT LIKE "" 
       AND ibdpatient LIKE "yes" 

/*0-1 years*/ 

SELECT ibddur 
FROM   ccfa 
WHERE  country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND ibddur LIKE "%0-1%" 
       AND ibdpatient LIKE "yes" 

/*2-5 years*/ 

SELECT ibddur 
FROM   ccfa 
WHERE  country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND ibddur LIKE "%2-5%" 
       AND ibdpatient LIKE "yes" 

/*6-10 years*/ 

SELECT ibddur 
FROM   ccfa 
WHERE  country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND ibddur LIKE "%6-10%" 
       AND ibdpatient LIKE "yes" 

/*11-15 years*/ 

SELECT ibddur 
FROM   ccfa 
WHERE  country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND ibddur LIKE "%11-15%" 
       AND ibdpatient LIKE "yes" 

/*15+ years*/ 

SELECT ibddur 
FROM   ccfa 
WHERE  country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND ibddur LIKE "%15 +%" 
       AND ibdpatient LIKE "yes" 

/*Table 3*/

/*Total response*/ 

SELECT employment 
FROM   ccfa 
WHERE  country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND employment NOT LIKE "" 
       AND ibdpatient LIKE "yes" 

/*working for pay*/ 

SELECT employment 
FROM   ccfa 
WHERE  country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND employment LIKE "%working for pay%" 
       AND ibdpatient LIKE "yes" 

/*looking for work*/ 

SELECT employment 
FROM   ccfa 
WHERE  country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND employment LIKE "looking for work" 
       AND ibdpatient LIKE "yes" 

/*working but not for pay*/ 

SELECT employment 
FROM   ccfa 
WHERE  country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND employment LIKE "%not for pay%" 
       AND ibdpatient LIKE "yes" 

/*not working at a job*/ 

SELECT employment 
FROM   ccfa 
WHERE  country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND employment LIKE "%not working at a job%" 
       AND ibdpatient LIKE "yes" 

/*unemployed*/ 

SELECT employment 
FROM   ccfa 
WHERE  country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND employment LIKE "%unemployed%" 
       AND ibdpatient LIKE "yes" 

/*never employed outside the home*/ 

SELECT employment 
FROM   ccfa 
WHERE  country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND employment LIKE "%never employed outside%" 
       AND ibdpatient LIKE "yes" 

/*total employed but not currently working*/ 

SELECT employment 
FROM   ccfa 
WHERE  country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND employment LIKE "%employed but not currently working%" 
       AND ibdpatient LIKE "yes" 

/*taking care of house or family*/ 

SELECT employment 
FROM   ccfa 
WHERE  country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND employment LIKE "%employed but not currently working%" 
       AND employreason LIKE "%taking care of%" 
       AND ibdpatient LIKE "yes" 

/*going to school*/ 

SELECT employment 
FROM   ccfa 
WHERE  country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND employment LIKE "%employed but not currently working%" 
       AND employreason LIKE "%going to school%" 
       AND ibdpatient LIKE "yes" 

/*retired*/ 

SELECT employment 
FROM   ccfa 
WHERE  country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND employment LIKE "%employed but not currently working%" 
       AND employreason LIKE "%retired%" 
       AND ibdpatient LIKE "yes" 

/*on planned vacation*/ 

SELECT employment 
FROM   ccfa 
WHERE  country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND employment LIKE "%employed but not currently working%" 
       AND employreason LIKE "%on a planned vacation%" 
       AND ibdpatient LIKE "yes" 

/*maternity leave*/ 

SELECT employment 
FROM   ccfa 
WHERE  country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND employment LIKE "%employed but not currently working%" 
       AND employreason LIKE "%on family or maternity%" 
       AND ibdpatient LIKE "yes" 

/*unable to work due to health*/ 

SELECT employment 
FROM   ccfa 
WHERE  country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND employment LIKE "%employed but not currently working%" 
       AND employreason LIKE "%temporarily unable to work%" 
       AND ibdpatient LIKE "yes" 

/*have job, contract*/ 

SELECT employment 
FROM   ccfa 
WHERE  country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND employment LIKE "%employed but not currently working%" 
       AND employreason LIKE "%have job/contract%" 
       AND ibdpatient LIKE "yes" 

/*layoff*/ 

SELECT employment 
FROM   ccfa 
WHERE  country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND employment LIKE "%employed but not currently working%" 
       AND employreason LIKE "%on layoff%" 
       AND ibdpatient LIKE "yes" 

/*disabled*/ 

SELECT employment 
FROM   ccfa 
WHERE  country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND employment LIKE "%employed but not currently working%" 
       AND employreason LIKE "%disabled%" 
       AND ibdpatient LIKE "yes" 


/*table 4*/

/*Total patients with PCP*/ 
SELECT pcp 
FROM   ccfa 
WHERE  pcp LIKE "yes" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 

/*intern as pcp*/ 
SELECT * 
FROM   ccfa 
WHERE  pcpdefined LIKE "%general%" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND pcp LIKE "yes" 

/*gastro as pcp*/ 
SELECT * 
FROM   ccfa 
WHERE  pcpdefined LIKE "%gastro%" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND pcp LIKE "yes" 

/*gyn as pcp*/ 
SELECT pcp 
FROM   ccfa 
WHERE  pcpdefined LIKE "%gyn%" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND pcp LIKE "yes" 

/*family practitioner as pcp*/  
SELECT pcp 
FROM   ccfa 
WHERE  pcpdefined LIKE "%family%" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND pcp LIKE "yes" 

/*APN as PCP*/ 
SELECT pcp 
FROM   ccfa 
WHERE  pcpdefined LIKE "%nurse%" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND pcp LIKE "yes" 

/*unknown*/ 
SELECT pcp 
FROM   ccfa 
WHERE  pcpdefined LIKE "" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND pcp LIKE "yes" 
       AND pcp LIKE "yes" 
       
/*Total patients without PCP*/ 
/*result: 243*/ 
SELECT pcp 
FROM   ccfa 
WHERE  pcp LIKE "no" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND generalhcp NOT LIKE "" 
       AND pcp LIKE "no" 

/*patients that use clinic or health center*/ 
SELECT pcp 
FROM   ccfa 
WHERE  pcp LIKE "no" 
       AND country LIKE "%(usa)%" 
       AND generalhcp LIKE "%clinic or health center%" 
       AND ibdpatient LIKE "yes" 
       AND pcp LIKE "no" 

/*patients that use emergency room*/ 
SELECT pcp 
FROM   ccfa 
WHERE  pcp LIKE "no" 
       AND country LIKE "%(usa)%" 
       AND generalhcp LIKE "%emergency%" 
       AND ibdpatient LIKE "yes" 
       AND pcp LIKE "no" 

/*no general care*/ 
SELECT pcp 
FROM   ccfa 
WHERE  pcp LIKE "no" 
       AND country LIKE "%(usa)%" 
       AND generalhcp LIKE "%general%" 
       AND ibdpatient LIKE "yes" 
       AND pcp LIKE "no" 

/*other*/ 
SELECT pcp 
FROM   ccfa 
WHERE  pcp LIKE "no" 
       AND country LIKE "%(usa)%" 
       AND generalhcp LIKE "%other%" 
       AND ibdpatient LIKE "yes" 
       AND pcp LIKE "no" 


/*Table 5*/ 
SELECT dontneed, 
       dontlike, 
       dontknowwhere, 
       moved, 
       tooexpensive, 
       noneavailable, 
       toofar, 
       putitoff, 
       donthaveother 
FROM   ccfa 
WHERE  pcp LIKE "no" 
       AND ( dontneed NOT LIKE "" 
              OR dontlike NOT LIKE "" 
              OR dontknowwhere NOT LIKE "" 
              OR moved NOT LIKE "" 
              OR tooexpensive NOT LIKE "" 
              OR noneavailable NOT LIKE "" 
              OR toofar NOT LIKE "" 
              OR putitoff NOT LIKE "" 
              OR donthaveother NOT LIKE "" ) 

/*Dont need a doctor*/ 
SELECT * 
FROM   ccfa 
WHERE  dontneed NOT LIKE "" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 

/*Dont like doctors*/ 
SELECT * 
FROM   ccfa 
WHERE  dontlike NOT LIKE "" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 

/*Dont know where to go*/ 
SELECT * 
FROM   ccfa 
WHERE  dontknowwhere NOT LIKE "" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 

/*Doctor Moved*/ 
SELECT * 
FROM   ccfa 
WHERE  moved NOT LIKE "" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 

/*Too expensive*/ 
SELECT * 
FROM   ccfa 
WHERE  tooexpensive NOT LIKE "" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 

/*No care available*/ 
SELECT * 
FROM   ccfa 
WHERE  noneavailable NOT LIKE "" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 

/*Care too far*/ 
SELECT * 
FROM   ccfa 
WHERE  toofar NOT LIKE "" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 

/*put it off*/ 
SELECT * 
FROM   ccfa 
WHERE  putitoff NOT LIKE "" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 

/*Dont have general care for other reason*/ 
SELECT * 
FROM   ccfa 
WHERE  donthaveother NOT LIKE "" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 



/*TABLE 6*/ 
/*CORRECT*/ 
SELECT * 
FROM   ccfa 
WHERE  worrymedical LIKE "%very%" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 

SELECT * 
FROM   ccfa 
WHERE  worrymedical LIKE "%very%" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND healthcompare LIKE "%better%" 

/*CORRECT*/ 
SELECT * 
FROM   ccfa 
WHERE  worrymedical LIKE "%very%" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND healthcompare LIKE "%worse%" 

/*CORRECT*/ 
SELECT * 
FROM   ccfa 
WHERE  worrymedical LIKE "%very%" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND healthcompare LIKE "%about%" 

SELECT * 
FROM   ccfa 
WHERE  worrymedical LIKE "%very%" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND healthcompare LIKE "%know%" 

SELECT * 
FROM   ccfa 
WHERE  worrymedical LIKE "%very%" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND healthcompare LIKE "%insurance%" 

SELECT * 
FROM   ccfa 
WHERE  worrymedical LIKE "%somewhat%" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 

SELECT * 
FROM   ccfa 
WHERE  worrymedical LIKE "%very%" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 

SELECT * 
FROM   ccfa 
WHERE  worrymedical LIKE "%somewhat%" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 

SELECT * 
FROM   ccfa 
WHERE  worrymedical LIKE "%not worried%" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 

SELECT * 
FROM   ccfa 
WHERE  worrymedical LIKE "%not worried%" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 

SELECT * 
FROM   ccfa 
WHERE  worrymedical LIKE "%not worried%" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND healthcompare LIKE "%better%" 

SELECT * 
FROM   ccfa 
WHERE  worrymedical LIKE "%not worried%" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND healthcompare LIKE "%worse%" 

SELECT * 
FROM   ccfa 
WHERE  worrymedical LIKE "%not worried%" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND healthcompare LIKE "%about%" 

SELECT * 
FROM   ccfa 
WHERE  worrymedical LIKE "%not worried%" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND healthcompare LIKE "%know%" 

SELECT * 
FROM   ccfa 
WHERE  worrymedical LIKE "%not worried%" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND healthcompare LIKE "%insurance%" 

SELECT * 
FROM   ccfa 
WHERE  worrymedical LIKE "" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND healthcompare LIKE "%insurance%" 

/*Table 7*/ 
/*Never delayed healthcare*/ 
SELECT * 
FROM   ccfa 
WHERE  delayhealthcare LIKE "no" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 

/*Delayed healthcare*/ 
SELECT * 
FROM   ccfa 
WHERE  delayhealthcare LIKE "yes" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 

/*unable to get through on phone*/ 
SELECT * 
FROM   ccfa 
WHERE  delayhealthcare LIKE "yes" 
       AND delaytele NOT LIKE "" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 

/*Unable to get an appointment soon enough*/ 
SELECT * 
FROM   ccfa 
WHERE  delayhealthcare LIKE "yes" 
       AND delayunablesoon NOT LIKE "" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 

/*Not enough time*/ 
SELECT * 
FROM   ccfa 
WHERE  delayhealthcare LIKE "yes" 
       AND delayscheduling NOT LIKE "" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 

/*Waited too long*/ 
SELECT * 
FROM   ccfa 
WHERE  delayhealthcare LIKE "yes" 
       AND delaywaitlong NOT LIKE "" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 

/*clinic wasnt open*/ 
SELECT * 
FROM   ccfa 
WHERE  delayhealthcare LIKE "yes" 
       AND delaywasntopen NOT LIKE "" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 

/*Transportation wasn't avalilable*/ 
SELECT * 
FROM   ccfa 
WHERE  delayhealthcare LIKE "yes" 
       AND delaynotransport NOT LIKE "" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 

/*cost*/ 
SELECT * 
FROM   ccfa 
WHERE  delayhealthcare LIKE "yes" 
       AND delaycost NOT LIKE "" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 


/*total answers per insurance group: about the same*/ 
SELECT * 
FROM   ccfa 
WHERE  healthcompare LIKE "%about%" 
       AND ( couldntgetprescript NOT LIKE "" 
              OR couldntgetmental NOT LIKE "" 
              OR couldntgetdental NOT LIKE "" 
              OR couldntgeteye NOT LIKE "" 
              OR couldntgetspecial NOT LIKE "" 
              OR couldntgetfollow NOT LIKE "" 
              OR couldntgetsurgery NOT LIKE "" ) 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 

/*total answers per insurance group: better*/ 
SELECT * 
FROM   ccfa 
WHERE  healthcompare LIKE "%better%" 
       AND ( couldntgetprescript NOT LIKE "" 
              OR couldntgetmental NOT LIKE "" 
              OR couldntgetdental NOT LIKE "" 
              OR couldntgeteye NOT LIKE "" 
              OR couldntgetspecial NOT LIKE "" 
              OR couldntgetfollow NOT LIKE "" 
              OR couldntgetsurgery NOT LIKE "" ) 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 

/*total answers per insurance group: worse*/ 
SELECT * 
FROM   ccfa 
WHERE  healthcompare LIKE "%worse%" 
       AND ( couldntgetprescript NOT LIKE "" 
              OR couldntgetmental NOT LIKE "" 
              OR couldntgetdental NOT LIKE "" 
              OR couldntgeteye NOT LIKE "" 
              OR couldntgetspecial NOT LIKE "" 
              OR couldntgetfollow NOT LIKE "" 
              OR couldntgetsurgery NOT LIKE "" ) 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 

/*total answers per insurance group: dont know*/ 
SELECT * 
FROM   ccfa 
WHERE  healthcompare LIKE "%know%" 
       AND ( couldntgetprescript NOT LIKE "" 
              OR couldntgetmental NOT LIKE "" 
              OR couldntgetdental NOT LIKE "" 
              OR couldntgeteye NOT LIKE "" 
              OR couldntgetspecial NOT LIKE "" 
              OR couldntgetfollow NOT LIKE "" 
              OR couldntgetsurgery NOT LIKE "" ) 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 

/*total answers per insurance group: dont have insurance*/
SELECT * 
FROM   ccfa 
WHERE  healthcompare LIKE "%insurance%" 
       AND ( couldntgetprescript NOT LIKE "" 
              OR couldntgetmental NOT LIKE "" 
              OR couldntgetdental NOT LIKE "" 
              OR couldntgeteye NOT LIKE "" 
              OR couldntgetspecial NOT LIKE "" 
              OR couldntgetfollow NOT LIKE "" 
              OR couldntgetsurgery NOT LIKE "" ) 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 

/*about the same skipped*/
SELECT * 
FROM   ccfa 
WHERE  healthcompare LIKE "%worse%" 
       AND ( couldntgetprescript LIKE "" 
             AND couldntgetmental LIKE "" 
             AND couldntgetdental LIKE "" 
             AND couldntgeteye LIKE "" 
             AND couldntgetspecial LIKE "" 
             AND couldntgetfollow LIKE "" 
             AND couldntgetsurgery LIKE "" ) 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
/*precriiption total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetprescript NOT LIKE "" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND healthcompare NOT LIKE "" 

/*mental health total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetmental NOT LIKE "" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND healthcompare NOT LIKE "" 

/*dental total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetdental NOT LIKE "" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND healthcompare NOT LIKE "" 

/*Eye total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgeteye NOT LIKE "" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND healthcompare NOT LIKE "" 

/*Specialist total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetspecial NOT LIKE "" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND healthcompare NOT LIKE "" 

/*Followup total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetfollow NOT LIKE "" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND healthcompare NOT LIKE "" 

/*Surgery total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetsurgery NOT LIKE "" 
       AND country LIKE "%(usa)%" 
       AND ibdpatient LIKE "yes" 
       AND healthcompare NOT LIKE "" 

/*about the same VS : ...*/ 
/*precriiption total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetprescript NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%about%" 
/*mental health total*/ 
select * 
FROM   ccfa 
WHERE  couldntgetmental NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%about%" 
/*dental total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetdental NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%about%" 
/*Eye total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgeteye NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%about%" 
/*Specialist total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetspecial NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%about%" 
/*Followup total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetfollow NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%about%" 
/*Surgery total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetsurgery NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%about%" 
/*Better VS : ...*/ 
/*precription total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetprescript NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%better%" 
/*mental health total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetmental NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%better%" 
/*dental total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetdental NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%better%" 
/*Eye total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgeteye NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%better%" 
/*Specialist total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetspecial NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%better%" 
/*Followup total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetfollow NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%better%" 
/*Surgery total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetsurgery NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%better%" 
/*dont have VS : ...*/ 
/*precriiption total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetprescript NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%insurance%" 
/*mental health total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetmental NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%insurance%" 
/*dental total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetdental NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%insurance%" 
/*Eye total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgeteye NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%insurance%" 
/*Specialist total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetspecial NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%insurance%" 
/*Followup total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetfollow NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%insurance%" 
/*Surgery total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetsurgery NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%insurance%" 
/*worse VS : ...*/ 
/*precriiption total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetprescript NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%worse%" 
/*mental health total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetmental NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%worse%" 
/*dental total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetdental NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%worse%" 
/*Eye total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgeteye NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%worse%" 
/*Specialist total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetspecial NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%worse%" 
/*Followup total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetfollow NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%worse%" 
/*Surgery total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetsurgery NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%worse%" 
/*dont know VS : ...*/ 
/*precriiption total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetprescript NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%know%" 
/*mental health total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetmental NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%know%" 
/*dental total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetdental NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%know%" 
/*Eye total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgeteye NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%know%" 
/*Specialist total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetspecial NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%know%" 
/*Followup total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetfollow NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%know%" 
/*Surgery total*/ 
SELECT * 
FROM   ccfa 
WHERE  couldntgetsurgery NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    healthcompare LIKE "%know%" 
/*insurance difficulty totals*/ 
SELECT insurdiff 
FROM   ccfa 
WHERE  country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    insurdiff NOT LIKE "" 
/*indurance difficulty very difficult*/ 
SELECT insurdiff 
FROM   ccfa 
WHERE  country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    insurdiff LIKE "%very diff%" 
AND    insurdiff NOT LIKE "" 
/*insurance difficulty somewhat difficult*/ 
SELECT insurdiff 
FROM   ccfa 
WHERE  country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    insurdiff LIKE "%somewhat%" 
AND    insurdiff NOT LIKE "" 
/*insurance difficulty do not remember*/ 
SELECT insurdiff 
FROM   ccfa 
WHERE  country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    insurdiff LIKE "%remember%" 
AND    insurdiff NOT LIKE "" 
/*insurance difficulty not at all*/ 
SELECT insurdiff 
FROM   ccfa 
WHERE  country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
AND    insurdiff LIKE "%Not at all%" 
AND    insurdiff NOT LIKE "" 
/*individuals that couldnt get services> do they have insurance?*/ 
SELECT * 
FROM   ccfa 
WHERE  insurancetype NOT LIKE "" 
AND    insurancetype NOT LIKE "no insurance" 
AND    couldntgetprescript NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
SELECT * 
FROM   ccfa 
WHERE  insurancetype NOT LIKE "" 
AND    insurancetype NOT LIKE "no insurance" 
AND    couldntgetdental NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
SELECT * 
FROM   ccfa 
WHERE  insurancetype NOT LIKE "" 
AND    insurancetype NOT LIKE "no insurance" 
AND    couldntgeteye NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
SELECT * 
FROM   ccfa 
WHERE  insurancetype NOT LIKE "" 
AND    insurancetype NOT LIKE "no insurance" 
AND    couldntgetspecial NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
SELECT * 
FROM   ccfa 
WHERE  insurancetype NOT LIKE "" 
AND    insurancetype NOT LIKE "no insurance" 
AND    couldntgetfollow NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
SELECT * 
FROM   ccfa 
WHERE  insurancetype NOT LIKE "" 
AND    insurancetype NOT LIKE "no insurance" 
AND    couldntgetmental NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
SELECT * 
FROM   ccfa 
WHERE  insurancetype NOT LIKE "" 
AND    insurancetype NOT LIKE "no insurance" 
AND    couldntgetsurgery NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
SELECT * 
FROM   ccfa 
WHERE  insurancetype NOT LIKE "" 
AND    insurancetype LIKE "no insurance" 
AND    couldntgetprescript NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
SELECT * 
FROM   ccfa 
WHERE  insurancetype NOT LIKE "" 
AND    insurancetype LIKE "no insurance" 
AND    couldntgetdental NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
SELECT * 
FROM   ccfa 
WHERE  insurancetype NOT LIKE "" 
AND    insurancetype LIKE "no insurance" 
AND    couldntgeteye NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
SELECT * 
FROM   ccfa 
WHERE  insurancetype NOT LIKE "" 
AND    insurancetype LIKE "no insurance" 
AND    couldntgetspecial NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
SELECT * 
FROM   ccfa 
WHERE  insurancetype NOT LIKE "" 
AND    insurancetype LIKE "no insurance" 
AND    couldntgetfollow NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
SELECT * 
FROM   ccfa 
WHERE  insurancetype NOT LIKE "" 
AND    insurancetype LIKE "no insurance" 
AND    couldntgetmental NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
SELECT * 
FROM   ccfa 
WHERE  insurancetype NOT LIKE "" 
AND    insurancetype LIKE "no insurance" 
AND    couldntgetsurgery NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes"
/*regional analyses*/ 
SELECT * 
FROM   northeast 
WHERE  insurancetype NOT LIKE "no insurance" 
AND    insurancetype NOT LIKE "" 
AND    ( 
              couldntgetprescript NOT LIKE "" 
       OR     couldntgetmental NOT LIKE "" 
       OR     couldntgetdental NOT LIKE "" 
       OR     couldntgeteye NOT LIKE "" 
       OR     couldntgetspecial NOT LIKE "" 
       OR     couldntgetfollow NOT LIKE "" 
       OR     couldntgetsurgery NOT LIKE "") 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
SELECT * 
FROM   northeast 
WHERE  insurancetype LIKE "no insurance" 
AND    insurancetype NOT LIKE "" 
AND    ( 
              couldntgetprescript NOT LIKE "" 
       OR     couldntgetmental NOT LIKE "" 
       OR     couldntgetdental NOT LIKE "" 
       OR     couldntgeteye NOT LIKE "" 
       OR     couldntgetspecial NOT LIKE "" 
       OR     couldntgetfollow NOT LIKE "" 
       OR     couldntgetsurgery NOT LIKE "") 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
SELECT * 
FROM   ccfa 
WHERE  insurancetype NOT LIKE "" 
AND    insurancetype NOT LIKE "no insurance" 
AND    ibdpatient LIKE "yes" 
AND    country LIKE "%USA%" 
SELECT * 
FROM   ccfa 
WHERE  insurancetype NOT LIKE "" 
AND    insurancetype LIKE "no insurance" 
AND    ibdpatient LIKE "yes" 
AND    country LIKE "%USA%" 
CREATE TABLE `northeast` 
             ( 
                          /*our variables are here*/
             ) 
/*West*/ 
/*insert into West */ 
SELECT * 
FROM   ccfa 
WHERE  ( 
              state LIKE "Arizona" 
       OR     state LIKE "Colorado" 
       OR     state LIKE "Idaho" 
       OR     state LIKE "New Mexico" 
       OR     state LIKE "Montana" 
       OR     state LIKE "Utah" 
       OR     state LIKE "Nevada" 
       OR     state LIKE "Wyoming" 
       OR     state LIKE "Alaska" 
       OR     state LIKE "California" 
       OR     state LIKE "Hawaii" 
       OR     state LIKE "Oregon" 
       OR     state LIKE "Washington") 
SELECT * 
FROM   west 
SELECT * 
FROM   northeast 
WHERE  insurancetype NOT LIKE "" 
AND    insurancetype LIKE "no insurance" 
AND    couldntgetprescript NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
SELECT * 
FROM   northeast 
WHERE  insurancetype NOT LIKE "" 
AND    insurancetype NOT LIKE "no insurance" 
AND    couldntgetdental NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
SELECT * 
FROM   northeast 
WHERE  insurancetype NOT LIKE "" 
AND    insurancetype NOT LIKE "no insurance" 
AND    couldntgeteye NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
SELECT * 
FROM   northeast 
WHERE  insurancetype NOT LIKE "" 
AND    insurancetype NOT LIKE "no insurance" 
AND    couldntgetspecial NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
SELECT * 
FROM   northeast 
WHERE  insurancetype NOT LIKE "" 
AND    insurancetype NOT LIKE "no insurance" 
AND    couldntgetfollow NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
SELECT * 
FROM   northeast 
WHERE  insurancetype NOT LIKE "" 
AND    insurancetype NOT LIKE "no insurance" 
AND    couldntgetmental NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
SELECT * 
FROM   northeast 
WHERE  insurancetype NOT LIKE "" 
AND    insurancetype NOT LIKE "no insurance" 
AND    couldntgetsurgery NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
SELECT * 
FROM   northeast 
WHERE  insurancetype NOT LIKE "" 
AND    insurancetype LIKE "no insurance" 
AND    couldntgetprescript NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
SELECT * 
FROM   northeast 
WHERE  insurancetype NOT LIKE "" 
AND    insurancetype LIKE "no insurance" 
AND    couldntgetdental NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
SELECT * 
FROM   northeast 
WHERE  insurancetype NOT LIKE "" 
AND    insurancetype LIKE "no insurance" 
AND    couldntgeteye NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
SELECT * 
FROM   northeast 
WHERE  insurancetype NOT LIKE "" 
AND    insurancetype LIKE "no insurance" 
AND    couldntgetspecial NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
SELECT * 
FROM   northeast 
WHERE  insurancetype NOT LIKE "" 
AND    insurancetype LIKE "no insurance" 
AND    couldntgetfollow NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
SELECT * 
FROM   northeast 
WHERE  insurancetype NOT LIKE "" 
AND    insurancetype LIKE "no insurance" 
AND    couldntgetmental NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
SELECT * 
FROM   northeast 
WHERE  insurancetype NOT LIKE "" 
AND    insurancetype LIKE "no insurance" 
AND    couldntgetsurgery NOT LIKE "" 
AND    country LIKE "%(USA)%" 
AND    ibdpatient LIKE "yes" 
/*South*/ 
INSERT INTO south 
SELECT * 
FROM   ccfa 
WHERE  ( 
              state LIKE "Delaware" 
       OR     state LIKE "District of Columbia" 
       OR     state LIKE "Florida" 
       OR     state LIKE "Georgia" 
       OR     state LIKE "Maryland" 
       OR     state LIKE "North Carolina" 
       OR     state LIKE "South Carolina" 
       OR     state LIKE "Virginia" 
       OR     state LIKE "West Virginia" 
       OR     state LIKE "Alabama" 
       OR     state LIKE "Kentucky" 
       OR     state LIKE "Mississippi" 
       OR     state LIKE "Tennessee" 
       OR     state LIKE "Arkansas" 
       OR     state LIKE "Louisiana" 
       OR     state LIKE "Oklahoma" 
       OR     state LIKE "Texas") 
/*Midwest*/ 
INSERT INTO midwest 
SELECT * 
FROM   ccfa 
WHERE  ( 
              state LIKE "Indiana" 
       OR     state LIKE "Illinois" 
       OR     state LIKE "Michigan" 
       OR     state LIKE "Ohio" 
       OR     state LIKE "Wisconsin" 
       OR     state LIKE "Iowa" 
       OR     state LIKE "Kansas" 
       OR     state LIKE "Minnesota" 
       OR     state LIKE "Missouri" 
       OR     state LIKE "Nebraska" 
       OR     state LIKE "North Dakota" 
       OR     state LIKE "South Dakota") 
/*Northeast*/ 
INSERT INTO northeast 
SELECT * 
FROM   ccfa 
WHERE  ( 
              state LIKE "connecticut" 
       OR     state LIKE "Maine" 
       OR     state LIKE "Massachusetts" 
       OR     state LIKE "New Hampshire" 
       OR     state LIKE "Rhode Island" 
       OR     state LIKE "Vermont" 
       OR     state LIKE "New Jersey" 
       OR     state LIKE "New York" 
       OR     state LIKE "Pennsylvania") 
SELECT * 
FROM   ccfa 
WHERE  state LIKE "n/a" 
AND    ibdpatient LIKE "yes" 
SELECT * 
FROM   ccfa 
WHERE  state NOT LIKE "n/a" 
AND    ibdpatient LIKE "yes" 
AND    country LIKE "%USA%"