library ( dplyr )

# Cargar dataframe iris incluido en R.
datos <- iris

# Seleccionar observaciones correspondientes a la especie versicolor .
versicolor <- datos %> % filter ( Species == " versicolor ")

# Seleccionar observaciones de la especie versicolor cuyos s� palos tengan una
# longitud igual o superior a 6 cm.
largas <- datos %> % filter ( Species == " versicolor " & Sepal . Length >= 6)

# Seleccionar la especie y variables relativas a los p� talos .
petalos <- datos %> % select ( Species , starts _ with (" Petal "))

# Seleccionar variables de ancho y la especie .
anchos <- datos %> % select ( ends _ with (" Width "), Species )

# Agregar al conjunto de datos de los p� talos una nueva variable con la raz�n
# entre el largo y el ancho de � stos .
petalos <- petalos %> % mutate ( Species , Petal .Width ,
                                    Petal . Ratio = Petal . Length / Petal . Width )

# Ordenar el conjunto de datos de p� talos en forma descendente seg �n la raz�n
# de los p� talos .
petalos <- petalos %> % arrange ( desc ( Petal . Ratio ))

# Ordenar el conjunto de datos de p� talos en forma ascendente seg�n el largo de

# los p� talos .
petalos <- petalos %> % arrange ( Petal . Length )