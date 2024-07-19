## README.md

# Interactive Batch Script
This is a simple interactive batch script that asks the user a question and responds based on the input.

## Script Description
The script prompts the user with "Hello, do you love me? (Yes/No)" and takes the input:
- If the user responds with "Yes," it displays "I Love You Too.." and exits.
- If the user responds with "No," it displays "But I Love you... LOL", waits for 3 seconds, and then initiates a shutdown.

## Prerequisites
- Windows: No additional prerequisites.
- Linux: Requires `wine` to run the batch script.

## Batch Script

```batch
@echo off
:1
color a
echo Hello, do you love me? (Yes/No)
set /p input=
if /i "%input%"=="Yes" goto love
if /i "%input%"=="No" goto hate
goto 1

:love
echo I Love You Too..
echo See you Later
pause
exit

:hate
echo But I Love you... LOL
echo You just Got Hacked!
timeout /t 3
shutdown -s -t 100
```

## Running the Script
### On Windows
1. **Save the Script**: Save the script as `love.bat`.
2. **Run the Script**: Double-click `love.bat` to execute the script.

### On Linux
Batch scripts are not natively supported on Linux, but you can use `wine` to run the script.
1. **Install Wine**:

   ```bash
   sudo apt update
   sudo apt install wine
   ```

2. **Save the Script**: Save the script as `love.bat`.
3. **Run the Script with Wine**:
   ```bash
   wine cmd < love.bat
   ```

## Notes
- **Shutdown Command**: The `shutdown` command in the script will initiate a system shutdown. Use with caution.
- **Running on Linux**: The script behavior may vary when run through `wine` as it is designed for Windows environments.

## License

Distributed under the MIT License. See `LICENSE` for more information.

## Contact

Your Name - [thenameissushant@gmail.com.com](mailto:thenameissushant@gmail.com.com)
```

This `README.md` provides a clear overview of the script, instructions for running it on both Windows and Linux, and includes necessary precautions for the shutdown command.
