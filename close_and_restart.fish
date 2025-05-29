function close_and_restart
    echo "Closing all applications..."
    osascript -e 'tell application "System Events" to quit every application'
    echo "Waiting for applications to close..."
    sleep 3
    echo "Flushing disk buffers..."
    sync
    echo "Restarting system in safe mode..."
    sudo shutdown -r now
end
