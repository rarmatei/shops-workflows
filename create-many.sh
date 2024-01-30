#!/bin/bash

# Start the loop from 2 to 31 (since you want to execute it 30 times starting from 2)
for i in {32..100}
do
  # Execute the command with the current value of i
  nx g @nx/angular:application --name shop-$i --no-routing --bundler webpack --no-ssr --projectNameAndRootFormat=derived
done
