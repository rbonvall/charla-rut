import Data.Char

dv :: String -> Char
dv rut = let
    productos = ((zipWith (*) $ cycle [2..7]) .
                 reverse . map digitToInt) rut
  in cycle "0k987654321" !! sum productos

main = do
  rut <- getLine
  putStrLn (rut ++ "-" ++ [dv rut])

