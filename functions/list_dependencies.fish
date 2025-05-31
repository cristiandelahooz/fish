function list_dependencies
    # Verifica si se proporcionó un argumento
    if test (count $argv) -eq 0
        echo "Usage: list_dependencies <path_to_json_file>"
        return 1
    end

    # Asigna el argumento a una variable
    set json_file $argv[1]

    # Verifica si el archivo existe
    if not test -f $json_file
        echo "File not found: $json_file"
        return 1
    end

    # Procesa el archivo JSON y extrae dependencias y devDependencies
    cat $json_file | jq -r '
        .dependencies, .devDependencies // {} | 
        to_entries[] | "\(.key)@\(.value)"
    '
end
