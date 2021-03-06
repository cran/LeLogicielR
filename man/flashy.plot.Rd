\encoding{latin1}
\name{flashy.plot}
\alias{flashy.plot}
\title{Croisement de deux variables quantitatives}
\description{Cette fonction permet d'enjoliver le graphique fournit par la fonction plot() dans le cadre du croisement de deux variables quantitatives}
\usage{flashy.plot(x,y,facteur, family = "HersheyScript",xlab="",ylab="")}
\arguments{
  \item{x}{vecteur num�rique}
  \item{y}{vecteur num�rique}
  \item{facteur}{vecteur num�rique sous la forme d'un facteur}
  \item{family}{famille de polices du titre. Par d�faut, la police utilis�e est "HersheyScript".}
  \item{xlab}{chaine de caract�res, �tiquette des x}
  \item{ylab}{chaine de caract�res, �tiquette des y}
}

\value{Un graphique}
\references{
Chapitre 9 (Statistique descriptive) du livre: Le logiciel R, Maitriser le langage, Effectuer des analyses statistiques
}
\author{
Lafaye de Micheaux Pierre <lafaye@unsw.edu.au>, Remy Drouilhet <Remy.Drouilhet@upmf-grenoble.fr>, Liquet Benoit <benoit.liquet@isped.u-bordeaux2.fr>
}
\seealso{\code{\link{plot}}}
\examples{
data(NUTRIAGE)
attach(NUTRIAGE)
sexe <- as.factor(sexe)
levels(sexe) <- c("Homme","Femme")
flashy.plot(poids,taille,sexe,xlab="Taille",ylab="Poids")
detach(NUTRIAGE)
}


