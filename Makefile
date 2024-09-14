# File Name: Makefile
# Author: Josiah Tripp
# Last Modified: 9/14/2024
# Purpose: To compile the program

# Compilation Variables
CC = g++
CFLAGS = -g -Wall -Wextra #Compile with all errors and warnings
TARGET = MakeToolkit

default: TARGET #Using "$(TARGET)" as a target name caused issues

TARGET: main.o Employee.o Officer.o Supervisor.o
	$(CC) $(CFLAGS) -o $(TARGET) main.o Employee.o Officer.o Supervisor.o

main.o:
	$(CC) $(CFLAGS) -c main.cpp

Employee.o:
	$(CC) $(CFLAGS) -c Employee.cpp

Officer.o:
	$(CC) $(CFLAGS) -c Officer.cpp

Supervisor.o:
	$(CC) $(CFLAGS) -c Supervisor.cpp

clean:
	$(RM) *.o *~ $(TARGET)
