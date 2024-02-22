#!/bin/bash

string="hello world"

mkdir $1 || echo "you did not provide folder name"
touch $1/$2

echo $string > $1/$2
