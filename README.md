# Simons-Assesment
A Linux terminal skills assesment for job interview requierements

//view the url for the webpage
curl https://ita.ee.lbl.gov/html/contrib/Sask-HTTP.html
//get the gz file
wget ftp://ita.ee.lbl.gov/traces/usask_access_log.gz
//unzip the file and provide contents
gunzip -l unask_access_log.gz
//unzip the file
gunzip unask_access_log.gz

//view the file and test that printing data works
tail usask_access_log 
head_usask_access_log


Challenge 2: 

How I would do this in SQl

select count(*) from usask_acces_log
where request_recipient = mpngate1.ny.us.ibm.net 

Translating into Unix commands:

//grep is to filter out the  "mpngate1.ny.us.ibm.net"
//wc counts how many lines have that filter
grep -o "mpngate1.ny.us.ibm.net" usask_access_log  |  wc -l
//another way, produces same output
 grep -c "mpngate1.ny.us.ibm.net" usask_access_log


Challenge 3:

How I would do this in SQl

select distinct count(*) from usask_acces_log
where requestor = usask.ca  

translating into unix commands:

grep "usask.ca" usask_acces_log cut -d' '-f1 |sort| uniq -c | wc - l
  
Challenge 4 - putting it all in a shell script

vi test1.sh

See the script on GitHub

chmod +x test1.sh


