\encoding{latin1}
\name{INFARCTUS}
\alias{INFARCTUS}
\docType{data}
\title{Etude sur l'infarctus du myocarde}
\description{
Ce jeu de donn�es provient d'une �tude �pid�miologique
trait�e par une �quipe de l'Institut de sant� publique
d'�pid�miologie et de d�veloppement (ISPED) de Bordeaux. Il s'agit d'une �tude
cas-t�moins sur l'infarctus du myocarde
}
\usage{data(INFARCTUS)}
\format{
  Un data frame avec 449 observations mesur�es sur les 10 variables suivantes.
  \describe{
    \item{\code{NUMERO}}{un vecteur num�rique}
    \item{\code{INFARCT}}{un vecteur num�rique}
    \item{\code{CO}}{un vecteur num�rique}
    \item{\code{TABAC}}{un vecteur num�rique}
    \item{\code{AGE}}{un vecteur num�rique}
    \item{\code{POIDS}}{un vecteur num�rique}
    \item{\code{TAILLE}}{un vecteur num�rique}
    \item{\code{IMC}}{un vecteur num�rique}
    \item{\code{ATCD}}{un vecteur num�rique}
    \item{\code{HTA}}{un vecteur num�rique}
  }
}
\details{
Les donn�es suivantes sont issues d'une enqu�te cas-t�moins dont le but
�tait d'�valuer l'existence d'un risque plus �lev� de survenue d'un infarctus du
myocarde chez les femmes qui utilisent ou ont utilis� des contraceptifs oraux.
L'�tude a �t� men�e aupr�s de 149 femmes ayant eu un infarctus du myocarde
(cas) et 300 femmes n'en n'ayant pas eu (t�moins). 
}
\source{\url{http://www.biostatisticien.eu/springeR/}}
\author{
Lafaye de Micheaux Pierre <lafaye@unsw.edu.au>, Remy Drouilhet <Remy.Drouilhet@upmf-grenoble.fr>, Liquet Benoit <benoit.liquet@isped.u-bordeaux2.fr>
}
\examples{
data(INFARCTUS)
str(INFARCTUS) 
}
\keyword{datasets}
