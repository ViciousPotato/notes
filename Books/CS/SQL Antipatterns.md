#SQL Antipatterns#
虽然字面上和design pattern似乎有关系，但是实际上是对各种常见SQL使用错误的汇总。

[note: SQL is pronounced as S-Q-L]
##1.Foreword##
##2.不要使用,分割的列来存储多值属性，使用交叉表##
##3.树形表##
比如slashdot的评论，评论也有评论

1. WITH语句
2. path/嵌套集(这个比较高级)
3. 闭包表(存储所有冗余数据 )

##4.不一定必须使用id，可以使用组合键##

##5.使用foreign key的约束##
##6.EAV设计是错的##
##7.多态(not interested)##
##8.存储多值属性##
##9.元数据分裂##
也就是把本来应该是元数据的东西具体化了，比如用来命名表名，列名等。
Bug2009, Bug2010

水平分区

`CREATE TABLE Bugs (date_reported DATE) PARTITION BY HASH(YEAR(date_reported)) PARTITIONS 4;`

垂直分区
比如某一列非常大，可以拆到其它表中去。

##10.用NUMERIC, DECIMAL而不是FLOAT##
##11.不是使用ENUM，而是foreign key来做constraints##
##12.将文件存储到数据库中##
##13.索引##
索引分离率
> SELECT COUNT(DISTINCT status) / COUNT(status) AS selectivity FROM Bugs;
分利率越低，索引效率越低

不要乱建索引
##14.NULL三值逻辑##
以下全是NULL
> NULL = 0

> NULL = 12345, NULL + 12345, NULL <> 12345

> NULL || 'string'

> NULL = NULL, NULL <> NULL

NULL AND TRUE = NULL, NULL OR TURE = TRUE, NULL AND FALSE = FALSE, NULL OR FALSE = NULL, NOT(NULL) = NULL
检索NULL值，IS NULL, IS NOT NULL
##15.使用GROUP BY检索出来的结果，要注意有些列的值并不是单一的##


##16.RANDOM##

>SELECT * FROM Bugs ORDER BY RAND() LIMIT 1

性能太低，因为无法利用索引排序，而且排好的结果大部分都被丢掉


##17. Search##
like %word%的另外一个问题是，会匹配到wholeword这种情况。

单纯使用SQL应对搜索并不十分合适。

MySQL, MSSQL, PostgreSQL, SQLLite,, Oracle均支持全文索引。

####Sphinx####
分布式查询？

####Lucene & Solr ####

##18.复杂查询##
写成一句有时可能引起笛卡尔积
>`SELECT p.product_id, f.bug_id AS fixed, o.bug_id AS open
FROM BugsProduct p
JOIN Bugs f ON (f.bug_id AND f.status ='FIXED')
JOIN Bugs o ON (p.bug_id = o.bug_id AND o.status = 'OPEN')
WHERE p.product_id = 1;`

比如上一句在后两个BUGS表中会产生笛卡尔积。
尽量分开写，更清晰明了。

##19.不要用SELECT *##
##20. Password##
##21.SQL Injection##
prepare之后再填充参数（但是这样对索引有影响）
prepare之后的SQL语句变成了内部的格式。
##22.不要试图去补充断掉的id##
##23.在代码中进行错误检查##
##24.开发流程中重视SQL的管理##
##25.ActiveRecord的误区##
