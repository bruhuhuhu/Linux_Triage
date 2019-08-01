import os
import csv
from datetime import datetime
import glob
import fileinput
filePath = input("Enter The Full File Path Here:")
logPath =input("Please enter the directory path in which you want to save the log output to")
fileList = []

n=0
#print ("The file name that you have entered is as follows: ")
print (filePath)
with os.scandir(filePath) as entries:
	for entry in entries:
		n += 1
		fileList.append(entry.name)
#print(n)

def readFile(mainCount):
	b = mainCount
	global fileName
	fileName = fileList[b]
	fullName = filePath + "/" + fileName
	f = open(fullName, "r")
	if f.mode == "r":
		contents = f.read()
		return contents

def writeFile(fileContent):
	internalContent = fileContent
	now = datetime.now()
	dt_string = now.strftime("%d%m%Y %H%M%S")
	logFileName = logPath + "\\" + dt_string + "-" + fileName
	e = open(logFileName, 'a+')	
	if e.mode == "a+":
		e.write(internalContent)
		print ("Done ! ")
		message = "Okay"
		return message

def columnNumber(count):
	g = count
	print("Hello")
	while (g < n):
		name = fileList[g]
		fullName = filePath + "/" + name
		with open (fullName) as f:
			reader = csv.reader(f, delimiter=' ', skipinitialspace=True)
			first_row = next(reader)
			num_cols = len(first_row)
			#print (num_cols)
			g += 1
			return num_cols

def main():
	global a
	a = 0
	while (a < n):
		content = readFile(a)
		print(content)
		print ("Hello")
		writeFile(content)
		contentb=columnNumber(a)
		print(contentb)
		a += 1
		

if __name__=="__main__":
	main()