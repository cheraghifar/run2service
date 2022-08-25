# run2service

This is the simplest way to run what you whant as a linux service
It's tested in ubuntu 20.04
It's completely free

How to use:

A.
By running for a single service directly:

  `bash run2service.sh 'ServiceName' 'Command to run' 'Service Description text' 'UserName' 'UserGroup'`
  
  example:
  
    bash run2service.sh 'testpy' 'python3 /test/test.py' 'This is a test service written in python 3' 'root' 'root'


B.
By running for multiple services from a .ssv file (space seperated vector file), which describing a service in each line like the above ( 'ServiceName' 'Command to run' 'Service Description text' 'UserName' 'UserGroup' ):

  `bash run2services.sh ServicesListFileName.ssv`
  
  example:
  
    bash run2services.sh ServicesList.ssv


Or mostly recommended (to delete the service installation script):

    curl -OL https://github.com/cheraghifar/run2service/raw/main/run2services.sh; bash run2services.sh servicelist.ssv; rm run2services.sh;

