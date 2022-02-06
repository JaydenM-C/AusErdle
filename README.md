# AusErdle: Phonemic Wordle for Australian English

AusErdle is a phonemic version of the popular game [Wordle](https://www.powerlanguage.co.uk/wordle/).

Instead of working with the regular 26 characters of the English alphaebet, AusErdle works with the 44 [phonemes](https://www.britannica.com/topic/phoneme) of Australian English (contrastive sound segments).

One of the tricky things will be vowels. In written Australian English, we use just a handful of letters (a, e, i, o, u, sometimes w and y) to represent [20 different](https://australianlinguistics.com/speech-sounds/vowels-au-english/) contrastive vowel sounds. In regular Wordle, you can use this to your advantage with a clever vowel-heavy guess. AusErdle will be less forgiving, since all 20 vowel phonemes are uniquely represented.

The 24 consonant phonemes have a closer to 1:1 ratio with written English characters. Even here though, you won't be able to use 'h' to eliminate ch, th, and sh in one fell swoop, for example. These are all minimal contrastive units in English (in fact, 'th' represents _two_ different contrastive units) so they all get their own phonemic representation.

AusErdle will also require some adjustment when thinking about the kinds of possible words. Since written English often represents single phonemes with digraphs, or even represents phonemes that are no longer pronounced in speech (like the 'k' and 'gh' in 'knight'), 5-letter words in English can vary from 2 phonemes in length (e.g. 'ought' /oːt/) to 5 phonemes (e.g. 'clasp' /klɐːsp/). In AusErdle, every valid word is exactly 5 phonemes long regardless of orthography. For the curious, the longest words (in terms of orthography) in the list of valid guesses are several 11-letter words inclduing 'earthenware', 'ploughshare', 'forethought' and 'chauffered'.

## Transcription system

AusErdle uses the HCE transcription system for Australian English (Harrington, Cox & Evans (1997). There is much that could be said about the pros and cons of particular transcription systems, not to mention the nuances and issues in phonemic transcription generally. For the purposes of this not-so-serious little word game, these are less important. It's more just about picking a system and being consistent. Below is a table showing correspondences between the HCE system and older MD system (Mitchell & Delbridge 1965), alongside some illustrative example words (following [this resource](https://australianlinguistics.com/speech-sounds/vowels-au-english/)).

| HCE | MD | Example     |
|-----|----|-------------|
| iː  | i  | h**ee**d    |
| ɪ   | ɪ  | h**i**d     |
| e   | ɛ  | h**ea**d    |
| æ   | æ  | h**a**d     |
| ɐː  | a  | h**ar**d    |
| ɐ   | ʌ  | h**u**t     |
| ɔ   | ɒ  | h**o**t     |
| oː  | ɔ  | h**or**de   |
| ʊ   | ʊ  | h**oo**d    |
| ʉː  | u  | h**oo**t    |
| ɜː  | ɜ  | h**ear**d   |
| ə   | ə  | **a**bout   |
| æɪ  | eɪ | h**a**te    |
| ɑe  | aɪ | h**ei**ght  |
| oɪ  | ɔɪ | h**oi**st   |
| æɔ  | aʊ | h**ow**l    |
| əʉ  | oʊ | h**o**ed    |
| ɪə  | ɪə | h**ear**    |
| eː  | ɛə | h**air**    |
| ʊə  | ʊə | p**ure**    |

Consonant symbols are the same in both HCE and MD

| HCE/MD | Example    |
|--------|------------|
| p      | **p**et    |
| b      | **b**et    |
| t      | **t**in    |
| d      | **d**in    |
| k      | **c**ot    |
| g      | **g**ot    |
| tʃ     | **ch**ew   |
| dʒ     | **j**ew    |
| f      | **f**at    |
| v      | **v**at    |
| θ      | e**th**er  |
| ð      | ei**th**er |
| s      | **s**ue    |
| z      | **z**oo    |
| ʃ      | **sh**ip   |
| ʒ      | bei**ge**  |
| h      | **h**ave   |
| m      | **m**et    |
| n      | **n**et    |
| ŋ      | so**ng**   |
| w      | **w**et    |
| j      | **y**et    |
| l      | **l**et    |
| ɹ      | **r**un    |

By the way, [Prof. Felicity Cox](https://researchers.mq.edu.au/en/persons/felicity-cox), who puts the 'C' in 'HCE', was the first lecturer who really introduced me to linguistics (phonetics and phonology in particular), instilled my passion for the field and encouraged me to pursue research. So, a big shout out to Felicity for that!

## Wordlist

The English lexicon for this project was adapted from the [BEEP Dictionary](https://www.openslr.org/14/). From over 250,000 words recorded in the dictionary, I extracted about 30.6k that met the criterion of being 5 phonemes long. This is the list of valid guesses.

To weed out the junky/bullshit words and keep the game reasonably solveable, I used [frequency data from the British National Corpus](https://ucrel.lancs.ac.uk/bncfreq/) to select a much smaller subset of the more frequent 5-phoneme words and used this to create a list of possible answers. For now, I've included all possible parts of speech, but I may revisit this decision later (feel free to give feedback on this).

Big cheers to all those who have created and maintained these free, open-source resources, without which this game would not be possible.

## Creating this app

AusErdle was created from a fork of https://github.com/roedoejet/AnyLanguage-Wordle. Check out the [accompanying blog post](https://blog.mothertongues.org/wordle/) if you're interested in creating your own Wordle spinoffs. Huge thanks to [Aidan Pine](https://aidanpine.ca/) who has put that together. Brilliant! And thanks to [Claire Bowern](https://ling.yale.edu/people/claire-bowern) at Yale for bringing my attention to this great resource. Check out Claire's own [Ngaankordle: Bardi Ngaanka Wordle](https://chirila.github.io/Ngaankordle/)

See also [the real Wordle](https://www.powerlanguage.co.uk/wordle/) and read [the story behind it](https://www.nytimes.com/2022/01/03/technology/wordle-word-game-creator.html).

## Feedback

Almost all of the transcription process was automated and I have not personally vetted all 30.6k words for transcription errors. It's very possible that there's some dodgy stuff in there, maybe even a lot. If you find obviously problematic transcription errors, you can report them in [the issues tab](https://github.com/JaydenM-C/AusErdle/issues). This is a bit of a work-in-progress. For general feedback, feel free to contact me by email (jayden.macklin-cordes {at} cnrs.fr), tweet at me ([@JaydenC](https://twitter.com/JaydenC)) or whatever you like really.

## About me

My name's Jayden Macklin-Cordes. I'm an Australian linguist interested in the evolution of language through space and time. In my research I use a particular family of statistical methods (phylogenetic [comparative] methods) to infer ancient genealogical relationships between languages, as well as how and why different kinds of grammatical features evolved in different language families.

Currently, I'm a [CNRS](https://www.cnrs.fr/) postdoctoral researcher at the [DDL (Dynamique du Langage) Lab](http://www.ddl.cnrs.fr/), located at Université Lyon 2 ([http://www.ddl.cnrs.fr/Jayden](institutional homepage).

See my website, www.macklincordes.com, for more information. See above for email/Twitter contact details.

Thanks for visiting and happy AusErdling!
