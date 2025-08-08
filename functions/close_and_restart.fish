function close_and_restart
    # close_and_restart - Gracefully closes all user applications, flushes disk buffers, and restarts the system in Safe Mode (macOS only).
    #
    # Usage:
    #   close_and_restart
    #
    # Description:
    #   This function attempts to gracefully quit all running user applications, flushes disk buffers to minimize data loss,
    #   and restarts the system in Safe Mode. Safe Mode is enabled by setting the appropriate NVRAM boot-args.
    #
    # Notes:
    #   - Requires administrator privileges for restarting and modifying NVRAM.
    #   - Some applications with unsaved changes may prompt the user or may not close automatically.
    #   - Safe Mode disables third-party extensions and performs disk checks on boot.
    #
    echo "Closing all user applications..."
    osascript -e '
        tell application "System Events"
            set appList to (name of every process whose background only is false)
            repeat with appName in appList
                if appName is not "Finder" and appName is not "Terminal" then
                    try
                        tell application appName to quit
                    end try
                end if
            end repeat
        end tell
    '
    echo "Waiting for applications to close..."
    sleep 5
    echo "Flushing disk buffers..."
    sync
    echo "Restarting system in Safe Mode..."
    sudo shutdown -r now
end
