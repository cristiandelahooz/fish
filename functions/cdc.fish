function cdc --description "Stop all Docker containers gracefully with feedback"
    # Check if Docker is running
    if not docker info >/dev/null 2>&1
        echo (set_color red --bold)" Docker not running or inaccessible"(set_color normal)
        return 1
    end

    # Get all container IDs
    set -l all_containers (docker ps -a -q 2>/dev/null)
    if test -z "$all_containers"
        echo (set_color yellow --bold)" No containers found"(set_color normal)
        return 0
    end

    echo (set_color blue --bold)" Found "(count $all_containers)" container(s)"(set_color normal)

    # Update restart policy for all containers
    echo (set_color cyan)" Setting restart policy..."(set_color normal)
    if docker update --restart=no $all_containers >/dev/null 2>&1
        echo (set_color green --bold)" Policy updated"(set_color normal)
    else
        echo (set_color red --bold)" Policy update failed"(set_color normal)
    end

    # Get running containers
    set -l running_containers (docker ps -q 2>/dev/null)
    if test -z "$running_containers"
        echo (set_color yellow --bold)" No running containers"(set_color normal)
        return 0
    end

    # Stop running containers
    echo (set_color cyan)" Stopping "(count $running_containers)" container(s)..."(set_color normal)
    if docker stop $running_containers >/dev/null 2>&1
        echo (set_color green --bold)" Containers stopped"(set_color normal)
    else
        echo (set_color red --bold)" Stop failed"(set_color normal)
        return 1
    end
end
