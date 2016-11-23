import Data.Char

digito :: Int -> Char
digito 10 = 'k'
digito n  = intToDigit n

dv :: String -> Char
dv rut = let
    digitos = reverse $ map digitToInt rut
    productos = zipWith (*) digitos $ cycle [2..7]
  in digito $ mod (-(sum productos)) 11


main = do
  rut <- getLine
  putStrLn (rut ++ "-" ++ [dv rut])

