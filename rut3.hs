import Data.Char

dv :: String -> Char
dv rut = let
    digitos = reverse $ map digitToInt rut
    productos = zipWith (*) digitos $ cycle [2..7]
  in "0123456789k" !! mod (-(sum productos)) 11

main = do
  rut <- getLine
  putStrLn (rut ++ "-" ++ [dv rut])

