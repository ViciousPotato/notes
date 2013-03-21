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