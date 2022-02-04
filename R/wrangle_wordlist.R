# Trim to five-phoneme words
# Convert to AusE transcription

library(readr)
library(dplyr)
library(magrittr)

beep <- read_tsv("beep-1.0", col_names = c("lex", "beep"))

lex <- strsplit(beep$beep, " ")
len <- lapply(lex, length)
beep$length <- unlist(len)

# Filter to 5-phoneme words
wl <- filter(beep, length == 5)
lex <- strsplit(wl$beep, " ")

# Create a key phonemic transcription key
segs <- unlist(lex) %>% unique %>% sort

key <- read_tsv("phoneme_key.tsv")

#key <- as.list(keydf$HCE)
#names(key) <- keydf$BEEP

transcribe_hce <- function (w) {
  segs <- unlist(strsplit(w, split = " "))
  segs_index <- match(segs, key$BEEP)
  hce <- key$HCE[segs_index]
  paste(hce, collapse = " ")
}

wl$hce <- sapply(wl$beep, transcribe_hce)

# Save
write_tsv(wl, file = "wordlist.tsv")
