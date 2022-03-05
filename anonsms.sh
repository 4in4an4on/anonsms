#!usr/bin/bash
clear
apt install curl
clear
echo "
#####.#...#.#####.#...#...#####.#####.#####
#...#.##..#.#...#.##..#...#.....#.#.#.#....
#####.#.###.#...#.#.###...#####.#.#.#.#####
#...#.#..##.#...#.#..##.......#.#.#.#.....#
#...#.#...#,#####.#...#...#####.#...#.#####
" | lolcat
echo "+-----------------------------------------+"
echo "| Created by 4in4an4on                    |"
echo "| https://github.com/4in4an4on            |"
echo "+-----------------------------------------+"
echo "| Do not use for evil deeds.              |"
echo "+-----------------------------------------+"
echo "|Only one text message is allowed per day |"
echo "+-----------------------------------------+"
echo "Enter phone number:"
read "phone"
echo "Enter your message:"
read "message"

echo "+-----------------------------------------+"
echo " Number: $phone"
echo " Your message: $message"
echo "+-----------------------------------------+"

curl -X POST  https://textbelt.com/text \
     --data-urlencode  phone=$phone \
     --data-urlencode  message=$message  \
     -d key=textbelt
echo "+-----------------------------------------+"     
echo "| Done.                                   |"
echo "+-----------------------------------------+"