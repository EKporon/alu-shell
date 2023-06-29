#!/bin/bash

filename="students-list_0333.txt"

while :
do
    echo "1. Create student record"
    echo "2. View all students"
    echo "3. Delete student"
    echo "4. Update student record"
    echo "5. Exit"
    echo "Enter your choice: "
    read choice

    case $choice in
        1)
            echo "Enter student email: "
            read email
            echo "Enter student age: "
            read age
            echo "Enter student ID: "
            read student_id
            echo "$email,$age,$student_id" >> $filename
            echo "Student record created."
            ;;
        2)
            echo "Student records:"
            cat $filename
            ;;
        3)
            echo "Enter student ID to delete: "
            read delete_id
            sed -i "/$delete_id/d" $filename
            echo "Student record deleted."
            ;;
        4)
            echo "Enter student ID to update: "
            read update_id
            echo "Enter updated student email: "
            read updated_email
            echo "Enter updated student age: "
            read updated_age
            sed -i "/$update_id/c\\$updated_email,$updated_age,$update_id" $filename
            echo "Student record updated."
            ;;
        5)
            echo "Exiting the application."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac

    echo
done

