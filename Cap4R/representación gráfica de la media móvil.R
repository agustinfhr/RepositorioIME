1 library ( ggpubr )
2
3 # Establecer la semilla para generar n� meros aleatorios .
4 set . seed (9437)
5
6 # Generar aleatoriamente una poblaci �n de tama �o 1500
7 # (en este caso , con una distribuci �n cercana a la normal ).
1
8 poblacion <- rnorm (n = 1500 , mean = 4.32 , sd = 0.98)
9
10 # Calcular la media de la poblaci �n.
11 media _ poblacion <- mean ( poblacion )
12 cat (" Media de la poblaci �n:", media _ poblacion , "\n")
13
14 # Tomar una muestra de tama �o 1250.
15 tamano _ muestra <- 1250
16 muestra <- sample ( poblacion , tamano _ muestra )
17
18 # Calcular las medias acumuladas (es decir , con muestras de
19 # 1, 2, 3, ... elementos ).
20 n <- seq( along = muestra )
21 media <- cumsum ( muestra ) / n
22
23 # Crear una matriz de datos con los tama �os y las medias muestrales .
24 datos <- data . frame (n, media )
25
26 # Graficar las medias muestrales .
27 g <- ggline ( data = datos ,
                 28 x = "n",
                 29 y = " media ",
                 30 plot _ type = "l",
                 31 color = " blue ",
                 32 main = " Media m�vil",
                 33 xlab = " Tama �o de la muestra ",
                 34 ylab = " Media muestral ")
35
36 # A� adir al gr� fico una recta con la media de la poblaci �n.
37 g <- g + geom _ hline (aes ( yintercept = media _ poblacion ),
                          38 color = " red", linetype = 2)
39
40 print (g)