## What is star?
  star is short for Simple Tape ARchive
## Who created it?
  Name:Ahmed Mohamed Abd-El Mawgood 
  email: ahmedsoliman0x666@gmail.com
         ahmedsoliman@oddcoder.com
## The motication
  first and the most important reason for fun
  second it was my end-of-semester project
## is it fully functional?
  no and I hold no responisbility for data loss or files corruptun
  results from using star.
  it is capable of only taring files and directories
## how to verify the functionality of star?
  use it to create one archive that contain mixture of nested directories and 
  files
  then untar these files with star and use diff command to find if their is any
  difference between the 2 directories if diff didn't produce any output than
  star functioning correctly
## how to verify that what is produced by the star is really tar archive
  create an archive with star
  use file command to find the file type of the file created by tar
  it should output something like `POSIX tar archive`
## can star untar any tar archive?
  the answer is NO the star utility can ONLY untar archives that follows
  ustar standards (Unix Standard TAR)
## how to get started?
  to compile and install the code issue `sudo make install`
  to generate the documentation issue `make docs`
  to compile the code in debug mode issue `make debug`

