#!/bin/bash

test '1'='2'
echo $?

test '1' = '2'
echo $?

test 2 > 3
echo $?

test 2 -gt 3
echo $?

test 2 -lt 3
echo $?
