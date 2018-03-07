nb.PFGL.new <- function(data.ppp, title, nsim=199) {
  par(mfrow=c(2,2))	# sets up to plot in 2 by 2 panels
  plot(data.ppp, main=title)
  plot(envelope(data.ppp,fun=Fest.km, nsim=nsim),main="F-hat" , lwd=3,legend=F)
  plot(envelope(data.ppp,fun=Gest.km, nsim=nsim),main="G-hat" , lwd=3,legend=F)
  plot(envelope(data.ppp,fun=Lest.iso, nsim=nsim),main="L-hat" , lwd=3,legend=F)
  par(mfrow=c(1,1))	# sets up to plot in 1 panel
}