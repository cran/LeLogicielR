#include <R.h>
#include <Rinternals.h>
#include <stdlib.h> // for NULL
#include <R_ext/Rdynload.h>

/* FIXME: 
   Check these declarations against the C/Fortran source code.
*/

/* .Call calls */
extern SEXP getAddrDbl(SEXP);
extern SEXP getAddrInt(SEXP);
extern SEXP printAddr(SEXP);
extern SEXP writeAtAddrDbl(SEXP, SEXP);
extern SEXP writeAtAddrInt(SEXP, SEXP);

static const R_CallMethodDef CallEntries[] = {
    {"getAddrDbl",     (DL_FUNC) &getAddrDbl,     1},
    {"getAddrInt",     (DL_FUNC) &getAddrInt,     1},
    {"printAddr",      (DL_FUNC) &printAddr,      1},
    {"writeAtAddrDbl", (DL_FUNC) &writeAtAddrDbl, 2},
    {"writeAtAddrInt", (DL_FUNC) &writeAtAddrInt, 2},
    {NULL, NULL, 0}
};

void R_init_LeLogicielR(DllInfo *dll)
{
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
