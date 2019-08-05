#2.9: Scan Summary 
echo "*****Scan Summary*****"
echo "Scan Has Been Completed, The Scan Summary has been compiled into a zip file with the name as shown below:"
echo "Triage_Output_$RANDOM.zip"


cd ..
tar -czf triage_output.tar.gz triage_output/
rm -rf triage_output