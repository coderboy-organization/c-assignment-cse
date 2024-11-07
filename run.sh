#!/bin/bash

# Cache file to store the previous selections (path of the C file)
CACHE_FILE="cache.txt"

# Colors for better formatting
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
BOLD='\033[1m'
RESET='\033[0m'

# Function to print messages in a styled format
print_message() {
    echo -e "$1$2$RESET"
}

# Function to load the cache if it exists
load_cache() {
    if [ -f "$CACHE_FILE" ]; then
        # Read the previous selection from the cache file
        read -r prev_file < "$CACHE_FILE"
        
        if [ -n "$prev_file" ]; then
            print_message "$CYAN" "Previous selection found in cache:"
            print_message "$BLUE" "  Previous C file: $prev_file"
            return 0  # Cache exists and contains valid data
        fi
    fi
    return 1  # No cache found or invalid cache
}

# Function to save cache with the C file name only
save_cache() {
    echo -e "$1" > "$CACHE_FILE"
}

# Step 1: Ask if the user wants to use the previous cache
print_message "$YELLOW" "----------------------------------------"
print_message "$GREEN" "C Program Executor Script"
print_message "$YELLOW" "----------------------------------------"
echo
print_message "$YELLOW" "Do you want to use the previous cache (C file)? [y/N]"
read -r use_cache

if [[ "$use_cache" =~ ^[Yy]$ ]]; then
    if load_cache; then
        # If cache is valid, use the cached file and generate the output name automatically
        file=$prev_file
        output_name="${file%.c}"  # Remove .c extension for the output name
        print_message "$GREEN" "Using cached C file: $file"
        print_message "$GREEN" "Using cached output file name: $output_name"
    else
        print_message "$RED" "No valid cache found. Proceeding to selection..."
    fi
fi

# Step 2: If no cache or user opts for a new file, prompt for file selection
if [ -z "$file" ]; then
    print_message "$YELLOW" "----------------------------------------"
    print_message "$CYAN" "Select the C file to compile:"
    c_files=$(ls *.c 2>/dev/null)

    if [ -z "$c_files" ]; then
        print_message "$RED" "No C files found in the current directory!"
        exit 1
    fi

    # Display a list of files for selection
    select file in $c_files; do
        if [ -n "$file" ]; then
            print_message "$GREEN" "You selected: $file"
            break
        else
            print_message "$RED" "Invalid selection, please try again."
        fi
    done
fi

# Step 3: Automatically use the same name for the output file (same name as the .c file)
output_name="${file%.c}"  # Remove .c extension from the selected file for the output name

# Step 4: Save the cache for future runs (just saving the C file name)
save_cache "$file"
print_message "$GREEN" "Cache saved for next execution."

# Step 5: Compile the C file using gcc
print_message "$YELLOW" "----------------------------------------"
print_message "$CYAN" "Compiling $file into $output_name..."

# Run the compilation and check for errors
gcc "$file" -o "$output_name"

# Validation: Check if compilation was successful
if [ $? -ne 0 ]; then
    print_message "$RED" "Error: Compilation failed!"
    exit 1
fi

# Step 6: Execute the compiled program
print_message "$CYAN" "Executing the program..."
./"$output_name"

# End of script
print_message "$YELLOW" "----------------------------------------"
