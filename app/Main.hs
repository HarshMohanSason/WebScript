
import Lexer (tokenize)

main :: IO ()
main = do
    let filePath = "/Users/harshmohansason/Documents/WebScript/assets/sample.wsc"
    case checkFileFormat filePath of
        Right msg -> do 
            putStrLn msg
            content <- readFile filePath
            print (tokenize content)
        Left err -> putStrLn err

{- 
   Reverses the file path, extracts the extension, then checks if it's "wsc".
   Example: "../filename.wsc"
   1. Reverse path: "csw.emanelif"
   2. Extract until dot: "csw"
   3. Reverse back: "wsc"
-}
checkFileFormat :: String -> Either String String
checkFileFormat filePath = do
    let ext = reverse $ takeWhile (/= '.') (reverse filePath)
    if ext == "wsc"
        then Right "Running..."
        else Left "Error! wrong file format. Make sure the file format ends with a 'wsc' extension "