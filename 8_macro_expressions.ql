
import cpp

from MacroInvocation mi, Expr expr
where mi.getMacroName().regexpMatch("ntoh(s|l|ll)") and mi.getExpr() = expr
select mi, expr