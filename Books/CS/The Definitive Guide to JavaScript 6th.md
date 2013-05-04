##Extensions
`let` to solve the `var` problem: variable without block scope

##Chapter 13 Client
I believe this chapter is written to describe JS in Browser in general.

Mainly split into 4 parts: general, embed, execution and compatibility.

### General
The explanation of Web browser being simplified OS is interesting.

### Embed and Execution

* inline js with type='newtype' can be used to store data.

* Force js in url to return void result so that FF won't have to open new doc.
```html
<a href="javascript: void window.open('');"> Open </a>
```

* Stop script from blocking page rendering.
```html
<script defer src=""></script>
<script async src=""></script>
```

* addEventHandler adds handler to existing handlers (seems I'm talking about something too obvious)

* run other function immediately
```javascript
setTimeout(f, 0)
```

* webworker is another thread that runs computing intensive jobs and doesn't have access to DOM



### Compatibility


## Chapter 16 Scripting CSS

### CSS Box model
```css
box-sizing: border-box | content-box
```
border box is IE's box model, means width/height includes border and padding. While
content-box not.

`padding` is what between border and content area(width, height), it's
outside of width, height, not inside.

child positions are relative to the edge of parent paddings.

### Position
there is also a `fixed` position.

`absolute` position positioned itself relative to its first ancestor
that has position property **other than** `static`.

So a useful trick is to set some element as:
```css
position: relative; top: 0px; left: 0px;
```
to leave the element in the normal flow but make its descendants
flexible positioned.

`height` and `width` has higher priority than position properties.

`%`(percent) unit is relative to container.



