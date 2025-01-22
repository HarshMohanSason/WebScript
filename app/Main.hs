
main :: IO ()
main = do
    let filePath = "/Users/harshmohansason/Documents/WebScript/assets/sample.txt"
    content <- readFile filePath
    putStrLn "File content: "
    putStrLn content