#!/bin/bash

echo "Select an option:"
echo "1. Display date and time"
echo "2. List files in current directory"
echo "3. Display current directory"
echo "4. Exit"

read choice

case $choice in
	    1)
		            date
			            ;;
				        2)
						        ls
							        ;;
								    3)
									            pwd
										            ;;
											        4)
													        echo "Goodbye!"
														        exit 0
															        ;;
																    *)
																	            echo "Invalid option"
																		            ;;
																	    esac




echo "Enter a number:"
read number

if [ "$number" -gt 0 ]
then
	    echo "The number is positive."
    elif [ "$number" -lt 0 ]
    then
	        echo "The number is negative."
	else
		    echo "The number is zero."
fi
