#!/bin/bash
docker run -v C:$(pwd):C:/choco stefanscherer/chocolatey powershell -Command 'cd c:\choco ; choco pack ; .\test.ps1'
