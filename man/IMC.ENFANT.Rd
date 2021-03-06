\encoding{latin1}
\name{IMC.ENFANT}
\alias{IMC.ENFANT}
\docType{data}
\title{Indice de masse corporelle chez les enfants}
\description{
Ce jeu de donn�es provient d'une �tude �pid�miologique
trait�e par une �quipe de l'Institut de sant� publique d'�pid�miologie et de d�veloppement (ISPED) de Bordeaux.
Un �chantillon de dossiers d'enfants a �t� saisi. Ce sont des enfants vus lors
d'une visite en 1�re section de maternelle en 1996-1997 dans des �coles de Bordeaux
(Gironde, France). L'�chantillon est constitu� de 152 enfants �g�s de 3
ou 4 ans.
}
\usage{data(IMC.ENFANT)}
\format{
  Un data frame avec 152 observations mesur�es sur les 6 variables suivantes.
  \describe{
    \item{\code{SEXE}}{un facteur ayant les niveaux \code{F} et \code{G}}
    \item{\code{zep}}{un facteur ayant les niveaux \code{N} et \code{O}}
    \item{\code{poids}}{un vecteur num�rique}
    \item{\code{an}}{un vecteur num�rique}
    \item{\code{mois}}{un vecteur num�rique}
    \item{\code{taille}}{un vecteur num�rique}
  }
}

\source{\url{http://www.biostatisticien.eu/springeR/}}
\author{
Lafaye de Micheaux Pierre <lafaye@unsw.edu.au>, Remy Drouilhet <Remy.Drouilhet@upmf-grenoble.fr>, Liquet Benoit <benoit.liquet@isped.u-bordeaux2.fr>
}
\examples{
data(IMC.ENFANT)
str(IMC.ENFANT) 
}
\keyword{datasets}
