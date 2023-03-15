#!/bin/bash

# this machine IP 10.40.71.197
# # add a single user
# adduser sammy
# # set user password
# passwd sammy
# # delete a user
# userdel -r sammy

# create new users
# read users to create from file
# initial password is the same as username
# users are required to change the password at the first access
while read USER; do
    useradd --password $(openssl passwd -1 ${USER}) ${USER} && chage -d 0 ${USER}
done < users_list.txt
