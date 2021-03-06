\encoding{latin1}
\name{fleches}
\alias{fleches}
\title{La fonction fleches}
\description{Cette fonction permet d'ajouter une fl�che sur les extr�mit�s des axes d'un graphique}
\usage{fleches(x = TRUE, y = TRUE)}
\arguments{
  \item{x}{logique. La valeur par d�faut est \code{TRUE} indiquant une fl�che sur l'axe des abscisses}
  \item{y}{logique. La valeur par d�faut est \code{TRUE} indiquant une fl�che sur l'axe des ordonn�es}
}
\references{
Chapitre 9 (Statistique descriptive) du livre: Le logiciel R, Maitriser le langage, Effectuer des analyses statistiques
}
\author{
Lafaye de Micheaux Pierre <lafaye@unsw.edu.au>, Remy Drouilhet <Remy.Drouilhet@upmf-grenoble.fr>, Liquet Benoit <benoit.liquet@isped.u-bordeaux2.fr>
}
\examples{
curve(cos(x),xlim=c(-10,10))
fleches()
}
