
import Lexer (tokenize)

main :: IO ()
main = do
    let filePath = "/Users/harshmohansason/Documents/WebScript/assets/sample.txt"
    content <- readFile filePath
    print (tokenize content)

