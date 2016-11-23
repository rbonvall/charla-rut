{-  Javascript:

  function factorial(number) {
    var n = number;
    var f = 1;
    var i = 1;
    while (i <= n) {
      f = f * i;
      i = i + 1;
    }
    return f;
  }

-}

factorial number = fac number 1 1

fac n f i =
  if i <= n then fac n (f * i) (i + 1)
            else f

main = do putStrLn (show (factorial 7))
