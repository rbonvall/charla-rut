import Data.Char

dv :: String -> Char
dv rut = let
    digitos = reverse $ map digitToInt rut
    productos = zipWith (*) digitos $ cycle [2..7]
  in cycle "0k987654321" !! sum productos

main = do
  rut <- getLine
  putStrLn (rut ++ "-" ++ [dv rut])

