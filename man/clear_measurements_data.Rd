% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clear_measurements_data.R
\name{clear_measurements_data}
\alias{clear_measurements_data}
\title{Limpia un vector de datos aplicando banderas.}
\usage{
clear_measurements_data(measurements, min_value = NULL, max_value = NULL)
}
\arguments{
\item{measurements}{Vector numerico con las mediciones a limpiar}

\item{min_value}{Valor numerico que indica el valor minimo permitido. NULL por defecto.}

\item{max_value}{Valor numerico que indica el valor maximo permitido. NULL por defecto.}
}
\value{
Vector de caracteres con los valores limpios y banderas correspondientes
}
\description{
Aplica una prevalidacion a un vector de dato.
A los valores iguales a -9999 se reemplazan por la bandera ND.
A los valores iguales a 0, se reemplazan por la bandera VZ.
A los valores menores a 0 (negativos) se aplica la bandera NN.
A los valores menores a min_value(si no es null), se reemplazan por la bandera IR.
A los valores mayores a max_value(si no es null), se reemplazan por la bandera IR.
}
\examples{

x <- clear_measurements_data(c(1,NA,3,9), min_value=4, max_value=8)

}
