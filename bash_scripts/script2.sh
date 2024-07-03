#!/bin/bash

FOOD='Pizza'
DESSERT='Ice Cream Sundae'

CURRENT_TIME="$(date +"%x %r %Z")"

echo "My favorite food is $FOOD"
echo "My favorite dessert is an $DESSERT"

echo "Today's Date is $CURRENT_TIME"

echo "Here is the calendar of this month"
cal
