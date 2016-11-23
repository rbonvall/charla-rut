
sucesor x = x + 1

doble x = x + x

triple x = x + doble x

menor x y = if x < y then x else y

misterio = sucesor . triple

sumaHasta 0 = 0
sumaHasta n = n + sumaHasta (n - 1)

unos = repeat 1

unosYCeros = cycle [0, 1]

naturales = [1..]

divisible n d = mod n d == 0

esPrimo n = all (divisible n) [2 .. n - 1]

primos = filter esPrimo (tail naturales)


