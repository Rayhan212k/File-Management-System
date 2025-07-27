#!/bin/bash

i="0"

while [ $i -lt 100 ]; do

	echo "========================================================================="
	echo "-----------------------File Management System----------------------------"
	echo "========================================================================="

	echo "Welcome to our file management system main menu:"
	echo " 1- List all Files and Directories (Folders)"
	echo " 2- Create New Folder"
	echo " 3- Rename Existing Folder"
	echo " 4- Delete Existing Folder"
	echo " 5- Create New File"
	echo " 6- Rename Existing File"
	echo " 7- Delete Existing File"
	echo " 8- Edit File Content"
	echo " 9- Search File"
	echo "10- Search Folder"
	echo "11- Details of Particular File"
	echo "12- View Content of File"
	echo "13- Sort File Content"
	echo "14- List only Directories (Folders)"
	echo "15- List Files of Particular Extension"
	echo "16- Count Number of Directories (Folders)"
	echo "17- Count Number of Files"
	echo "18- Sort Files (with Folder) in a Directory"
	echo "0- Exit"
	echo
	echo "What action do you want to perform?"
	echo "Please enter 1 to 14: "

    read option
    
    
    if [ "$option" == 1 ]; then
        echo "List all files and directories here.."
        echo "Showing all files and directories...."
        sleep 3
        echo "Loading.."
        sleep 3
        echo "-------------------------------OutPut------------------------------------"
        ls
        echo " "
    
    
    elif [ "$option" == 2 ]; then
        echo "Create New Folder here.."
        echo "Enter Folder Name: "
        read foldername
        mkdir "$foldername"
        echo "-------------------------------OutPut------------------------------------"
        echo "Folder Created Successfully"
        echo " "
        
        
    elif [ "$option" == 3 ]; then
        echo "Rename existing folder here.."
        echo "Enter the name of the folder you want to rename:"
        read -r oldfolder
        echo "Enter the new name for the folder:"
        read -r newfolder
        echo "-------------------------------Output------------------------------------"

        if [ -d "$oldfolder" ]; then
            mv "$oldfolder" "$newfolder"
            echo "Successfully renamed the folder."
            echo " "
        else
            echo "Folder does not exist. Try again."
            echo " "
        fi

        
    elif [ "$option" == 4 ]; then
        echo "Delete existing folder here.."
        echo "Enter name of Folder you want to Delete!"
        read -r delfolder
        echo "-------------------------------Output------------------------------------"

        if [ -d "$delfolder" ]; then
            rm -rf "$delfolder"
            echo "Successfully Deleted."
            echo " "
        else
            echo "Folder Does not Exist. Try again"
            echo " "
        fi
        
    
    elif [ "$option" == 5 ]; then
        echo "Create New Files here.."
        echo "Which type of file you want to create !"
        echo "1- .c"
        echo "2- .sh"
        echo "3- .txt"
        echo "Enter your choice from 1-3"
        read filechoice

        if [ "$filechoice" == 1 ]; then
            echo "Enter File Name without .c Extension"
            read filename
            touch "$filename.c"
            echo "-------------------------------OutPut------------------------------------"
            echo "File Created Successfully"
            echo " "
        elif [ "$filechoice" == 2 ]; then
            echo "Enter File Name without .sh Extension"
            read filename2
            touch "$filename2.sh"
            echo "-------------------------------OutPut------------------------------------"
            echo "File Created Successfully"
            echo " "
        elif [ "$filechoice" == 3 ]; then
            echo "Enter File Name without .txt Extension"
            read filename3
            touch "$filename3.txt"
            echo "-------------------------------OutPut------------------------------------"
            echo "File Created Successfully"
            echo " "
        else
            echo "Invalid Input..Try Again."
            echo " "
        fi
        
        
    elif [ "$option" == 6 ]; then
        echo "-------------------------------OutPut------------------------------------"
        echo "Rename files here.."
        echo "Enter Old Name of File with Extension.."
        read old
        echo "Checking for file..."
        sleep 3

        if [ -f "$old" ]; then
            echo "Ok File Exist."
            echo "Now Enter New Name for file with Extension"
            read new
            mv "$old" "$new"
            echo "Successfully Rename."
            echo "Now Your File Exist with $new Name"
        else
            echo "$old does not exist..Try again with correct filename."
        fi
        echo " "
    
        
    elif [ "$option" == 7 ]; then
        echo "Delete existing files here.. "
        echo "Enter name of File you want to Delete!"
        echo "Note: Please Enter full Name with Extension."
        read delfile
        echo "-------------------------------OutPut------------------------------------"

        if [ -f "$delfile" ]; then
            rm "$delfile"
            echo "Successfully Deleted."
            echo " "
        else
            echo "File Does not Exist..Try again"
            echo " "
        fi


    elif [ "$option" == 8 ]; then
        echo "Edit file content here.."
        echo "Enter File Name with Extension : "
        read edit
        echo "-------------------------------OutPut------------------------------------"
        echo "Checking for file.."
        sleep 3

        if [ -f "$edit" ]; then
            echo "Opening file.."
            sleep 3
            nano "$edit"
            echo " "
        else
            echo "$edit File does not exist..Try again."
            echo " "
        fi
    
        
    elif [ "$option" == 9 ]; then
        echo "Search files here.."
        echo "Enter File Name with Extension to search"
        read f
        echo "-------------------------------OutPut------------------------------------"

        if [ -f "$f" ]; then
            echo "Searching for $f File"
            echo "File Found."
            find /home -name "$f"
            echo " "
        else
            echo "File Does not Exist..Try again."
            echo " "
        fi
        
    elif [ "$option" == 10 ]; then
        echo "Search folders here.."
        echo "Enter the folder name to search:"
        read -r folder_name
        echo "-------------------------------Output------------------------------------"

        if [ -d "$folder_name" ]; then
            echo "Searching for '$folder_name' folder"
            echo "Folder Found."
            find /home -type d -name "$folder_name"
            echo " "
        else
            echo "Folder does not exist. Try again."
            echo " "
        fi
 
 
    elif [ "$option" == 11 ]; then
        echo "Detail of file here.."
        echo "Enter File Name with Extension to see Detail : "
        read detail
        echo "-------------------------------OutPut------------------------------------"
        echo "Checking for file.."
        sleep 4

        if [ -f "$detail" ]; then
            echo "Loading Properties.."
            stat "$detail"
        else
            echo "$detail File does not exist..Try again"
        fi
        echo " "
        
        
    elif [ "$option" == 12 ]; then
        echo "View content of file here.."
        echo "Enter File Name with Extension to see Content: "
        read readfile
        echo "-------------------------------OutPut------------------------------------"

        if [ -f "$readfile" ]; then
            echo "Showing file content.."
            sleep 3
            cat "$readfile"
        else
            echo "$readfile does not exist"
        fi
        echo " "
        
        
    elif [ "$option" == 13 ]; then
        echo "Sort files content here.."
        echo "Enter File Name with Extension to sort :"
        read sortfile
        echo "-------------------------------OutPut------------------------------------"

        if [ -f "$sortfile" ]; then
            echo "Sorting File Content.."
            sleep 3
            sort "$sortfile"
        else
            echo "$sortfile File does not exist..Try again."
        fi
        echo " "
        
        
    elif [ "$option" == 14 ]; then
        echo "-------------------------------OutPut------------------------------------"
        echo "List of all Directories (Folders) here.."
        echo "showing all Directories (Folders) ..."
        echo "Loading.."
        sleep 3
        ls -d */
        echo " "
        
        
    elif [ "$option" == 15 ]; then
        echo "List of Files with Particular extensions here.."
        echo "Which type of file list you want to see?"
        echo "1- .c"
        echo "2- .sh"
        echo "3- .txt"
        echo "Enter your choice from 1-3"
        read extopt
        echo "-------------------------------OutPut------------------------------------"

        if [ "$extopt" == 1 ]; then
            echo "List of .c Files shown below."
            echo "Loading.."
            sleep 3
            ls *.c
        elif [ "$extopt" == 2 ]; then
            echo "List of .sh Files shown below."
            echo "Loading.."
            sleep 3
            ls *.sh
        elif [ "$extopt" == 3 ]; then
            echo "List of .txt Files shown below."
            echo "Loading.."
            sleep 3
            ls *.txt
        else
            echo "Invalid Input..Try again.."
        fi
        echo " "
        
        
    elif [ "$option" == 16 ]; then
        echo "-------------------------------OutPut------------------------------------"
        echo "Total number of Directories (Folders) here.."
        echo "Loading all directories (Folders).."
        sleep 3
        echo "Counting.."
        sleep 3
        echo "Number of Directories (Folders) are : "
        echo */ | wc -w
        echo " "
        
        
    elif [ "$option" == 17 ]; then
        echo "-------------------------------OutPut------------------------------------"
        echo "Total Numbers of Files in Current Directory (Folder) here.."
        echo "Loading all files.."
        sleep 3
        echo "Number of Files are : "
        ls -l | grep -v 'total' | grep -v '^d' | wc -l
        echo " "
        
        
    elif [ "$option" == 18 ]; then
        echo "-------------------------------OutPut------------------------------------"
        echo "Sort Files (with Folder) here.."
        echo "Your Request of Sorting file (with Folder) is Generated."
        echo "Sorting.."
        sleep 3
        ls | sort
        echo " "
        
        
    elif [ "$option" == 0 ]; then
        echo "Good Bye.."
        echo "Successfully Exit"
        break
    else
        echo "Invalid Input..Try again...."
    fi

    i=$((i+1))
done
