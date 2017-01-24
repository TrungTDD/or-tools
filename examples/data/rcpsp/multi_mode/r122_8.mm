************************************************************************
file with basedata            : cr122_.bas
initial value random generator: 2041744501
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  124
RESOURCES
  - renewable                 :  1   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       17        8       17
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   6   8
   3        3          2          13  17
   4        3          3           9  11  14
   5        3          3          10  12  14
   6        3          1           7
   7        3          2           9  16
   8        3          3           9  14  16
   9        3          2          12  13
  10        3          2          15  16
  11        3          2          12  13
  12        3          2          15  17
  13        3          1          15
  14        3          1          17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0
  2      1     2       3    0    8
         2     5       2    0    6
         3     6       2    0    4
  3      1     4       6    0    7
         2     6       4   10    0
         3    10       3    9    0
  4      1     3       7    0    7
         2     4       3    0    7
         3    10       2    0    5
  5      1     6       6    7    0
         2     9       4    5    0
         3     9       3    0    2
  6      1     1       3    0    5
         2     7       3    0    3
         3     7       3    4    0
  7      1     3      10    0    8
         2     4       8    0    5
         3     4       9    0    4
  8      1     3       9    8    0
         2     6       7    5    0
         3     9       4    0    2
  9      1     2       6    9    0
         2     2       6    0    9
         3     3       4    9    0
 10      1     3       9    0    4
         2     9       6    0    3
         3    10       3    0    2
 11      1     4       8    0    2
         2     4       5    0    5
         3     9       5    6    0
 12      1     1       7    8    0
         2     7       6    0    3
         3     8       2    3    0
 13      1     2       8    6    0
         2     5       7    0    3
         3     5       7    2    0
 14      1     5       7    0    8
         2     9       6    6    0
         3     9       4    0    6
 15      1     6       9    8    0
         2     8       5    0    8
         3    10       2    8    0
 16      1     2       7    7    0
         2     3       4    7    0
         3     7       3    0    7
 17      1     2       6    9    0
         2     6       6    7    0
         3     8       3    5    0
 18      1     0       0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  N 1  N 2
   24   67   68
************************************************************************