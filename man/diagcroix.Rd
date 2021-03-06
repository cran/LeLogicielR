\encoding{latin1}
\name{diagcroix}
\alias{diagcroix}
\title{Diagramme en croix}
\description{Le diagramme en croix affiche pour chaque observation une petite croix au-dessus de la modalit� correspondante}
\usage{diagcroix(x, titre, col, family = "HersheyScript")}
\arguments{
  \item{x}{variable qualitative}
  \item{titre}{chaine de caract�res pour le titre du graphique}
  \item{col}{vecteur de chaines de caract�res pour la couleur de chaque modalit�}
  \item{family}{famille de polices pour le titre. Par d�faut, la police utilis�e est "HersheyScript".}
}
\value{Un graphique}
\references{
Chapitre 9 (Statistique descriptive) du livre: Le logiciel R, Maitriser le langage, Effectuer des analyses statistiques
}
\author{
Lafaye de Micheaux Pierre <lafaye@unsw.edu.au>, Remy Drouilhet <Remy.Drouilhet@upmf-grenoble.fr>, Liquet Benoit <benoit.liquet@isped.u-bordeaux2.fr>
}
\examples{
data(NUTRIAGE)
attach(NUTRIAGE)
situation <- as.factor(situation)
levels(situation) <- c("seul","couple","famille","autre")
diagcroix(situation,col=c("orange","darkgreen","black","tan"))
detach(NUTRIAGE)
}

