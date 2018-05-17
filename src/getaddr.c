#include <R.h>
#include <Rinternals.h>
#include <R_ext/Rdynload.h>
#include <stdint.h>

SEXP getAddrDbl(SEXP ptr)   {
    double * _ptr,* _addret;
    SEXP addret;
     
    ptr = PROTECT(coerceVector(ptr, REALSXP));
    addret = PROTECT(allocVector(REALSXP, 1));
    _ptr=REAL(ptr); _addret=REAL(addret);
        _addret[0] = (double)((uint64_t)(intptr_t)(*(&_ptr))); // adresse du 1er octet de ptr  
    //    _addret[0] = (double)(sizeof(*(&_ptr))); // adresse du 1er octet de ptr  8
    //    _addret[0] = (double)(sizeof(_ptr[0])); // adresse du 1er octet de ptr  8
    //    _addret[0] = (double)(sizeof((uint64_t)(*(&_ptr)))); // adresse du 1er octet de ptr  8
    UNPROTECT(2);
    return addret;
}

SEXP writeAtAddrDbl(SEXP addr,SEXP newval) {
    double * _addr,* _newval;

    double *p;
    // &p = adresse de p
    // p = addresse vers laquelle pointe p
    // *p = valeur de la case à l'adresse p
    addr = PROTECT(coerceVector(addr, REALSXP));
    newval = PROTECT(coerceVector(newval, REALSXP));
    _addr=REAL(addr); _newval=REAL(newval);
    p = (double *)(uint64_t)(intptr_t)(_addr[0]); // Identique à p = *addr; mais sans warning à la compilation
    *p = (double)(_newval[0]); // Identique à *p = *newval; mais sans warning à la compilation
//    Rprintf("%p %d %i\n", &p, p, *p);
    UNPROTECT(2);
  return R_NilValue;

}

SEXP getAddrInt(SEXP ptr)   {
    int * _ptr;
    double * _addret;
    SEXP addret;
     
    ptr = PROTECT(coerceVector(ptr, INTSXP));
    addret = PROTECT(allocVector(REALSXP, 1));
    _ptr=INTEGER(ptr); _addret=REAL(addret);
    _addret[0] = (double)(uint64_t)(intptr_t)(*(&_ptr)); // adresse du 1er octet de ptr  
    UNPROTECT(2);
    return addret;
}


SEXP writeAtAddrInt(SEXP addr,SEXP newval) {
    double * _addr;
    int * _newval;

    int *p;
    // &p = adresse de p
    // p = addresse vers laquelle pointe p
    // *p = valeur de la case à l'adresse p
    addr = PROTECT(coerceVector(addr, REALSXP));
    newval = PROTECT(coerceVector(newval, INTSXP));
    _addr=REAL(addr); _newval=INTEGER(newval);
    p = (int *)(uint64_t)(intptr_t)(_addr[0]); // Identique à p = *addr; mais sans warning à la compilation
    *p = (int)(_newval[0]); // Identique à *p = *newval; mais sans warning à la compilation
//    Rprintf("%p %d %i\n", &p, p, *p);
    UNPROTECT(2);
  return R_NilValue;

}

SEXP printAddr(SEXP addr) {
  addr = PROTECT(coerceVector(addr, REALSXP));
  Rprintf("VectorAddr: %p\n",(uint64_t)(intptr_t)(REAL(addr)[0]));
  UNPROTECT(1);
  //  return R_NilValue;
  return addr;
}

static R_CallMethodDef callMethods[] = {
        {"getAddrDbl", (DL_FUNC) &getAddrDbl, 1},
        {"getAddrInt", (DL_FUNC) &getAddrInt, 1},
        {"writeAtAddrDbl", (DL_FUNC) &writeAtAddrDbl, 2},
        {"writeAtAddrInt", (DL_FUNC) &writeAtAddrInt, 2},
        {"printAddr", (DL_FUNC) &printAddr, 1},
        {NULL, NULL, 0}
};

