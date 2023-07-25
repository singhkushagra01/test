import python

from Expr callExpr
where callExpr.getType() = "str"
select callExpr, "Potential SQL injection vulnerability."
where callExpr.getAnArgument(0).toString().matches("%{0}%") and not callExpr.getAnArgument(0).toString().matches("%\\%{0}%")
