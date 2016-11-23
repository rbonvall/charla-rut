import Data.Char

dv :: String -> Char
dv rut =
  (((!!) $ cycle "0k987654321") . sum .
   (zipWith (*) $ cycle [2..7]) .
   reverse . map digitToInt) rut

main = do
  rut <- getLine
  putStrLn (rut ++ "-" ++ [dv rut])

