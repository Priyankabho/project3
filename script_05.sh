#!/bin/bash

# script to accept year from user and check it is leap year or not

clear

# accept year from user
echo -n "enter the year : "
read yr

# year is a leap year only if it is completely divisble by 4 => yr % 4 == 0 and
# year should not be a century year, exception is that after every 400 years
# there is a century year which is a leap year
# if( yr % 4 == 0 )
# {
#				if( yr % 100 != 0 )
#						yr is a leap year
#				else if( yr % 400 == 0 )
#						yr is a leap year
#				else
# 					yr is not a leap year
# }
#	else
#		yr is not a leap year

# OR

# if( ( yr % 4 == 0 ) && ( yr % 100 != 0 ) || ( yr % 400 == 0 ) ) 

if [ `expr $yr % 4` -eq 0 -a `expr $yr % 100` -ne 0 -o `expr $yr % 400` -eq 0 ]
then
		echo "$yr is a leap year"
else
		echo "$yr is not a leap year"
fi

exit







