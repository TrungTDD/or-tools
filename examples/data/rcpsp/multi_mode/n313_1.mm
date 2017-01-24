************************************************************************
file with basedata            : cn313_.bas
initial value random generator: 13173
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  126
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  3   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       17        9       17
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           6   8  11
   3        3          1          12
   4        3          2           5   8
   5        3          3           7   9  10
   6        3          1          12
   7        3          3          12  14  17
   8        3          3          10  13  14
   9        3          3          11  14  17
  10        3          2          15  16
  11        3          2          13  16
  12        3          1          13
  13        3          1          15
  14        3          2          15  16
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2  N 3
------------------------------------------------------------------------
  1      1     0       0    0    0    0    0
  2      1     4       7    6   10    0    0
         2     7       6    4   10    0    0
         3     8       6    4    0    0    1
  3      1     3       4    9    0    5    5
         2     4       3    9    9    0    0
         3     5       3    8    7    2    0
  4      1     1      10    7    0    0    5
         2     5       9    7    0    2    0
         3     8       6    2    3    0    0
  5      1     6       9    9    0    0    6
         2     6       9    6    6    0    0
         3     9       3    5    6    9    0
  6      1     3       7    7    7    3    0
         2     6       5    7    0    2    5
         3     7       4    6    0    2    0
  7      1     1       5    9    7    9    0
         2     8       4    8    6    0    4
         3    10       4    5    0    8    4
  8      1     3       6    5    0    8    5
         2     3       7    8    0    8    0
         3     5       5    5    0    7    5
  9      1     2       7    8    0   10    0
         2     8       7    7    4    0    0
         3     9       7    7    0   10    6
 10      1     2      10    8    8    0    6
         2     3      10    7    0    5    6
         3     7      10    7    4    3    0
 11      1     5       6    9    6    0    1
         2     5       7    9    6    0    0
         3    10       4    9    0    2    0
 12      1     3       4    3    9    9    5
         2     5       3    2    0    0    3
         3     9       3    2    0    6    0
 13      1     2       7    7    9    0    8
         2     3       7    6    7    0    6
         3     4       3    5    0    0    5
 14      1     4       7    4    0    2    0
         2     9       7    3    6    0    8
         3     9       6    4    4    0    8
 15      1     1       9    3    0    0    3
         2     9       6    3    0    0    2
         3    10       2    3    0    5    2
 16      1     1       9    7    0    0    6
         2     2       7    5    8    6    0
         3     7       7    3    8    0    0
 17      1     3       6    7    0    0    5
         2     5       5    6    7    3    0
         3     9       3    4    4    3    0
 18      1     0       0    0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2  N 3
   14   13   50   44   43
************************************************************************