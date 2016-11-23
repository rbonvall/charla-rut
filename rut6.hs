import Data.Char

dv :: String -> Char
dv rut = let
    digitos = (reverse . map digitToInt) rut
    productos = zipWith (*) (cycle [2..7]) digitos
  in cycle "0k987654321" !! sum productos

main = do
  rut <- getLine
  putStrLn (rut ++ "-" ++ [dv rut])

