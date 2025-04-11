#!/bin/bash
run_python() {
    python3 "$1"
}
run_javascript() {
    node "$1"
}

run_ruby() {
    ruby "$1"
}

run_bash() {
    bash "$1"
}

run_typescript(){
    ts-node "$1"
}

run_csScript(){
   dotnet script "$1"
}

run_c(){
    # nscs task run.sh here 
    local c_file="$1"
    local program_name=$(basename -s .c "$c_file")

    local output_dir="$HOME/tmp/compiled_c_programs"
    local executable_path="$output_dir/$program_name"

    if [ ! -e "$executable_path" ] || [ "$c_file" -nt "$executable_path" ]; then
        mkdir -p "$output_dir"
       
        echo Compiling...

        gcc -o "$executable_path" "$c_file"

        if [ $? -ne 0 ]; then
            echo "Error: Compilation of '$c_file' failed."
            exit 1
        fi
    fi

    "$executable_path"

    if [ $? -ne 0 ]; then
        echo "Error: Execution of '$program_name' failed."
        exit 1
    fi
}


# Main function
main() {
    if [ $# -eq 0 ]; then
        echo "Usage: $0 <program_file>"
        exit 1
    fi

    program_file="$1"
    extension="${program_file##*.}"

    case "$extension" in
        c)
            run_c "$program_file"
            ;;
        csx)
            run_csScript "$program_file"
            ;;
        ts)
            run_typescript "$program_file"
            ;;
        py)
            run_python "$program_file"
            ;;
        js)
            run_javascript "$program_file"
            ;;
        rb)
            run_ruby "$program_file"
            ;;
        sh)
            run_bash "$program_file"
            ;;
        *)
            echo "Unsupported file type: $extension"
            exit 1
            ;;
    esac
}

main "$@"
