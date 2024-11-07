# C Program Executor

This repository contains a Bash script designed to facilitate the execution of C programs. It allows users to easily compile and run their C files, with options for caching previous selections.

## Prerequisites

Make sure you have the following installed on your system:

- GCC (GNU Compiler Collection) for compiling C programs
- Bash shell (most Linux distributions and macOS come with it by default)

## How to Use the Script

1. **Clone the repository** to your local machine:

   ```bash
   git clone https://github.com/coderboy-organization/c-assignment-cse.git
   cd c-assignment-cse
   ```

2. **Navigate to the directory** containing your C files.

3. **Make the script executable** (if it's not already):

   ```bash
   chmod +x run.sh
   ```

   or you can directly use below code.

   ```bash
   bash run.sh
   ```

4. **Run the script**:

   ```bash
   ./run.sh
   ```

5. **Follow the prompts**:

   - The script will ask if you want to use a previous cached C file. Type `y` or `N` (default is `N`) to proceed.
   - If you choose to select a new file, a list of `.c` files in the current directory will be displayed. Select the desired file.

6. The script will compile the selected C file using `gcc`. If compilation is successful, it will execute the program and display the output.

## Features

- **Cache Support**: The script remembers the last selected C file for future runs.
- **User-Friendly Prompts**: Provides clear prompts for user input.
- **Error Handling**: Checks for compilation errors and handles them gracefully.

## Example

Here’s an example of how to run the script:

```bash
# Clone the repository
git clone https://github.com/coderboy-organization/c-assignment-cse.git
cd c-assignment-cse

# Make the script executable
chmod +x run.sh

# Execute the script
./run.sh
```
