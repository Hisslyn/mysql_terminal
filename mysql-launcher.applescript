#!/usr/bin/osascript

# MySQL Launcher App (macOS)
# Save this as MySQL-Launcher.app using Script Editor

tell application "Terminal"
	activate
	do script "bash ~/Desktop/mysql_terminal/mysql-start.sh"
end tell