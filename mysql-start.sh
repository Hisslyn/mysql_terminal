#!/bin/bash

# MySQL Launcher Script
# This script starts MySQL service, opens the MySQL shell, and stops the service when you exit

echo "🚀 Starting MySQL service..."
brew services start mysql

# Wait a moment for the service to fully start
sleep 2

# Check if MySQL is running
if brew services list | grep -q "mysql.*started"; then
    echo "✅ MySQL service started successfully"
    echo "📊 Opening MySQL shell..."
    echo "   (Type 'exit' or press Ctrl+D to quit MySQL and stop the service)"
    echo ""
    
    # Open MySQL shell
    sudo mysql
    
    # This runs after you exit MySQL
    echo ""
    echo "🛑 Stopping MySQL service..."
    brew services stop mysql
    
    # Wait a moment for clean shutdown
    sleep 1
    
    echo "✅ MySQL service stopped"
else
    echo "❌ Failed to start MySQL service"
    echo "   Please check your MySQL installation"
fi