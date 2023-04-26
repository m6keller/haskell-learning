main = putStrLn (makeHtml "My page title" "My page content")

wrap :: String -> (String -> String) -> String
wrap content section = html_ (section (body_ content))

makeHtml :: String -> String -> String
makeHtml title content = wrap title head_ <> wrap content body_

element_ :: String -> (String -> String)
element_ element content = "<" <> element <> ">" <> content <> "</" <> element <> ">"

body_ :: String -> String
body_ = element_ "body"

head_ :: String -> String
head_ = element_ "head"

html_ :: String -> String
html_ = element_ "html"

