
import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap () {
    exists(MacroInvocation mi | mi.getMacroName().regexpMatch("ntoh(s|l|ll)") and mi.getExpr() = this)
  } 
}

from NetworkByteSwap n
select n, "Network byte swap" 