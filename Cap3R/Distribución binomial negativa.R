Nuevamente, R dispone de cuatro funciones que permiten trabajar con esta distribuci�n:
  dnbinom(x, size, prob).
pnbinom(q, size, prob, lower.tail).
qnbinom(p, size, prob, lower.tail).
rnbinom(n, size, prob).
Donde:
  3Traducci�n libre de los autores.
15
x, q son vectores de cuantiles (enteros no negativos).
p es un vector de probabilidades.
n es la cantidad de observaciones.
size corresponde al n�mero (no negativo) de intentos.
prob es la probabilidad de �xito de cada intento.
lower.tail es an�logo al de la funci�n pnorm.