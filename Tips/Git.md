## .gitignore
Prevent modified untracked files to show up in `git status`

    git update-index --assume-unchanged <file>

to revert:

    git update-index --no-assume-unchanged <file>
    
## Commit tips
rm multiple deleted files

    git rm $(git ls-files --deleted)  

or

    git commit -a 
