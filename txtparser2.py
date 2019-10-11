filepath = r'C:\Users\KPMG\Desktop\Linux_Triage\root\Scan_logs_20190806_074217\diskFileSystem.txt'
with open(filepath) as fp:
    line=fp.readline()
    cnt = 1
    while line:
        print("Line {}: {}".format(cnt, line.strip()))
        line = fp.readline()
        cnt += 1