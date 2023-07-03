#!/bin/bash

table1="//depot/table1/..."
table2="//depot/table2/..."
group="groupname"
access="read"

p4 protect -o > protect.txt
echo "write $table1 $group $access" >> protect.txt
echo "write $table2 $group $access" >> protect.txt
p4 protect -i < protect.txt
rm protect.txt

echo "Table protection script completed."
