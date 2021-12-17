# Parse out info from Harts Mead website. Would be cleaner with mawk, ah well.
/&#163;/  { price=$0; sub(/^.+&#163;/, "", price); sub(/<\/h3>.*$/, "", price); }
/&bull;/  { plot=$0; sub(/&bull;/, "-", plot); }
/^[1-9]+ bed/ { desc=$0; print plot, "GBP", price, "(" desc ")" }
