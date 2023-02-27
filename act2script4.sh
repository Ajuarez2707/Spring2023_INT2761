#!/bin/bash

# define function to generate report
function generate_report {
    # get current date and time
    date=$(date +"%Y-%m-%d %H:%M:%S")

    # get CPU usage percentage
    cpu=$(top -bn1 | awk '/%Cpu/ {print $2}')

    # get memory usage percentage
    memory=$(free | awk '/Mem:/ {print $3/$2 * 100.0}')

    # get disk usage percentage
    disk=$(df -h / | awk '/\// {print $(NF-1)}')

    # print report header
    echo "Report generated on $date"
    echo "--------------------------------------"

    # print CPU usage percentage
    echo "CPU usage: $cpu%"

    # print memory usage percentage
    echo "Memory usage: $memory%"

    # print disk usage percentage
    echo "Disk usage: $disk%"

    # print report footer
    echo "--------------------------------------"
    echo "End of report"
}

# call generate_report function
generate_report

