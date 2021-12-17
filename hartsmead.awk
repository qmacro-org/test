# Parse out info from Harts Mead website. Would be cleaner with mawk, ah well.
/&#163;/  { price=$0; sub(/^.*<h3>/, "", price); sub(/<\/h3>.*$/, "", price); }
/&bull;/  { plot=$0; }
/^[1-9]+ bed/ { desc=$0; print "<h3>" plot "</h3>", "<p>" price "<br>", desc "</p>" }
END { print "<hr><a href=\"https://www.taylorwimpey.co.uk/new-homes/ashton-under-lyne/harts-mead\">Harts Mead website</a>"; }
