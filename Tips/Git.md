## .gitignore
Prevent modified untracked files to show up in `git status`

    git update-index --assume-unchanged <file>

to revert:

    git update-index --no-assume-unchanged <file>
    
Also 
    
    git rm --cache 
    
can be used but not sure whether the file would be deleted on other repos.

## Commit tips
rm multiple deleted files

    git rm $(git ls-files --deleted)  

or

    git commit -a 
    
    
## Don't have to type password

With git version 1.7.9 and later

Since git 1.7.9 (released in late January 2012), there is a neat mechanism in git to avoid having to type your password all the time for HTTP / HTTPS, called credential helpers. (Thanks to dazonic for pointing out this new feature in the comments below.)

With git 1.7.9 or later, you can just do:

    git config --global credential.helper cache

which tells git to keep your password cached in memory for (by default) 15 minutes. You can set a longer timeout with:

    git config credential.helper 'cache --timeout=3600'

(That example is suggested in the GitHub help page for Linux.) GitHub's help also suggests that if you're on Mac OS and used homebrew to install git, you can use the native Mac OS keystore with:

    git config --global credential.helper osxkeychain

and there is a similar helper for Windows, called git-credential-winstore.exe.

## Recover
    git reflog
    git branch <checksum>
