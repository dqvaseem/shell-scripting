#!/bin/bash
# First line of the script is the shebang which tells the system how to execute
<< comment
echo "chatur: Hi sabhapati"
echo "Rancho: Issko suno , raju key liye demo hai"
echo "Raju: Bhag yaha se"
echo "Chatur: Pichle 32 saal se"
echo "Raju: rancho aaj date kya hey"
comment
echo "Rancho: today date is: $(date) "
echo "$(date +%Y,%m,%d,%H,%M,%S)"


echo "Farhan: Mujhey system ki space and ram dekhni hey"

echo "vaseem: Disk: $(df -h | awk 'NR==2 { print $2 }') & Ram: $(free -h | awk 'NR==2 {print $2}')"

<< comment
ls 
mkdir -v vaseem
echo " vASEEM directory has been created"
echo " Present working directory "
pwd 
cd vaseem
echo "Pwd"
pwd
touch  vaseem.txt

echo "inside the vaseem directory one file has been created"

ls -i





echo "--------------------"

rank=1  # vary changes able able to change , is used to store the data 

echo "rancho ki rank : $3"

echo "Chatur ki rank kya thi "
#read -p "rank batao" rank 
# rank is used to take the input from the user 
echo  "chatur : ki rank $4"

echo "Farhan ki rank $1"
echo "vaseem ki rank $2"
comment 
<<comment
echo "all the arguments passed  to the script as a separted string $@"
echo  "all the arguments passwd to the script as a single string $*"
echo "No of arguments passwd in the script : $#"
echo " file name of the script : $0"
echo " Process id is: $$"
echo " represent the exit status of last command executed $?"
echo "represent the last pid process id of the last background command $!"



echo "Script Name: $0"
echo "First Argument: $1"
echo "Second Argument: $2"
echo "All Arguments (\$*): $*"
echo "All Arguments (\$@): $@"
echo "Number of Arguments: $#"
echo "Process ID: $$"
# Running a command to demonstrate $?
ls
echo "Exit Status of last command: $?"

# Running a background command to demonstrate $!
sleep 10 &
echo "Process ID of last background command: $!"




if [ $1 -eq "1" ]; then
	echo "Farhan is Topper"
fi


comment





echo "Raju ki rank $1"
echo "Farhan ki rank $2"
echo "Rancho ki rank $3"
echo "Chatur ki rank $4"



if [ $1 -eq "1" ]; then
	echo "Raju is Topper"
elif  [ $2 -eq "1" ]; then 
	echo "Farhan is a Topper"
elif  [ $3 -eq "1" ]; then
	echo "Rancho is a Topper"
else 
	echo "Chatur is Topper"
fi

