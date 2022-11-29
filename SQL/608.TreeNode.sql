Create table If Not Exists Tree (id int, p_id int)
Truncate table Tree
insert into Tree (id, p_id) values ('1', 'None')
insert into Tree (id, p_id) values ('2', '1')
insert into Tree (id, p_id) values ('3', '1')
insert into Tree (id, p_id) values ('4', '2')
insert into Tree (id, p_id) values ('5', '2')
-- id is the primary key column for this table.
-- Each node in the tree can be one of three types:
-- Leaf: if the node is a leaf node.
-- Root if the node is the root of the tree.
-- Inner if the node is neither a leaf node nor a root node
-- Write an SQL query to report the type of each node in the tree.
Input: 
Tree table:
+----+------+
| id | p_id |
+----+------+
| 1  | null |
| 2  | 1    |
| 3  | 1    |
| 4  | 2    |
| 5  | 2    |
+----+------+

Output: 
+----+-------+
| id | type  |
+----+-------+
| 1  | Root  |
| 2  | Inner |
| 3  | Leaf  |
| 4  | Leaf  |
| 5  | Leaf  |
+----+-------+

-- i.e: Node 1 is the root node because its parent node is null and it has child nodes 2 and 3.
-- Node 2 is an inner node bcause it has parent node 1 and child node 4 and 5
-- Nodes 3, 4, and 5 are leaf nodes because they have parent nodes and they do not have child nodes.