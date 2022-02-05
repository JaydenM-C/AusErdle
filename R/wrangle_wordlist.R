# Trim to five-phoneme words
# Convert to AusE transcription

library(readr)
library(dplyr)
library(magrittr)

beep <- read_tsv("beep-1.0", col_names = c("lex", "beep")) #%>%
#  slice_sample(n = nrow(.)) # Randomly shuffle all the rows so answers are random

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
  paste(hce, collapse = "")
}

wl$hce <- sapply(wl$beep, transcribe_hce)

# Save
write_tsv(wl, file = "wordlist.tsv")

# Create lists of words for copying into wordlists.ts and validGuesses.ts
vgs <- select(wl, hce)
vgs$hce <- paste0("'", vgs$hce, "',") # Add punctuation for easy copy/paste
write_tsv(vgs, file = "validGuesses.tsv")

# Get a list of only the most frequent words for answers
# Downloaded from https://ucrel.lancs.ac.uk/bncfreq/lists/1_2_all_freq.txt
freqs <- read_tsv("wordfreqs.tsv")
freqs$upper <- toupper(freqs$Word)
candidates <- freqs$upper[freqs$upper %in% wl$lex] # 1477 matches between this list and wl
answers <- filter(wl, lex %in% candidates[1:200]) # Sticking to top 200 words seems fair for now
words <- select(answers, hce) %>%
  slice_sample(n = nrow(.)) # Randomly shuffle all the rows so answers are random
words$hce <- paste0("'", words$hce, "',") # Add punctuation for easy copy/paste
write_tsv(words, file = "wordlist.tsv")
