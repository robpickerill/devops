#!/bin/bash

func1() {
echo "This message is from function 1"

}

func2() {
echo "This message is from function 2"

}

func3() {
echo "This message is from function 3"

}

echo "Enter 1, 2 or 3"

read variable

func$variable
