### Python for Humans

Advocates something they write


### Writing idiomatic Python, the book and slides

https://speakerdeck.com/pyconslides/transforming-code-into-beautiful-idiomatic-python-by-raymond-hettinger-1

```python
with open('mydata.txt') as fp:
    for line in iter(fp.readline, ''):
        process_line(line)
```

```python
>>> blocks = []
>>> f = open("GNUmakefile")
>>> for block in iter(partial(f.read, 3), ''):
...     blocks.append(block)

```

```python
>>> def find(seq, target):
...     for i, value in enumerate(seq):
...             if value == tgt:
...                     break
...     else:
...             return -1
...     return i
```

### Dictionary
```
>>> d = locals()
>>> d = {k: d[k] for k in d if k.startswith('g')}

```
