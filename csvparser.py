import os
import csv
from datetime import datetime

#Getting the time
now = datetime.now()
dt_string = now.strftime("%d%m%Y %H%M%S")
time_start = dt_string

#User Input Section To Get Information On file directories
def filelocationinput():
    filePath = input("Please Enter The Full File Path Here")
    logPath = input("Please Enter The Directory Path In Which You Want To Save The Log Output To")
    filelist = []
    filecount = 0
    #OS Directory Scan Starts Here
    with os.scandir(filePath) as entries:
        for entry in entries:
            filecount += 1
            filelist.append(entry.name)
    return filelist, logPath, filePath, filecount

#Section to read and print the contents of the file
def readfile(count,filePath,fileList):
    intCount = count
    path = filePath
    fullFile = path + "/" + fileList[intCount]
    #Codes To Open File And Read Contents Starts Here
    with open(fullFile) as fp:
        line = fp.readline()
        while line:
            print("{}".format(line.strip()))
            line = fp.readline()

#Section to write the contents of txt file to csv file
def writetocsv(count, filePath, fileList, logPath):
    intCount = count
    path = filePath
    fullFile = path + "/" + fileList[intCount]
    cnt = 0
    k = 0
    contentList = []
    with open (fullFile) as fp:
        line=fp.readline()
        while line:
            content = line.split()
            contentList.append(content)
            line = fp.readline()
            cnt += 1

    for i in range(cnt):
        listContents = contentList[i]
        logFileName = logPath + "\\" + dt_string + ".csv"
        with open (logFileName, 'a+', newline='')as output_file:
            wr = csv.writer(output_file, quoting=csv.QUOTE_ALL)
            wr.writerow(listContents)
        print(listContents)
#main function starts here
def main():
    filelist, logPath, filePath, filecount = filelocationinput()
    #print(filelist)
    #print(filelist)
    #print(logPath)
    #print(filePath)
    #print(filecount)
    maincount =0
    while (maincount < filecount):
        print("Hello")
        #readfile(maincount, filePath, filelist)
        writetocsv(maincount, filePath, filelist, logPath)
        maincount += 1

if __name__=="__main__":
	main()