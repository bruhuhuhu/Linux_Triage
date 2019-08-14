import os
import csv
from datetime import datetime
import glob
import fileinput

filePath = input("Enter The Full File Path Here:")
#logPath = input("Please enter the directory path in which you want to save the log output to")
fileList = []

n = 0
# print ("The file name that you have entered is as follows: ")
print(filePath)
with os.scandir(filePath) as entries:
    for entry in entries:
        n += 1
        fileList.append(entry.name)


# print(n)

def readFile(mainCount):
    b = mainCount
    global fileName
    fileName = fileList[b]
    fullName = filePath + "/" + fileName
    f = open(fullName, "r")
    if f.mode == "r":
        contents = f.read()
        return contents

def writeCSV(number):
    fullName = filePath + "/" + fileName
    count = number
    while (count < n):
        with open(fullName, 'r') as in_file:
            #first_column = [row[0] for row in csv.reader(fullName, delimiter=" ")]
            #print(first_column[1:])
            rf = open(fullName)
            wf= open('writer.csv', 'a')
            writer = csv.writer(wf)
            for row in rf.readlines():
                writer.writerow(row.split())
            count += 1
            #stripped = (line.strip() for line in in_file)
            #lines = (line.split(",") for line in stripped if line)
            #with open('log.csv', 'a') as out_file:
             #   writer = csv.writer(out_file)
            #    writer.writerow(('title', 'intro'))
           #     writer.writerows(lines)
            #    count += 1
def main():
    global a
    a = 0
    while (a < n):
        content = readFile(a)
        writeCSV(a)
        print(content)
        print("Hello")
        a += 1


if __name__ == "__main__":
    main()