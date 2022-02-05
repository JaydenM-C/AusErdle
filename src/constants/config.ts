export const CONFIG = {
  tries: 6, // This changes how many tries you get to finish the wordle
  language: 'A phonemic Wordle for Australian English (HCE transcription)', // This changes the display name for your language
  wordLength: 5, // This sets how long each word is based on how many characters (as defined in orthography.ts) are in each word
  author: 'Jayden Macklin-Cordes', // Put your name here so people know who made this Wordle!
  authorWebsite: 'www.macklincordes.com', // Put a link to your website or social media here
  wordListSource: 'the BEEP Pronunciation Dictionary, converted to AusE phonemic transcription (Harrington, Cox and Evans system) by Jayden Macklin-Cordes, using R software and BNC Frequency lists.', // Describe the source material for your words here
  wordListSourceLink: 'https://www.openslr.org/14/', // Put a link to the source material for your words here
  //
  // THESE NEXT SETTINGS ARE FOR ADVANCED USERS
  //
  googleAnalytics: '', // You can use this if you use Google Analytics
  shuffle: false, // whether to shuffle the words in the wordlist each time you load the app (note: you will lose the 'word of the day' functionality if this is true)
  normalization: 'NFC', // whether to apply Unicode normalization to words and orthography - options: 'NFC', 'NFD', 'NKFC', 'NKFD', false
}
