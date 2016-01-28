##One to One Schema
![one_to_one_schema](imgs/one_to_one.png)

The example above demonstrates a one to one relationship between two 
databases. Every employee is assigned one work station and each workstation 
belongs to only one employee. Even though it would be possible to eliminate 
the workstation table by creating a new field called "work station number" 
in the employee table, the rule of thumb is to use a one-to-one relationship 
between different databases if the field can be empty. Since it is be 
possible to have an empty( NULL) work station number if an employee to works 
from home, the workstation information should be put on a second table and 
linked to the employee table using a one-to-one relationship.