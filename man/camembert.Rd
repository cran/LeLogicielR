\encoding{latin1}
\name{camembert}
\alias{camembert}
\title{Diagramme circulaire}
\description{Cette fonction offre une variante de la fonction \code{pie}}
\usage{
camembert(x, col = NULL, cex = 0.7, family = "sans", family.main = "HersheyScript",
          main = NULL, col.main = "black", cex.main = 0.5)
}
\arguments{
  \item{x}{variable qualitative}
  \item{col}{un vecteur de chaine de caract�res pour la couleur de chaque modalit�}
  \item{cex}{taille des caract�res pour le graphique}
  \item{family}{famille de polices pour les �l�ments sur le camembert. Par d�faut, la police utilis�e est "sans".}
  \item{family.main}{famille de polices pour le titre. Par d�faut, la police utilis�e est "HersheyScript".}
  \item{main}{titre}
  \item{col.main}{couleur du titre}
  \item{cex.main}{taille des caract�res pour le titre}
}

\value{Un graphique}
\references{
Chapitre 9 (Statistique descriptive) du livre: Le logiciel R, Maitriser le langage, Effectuer des analyses statistiques
}
\author{
Lafaye de Micheaux Pierre <lafaye@unsw.edu.au>, Remy Drouilhet <Remy.Drouilhet@upmf-grenoble.fr>, Liquet Benoit <benoit.liquet@isped.u-bordeaux2.fr>
}
\seealso{\code{\link{pie}}}
\examples{
data(NUTRIAGE)
attach(NUTRIAGE)
matgras <- as.factor(matgras)
levels(matgras) <- c("beurre","margarine","arachide","tournesol","olive","Isio4","colza","canard")
require("RColorBrewer")
col <- brewer.pal(8,"Pastel2")
camembert(matgras,col)
detach(NUTRIAGE)
}
