#!/usr/bin/env bash
# This script install the module livescore_api using pip3
# and creates a Python file with same name that prints the results
# of the desired country.

pip3 install --upgrade pip

# Check if livescore_api is installed
if pip3 show livescore_api &> /dev/null; then
    echo "livescore_api is already installed."
    echo "Waiting for 2 seconds..."
    sleep 3
else
    echo "livescore_api is not installed. Installing..."
    # Install livescore_api
    pip3 install livescore_api
fi
py_file_name="${0%.sh}.py"

# Check if the installation was successful before clearing the terminal
if [ $? -eq 0 ]
then
	clear
fi
echo -e "#!/usr/bin/env python3\n
# A script that ouputs the soccer results of the country you want\n\n

from livescore_api import livescore\n\n

api = livescore()\n
a = 0\n
c = input(\"Which country are you searching for: \")\n
for i in api.matches():\n\t
	if i[\"Country\"] == c.capitalize():\n\t\t
		print()\n\t\t
		for j in i.items():\n\t\t\t
			print(j)\n\t\t\t
			a = 1\n
b = \"No\"\n
if a == 0:\n\t
	print(\"Contry not found, try again\")\n\t
	b = input(\"Do you wanna print the list of countries? (Yes/No) \")\n
if b.capitalize() == \"Yes\":\n\t
	red_list = [i[\"Country\"] for i in api.matches()]\n\t
	red_set = set(red_list)\n\t
	for i in sorted(list(red_set)):\n\t\t
		if i != \"Israel\":\n\t\t\t
			print(i)" >  "$py_file_name"
chmod +x "$py_file_name"
./"$py_file_name"
rm -rf "$py_file_name"
