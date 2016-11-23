import Data.Char

factores :: [Int]
factores = cycle [2..7]

digito :: Int -> Char
digito 10 = 'k'
digito n  = intToDigit n

dv :: String -> Char
dv rut = let
    digitos = reverse (map digitToInt rut)
    productos = zipWith (*) digitos factores
    suma = sum productos
    resto = mod (-suma) 11
  in digito resto


main = do
  rut <- getLine
  putStrLn (rut ++ "-" ++ [dv rut])

