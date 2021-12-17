# Parse out info from Harts Mead website
/&#163;/  { price=gensub(/<h3>&#163;(.+)<\/h3>/, "£\\1", "g") }
/&bull;/  { plot=gensub(/&bull;/, "-", "g") }
/^[1-9]+ bed/ { desc=$0; print plot, price, "(" desc ")" }
