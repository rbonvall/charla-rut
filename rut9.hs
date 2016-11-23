import Data.Char

dv =
  (!!) (cycle "0k987654321") .
  sum .
  (zipWith (*) $ cycle [2..7]) .
  reverse .
  map digitToInt

main = do
  rut <- getLine
  putStrLn (rut ++ "-" ++ [dv rut])

