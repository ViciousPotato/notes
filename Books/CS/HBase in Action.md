HBase stores structured and semistructured data.

[On semistructured data (slides)][1]
> Structured data
>> database

> Unstructured data
>> Image, Video, Text, Documents e.g.

> Semistructured data
>> Email, XML e.g.

## Code
```bash
$hbase shell
```
Examples:

> \> list

> \> create 'mytable', 'cf'

> \> put 'mytable', 'first', 'cf:message', 'Hello HBase'

> \#put Hello HBase to row `first`, column `cf:message` 

> \> get 'mytable', 'first'

> \> scan 'mytable' # list all vals

> \> describe 'mytable'

## Concepts
### Column
Column family

[1]: http://www.dcs.bbk.ac.uk/~ptw/teaching/ssd/toc.html