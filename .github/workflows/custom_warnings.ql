import python

from Expr e
where e.getType() = "float"
select e, "Potential division by zero."
where exists(e.getAnOperand()) and e.getAnOperand().toString() = "0.0"
