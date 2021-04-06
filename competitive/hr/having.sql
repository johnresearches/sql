select * from engineers where name = 'smith' group by salary having COUNT(salary) > 90000;
