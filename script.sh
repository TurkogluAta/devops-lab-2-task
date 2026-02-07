#!/bin/bash

# Delete folders if they exist (cleanup from previous runs)
rm -rf fol_1 fol_2

# Create folders
mkdir fol_1 fol_2

# Create files in fol_1
touch fol_1/1_1.txt fol_1/1_2.txt fol_1/1_3.txt

# Create files in fol_2
touch fol_2/2_1.txt fol_2/2_2.txt fol_2/2_3.txt

# Set permissions for files ending with _1.txt and _3.txt (read/write for owner only)
chmod 600 fol_1/1_1.txt fol_1/1_3.txt
chmod 600 fol_2/2_1.txt fol_2/2_3.txt

# Set permissions for files ending with _2.txt (read/write/execute for all users)
chmod 777 fol_1/1_2.txt
chmod 777 fol_2/2_2.txt

echo "Job completed"
