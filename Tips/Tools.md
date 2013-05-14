##Font smoothing
```bash
/* 
  Found this handy little tip here:
  http://madeofcode.com/posts/12-snow-leopard-textmate-font-smoothing
*/
 
/* TextMate */
defaults write com.macromates.textmate AppleFontSmoothing -int 1
 
/* Sublime Text 2 */
defaults write com.sublimetext.2 AppleFontSmoothing -int 1
```

## Mocha
Makefile
```makefile
test:
	@./node_modules/.bin/mocha --compilers coffee:coffee-script -R spec test/

.PHONY: test
```

## MSI

  msiexec /a f:\zenworks\zfdagent.msi /qb TARGETDIR=c:\zfd701

## Sublime Text

### Change size of tabs
> If you specifically want to go from 2 to 4 spaces, click on the tab menu in the lower right corner. Click "convert indentation to tabs", change width to 4, then "convert indentation to spaces."

## Java

    javap -c Someclass

to disassemble java classes when you have no other tools available.
