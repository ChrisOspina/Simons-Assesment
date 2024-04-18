#!/bin/sh
#These are all the unix commands I used throughout this assesment converted into one shell script

url = "https://ita.ee.lbl.gov/html/contrib/Sask-HTTP.html"

#ensuring the connection works

curl "$url" -o Sask-HTTP.html --silent

#get gz file
filename = "ftp://ita.ee.lbl.gov/traces/usask_access_log.gz"
wget "$filename"

#ensure that the zipped file is there and then unzip
ls
gunzip usask_access_log.gz

#this function performs the second task
count_1(){
string1 = "mpngate1.ny.us.ibm.net"

printf "we will now count requests recieved from %s\n" "$string1"

num1 = $(grep -o "$string1" usassk_access_log | wc -l)

printf "There are %s requests received from %s" "$num1", "$string1"

}

#this function performs the third task
count_2(){
string2 = "usask.ca"

printf "we will now count unique %s servers that made requests\n" "$string2"

num2 = $(grep -o "$string2" usassk_access_log |sort|uniq -c| wc -l)

printf "There are %s unique %s servers that made requests\n" "$num2", "$string2"

}


#calling each functions

count_1
count_2
