## Chapter 8. Directories and Files

### 3 times of files
> When you're talking to experienced Unix users, you often hear the terms " change time" and "modification time"
thrown around casually. To most people (and most dictionaries), "change" and "modification" 
are the same thing. What's the difference here? 

> The difference between a change and a modification is the difference between altering the 
label on a package and altering its contents. If someone says chmod a-w myfile, that is a change; 
if someone says echo foo >> myfile, that is a modification. A change modifies the file's inode; a modification
modifies the contents of the file itself. A file's modification time is also called the timestamp. 

> As long as we're talking about change times and modification times, we might as well mention "access times," too. 
The access time is the last time the file was read or written. So reading a file updates its access time,
but not its change time (information about the file wasn't changed) or its modification time 
(the file itself wasn't changed). 

> Incidentally, the change time or "ctime" is incorrectly documented as the "creation time" in many places, including some Unix manuals. Do not believe them. 

