select * from engineers where name = 'smiths' group by salary having COUNT(salary) > 90000;
