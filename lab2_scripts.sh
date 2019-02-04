#!/bin/bash
# Author: Casey Tran	
# Date: 1/30/2019

#Problem 1 Code:

echo "Enter a regular expression:"
read regex
echo "Enter a file name:"
read fileName

#Problem 2 Code:

grep $regex $fileName

#Problem 3.1 Code:
echo "The number of phone numbers is:"
grep -E -c "^[0-9]{3}-[0-9]{3}-[0-9]{4}$" regex_practice.txt

#Problem 3.2 Code:
echo "The number of emails is:"
grep -E -c ".com$" regex_practice.txt

#Problem 3.3 Code:
touch phone_results.txt
phone=$(grep -E "^303-[0-9]{3}-[0-9]{4}$" regex_practice.txt)
echo $phone > "phone_results.txt" 

#Problem 3.4 Code:
touch email_results.txt
email=$(grep -E "@geocities.com$" regex_practice.txt)
echo $email > "email_results.txt" 

#Problem 3.5 Code:
touch command_results.txt
command=$(grep $regex regex_practice.txt)
echo $command > "command_results.txt" 

#Problem 4-7 Code:
git init
git add phone_results.txt
git add email_results.txt
git add command_results.txt
git add lab2_scripts.sh
git commit -m "Pushing phone, email and command texts with the script."
git remote add origin https://github.com/casey-tran/lab_2.git
git push origin master
