# easy-ssh-connect

Easy SSh Connect is a simple bash script that allows you to list and connect to SSH hosts defined in your `~/.ssh/config` file easily.

Usage
-----

1.  Save the script to a file, e.g., `easy-ssh-connect.sh`.
2.  Make the script executable by running `chmod +x easy-ssh-connect.sh`.
3.  Run the script by typing `./easy-ssh-connect.sh` in your terminal.

The script will display a list of available hosts from your SSH config file. Enter the number corresponding to the desired host, and the script will connect you to it using the `ssh` command.

Prerequisites
-------------

To use this script, you need to have an SSH config file with defined hosts. Here's an example of an SSH config file:
    Host server1
     HostName example.com
     User myuser
     Port 22
     IdentityFile ~/.ssh/id_rsa

    Host server2
     HostName example2.com
     User myuser2
     Port 22
     IdentityFile ~/.ssh/id_rsa

The script is compatible with Unix-like operating systems (e.g., Linux, macOS) with a bash shell.

## License

This project is licensed under the GNU General Public License v3.0. See the [LICENSE](LICENSE) file for details.
