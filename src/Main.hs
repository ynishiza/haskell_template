import qualified B.Lib

import Data.Text.IO qualified as T

main :: IO ()
main = do
  T.putStrLn B.Lib.message
