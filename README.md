## **Triage in Linux**

### 1. Operating systmes supported:
- RHEL 5/6/7/8
- CentOS 6/7
- Solaris 10/11
- Ubuntu 16/18

### 2. Data collected:
The documentation regarding the data artifacts that are retrieved by the scripts can be found in the Triage.xlsx document that has been uploaded here.

### 3. Requirements:

The scripts don't require other dependencies and is meant to run on just the tools that are usually installed on the operating systems that were tested. However for the maxiumum effect, sudo / root access rights would be much preferred.
The Python Data Parser script would need certain extra dependencies for the script to work more effectively. The extra dependencies are as follows:


### 4. Running instructions:

 Note: Run the solaris11.sh file in the Solaris 11 Machine itself.
       1. Give the script executable rights
          chmod +x solaris11.sh 
       2. Run ./solaris11.sh
*N.B: This procedure is the same for all the scripts*
HOW TO MOUNT USB ON VMWare
Step 1: Click VM
Step 2: Click 'Removable Devices'
Step 3: Click the device you want to mount

The optimal procedure would be to run the scripts off a removable thumbdrive to retain forensic soundness on the system being examined. When running the script, the responder just needs to run the Triage_Run_First.sh and the other scripts would be triggered based on the system OS that is installed on the system. The output logs can be found inside the removable thumbdrive after the acquisition is completed and a text would be printed on the screen with the full name of the archive file that contains the logs.

### 5. Linux Incident Response Reading Material:
https://drive.google.com/file/d/1LOfABLDJMDVQFSBOFDzaQvXTUl-e9FL_/view?usp=sharing
