\name{obs}
\alias{obs}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Observation matrix function
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Computes the observation matrix for each action : manage, survey and stop.
State 1 : extant, state 2 : extinct.
Observation 1 : seen, observation 2 : not seen.
}
\usage{
obs(p0, pm, d0, dm, ds, V, Cm, Cs)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{p0}{
Local probability of persitance : P(extant/extant, survey or stop).
}
  \item{pm}{
Local probability of persitance if manage : P(extant/extant, manage).
}
  \item{d0}{
Local probability of detection : P(present/extant, stop).
}
  \item{dm}{
Local probability of detection : P(present/extant, manage).
}
  \item{ds}{
Local probability of detection if survey : P(present/extant, survey).
}
  \item{V}{
Estimated economic value of the species ($/yr).
}
  \item{Cm}{
Estimated cost of managing ($/yr).
}
  \item{Cs}{
Estimated cost of survey ($/yr).
}
}
\value{
%%  ~Describe the value returned
Array, dimensions = [2,2,3], one matrix of dimensions 2,2 per action (manage, survey, stop, in that order).
For each matrix : rows = states, cols = observations
}
\author{
Luz Pascal
}
\examples{
\dontrun{
#values for Sumatran tigers
pen <- 0.1
p0 <- 1-pen
pem <- 0.05816
pm <- 1 - pem
V <- 175.133
Cm <- 18.784
Cs <- 10.840
d0 <- 0.01
dm <- 0.01
ds <- 0.78193

o <- smsPOMDP::obs(p0, pm, d0, dm, ds, V, Cm, Cs)#observation matrix
}
}
