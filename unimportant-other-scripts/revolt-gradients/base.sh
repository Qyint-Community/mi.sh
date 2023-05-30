#!/bin/bash
clear
echo "Please enter your TOKEN!"
echo "You can find your Token in your Browsers Developer Options.\nSearch for the 'x-session-token'."
echo "MAKE SURE NOT TO SHARE YOUR TOKEN WITH ANYONE."
read -p " → " token
clear
echo "Please enter the COLOURS!"
echo "Example:"
echo "  linear-gradient(to right bottom, #ff0080, #ff0080, #a349a4, #0000ff, #0000ff)"
read -p " → " colour
clear
echo "Please enter the SERVER ID!"
echo "You can right-click on a Server to get its ID."
read -p " → " serverid
clear
echo "Please enter the ROLE ID!"
echo "You can copy the Role ID from the Server Settings."
read -p " → " roleid
clear
echo "Please enter the ROLE NAME!"
read -p " → " name
clear
echo "Should the Role be hoisted? [ true / false ]"
read -p " → " hoist
clear
echo "What Rank is the Role?"
read -p " → " rank
clear
echo "Should these Settings be applied to the Role '$roleid' from '$serverid'? [y/N]"
read -r -p " → " SELECT
if [ "$SELECT" == "y" ]; then
    curl -X PATCH -H "X-Session-Token: $token" -d "{ \"name\": \"$name\", \"rank\": \"$rank\", \"hoist\": \"$hoist\", \"id\": \"$roleid\", \"colour\": \"$colour\" }" https://api.revolt.chat/servers/$serverid/roles/$roleid
    echo "Applied Settings."
else
    echo "Did not apply Settings."
fi
echo "done."
