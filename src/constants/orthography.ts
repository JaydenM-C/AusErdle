import { CONFIG } from './config'

export const ORTHOGRAPHY = [
'p',
'b',
't',
'd',
'k',
'm',
'n',
'l',
'ɹ',
'f',
'v',
's',
'z',
'h',
'w',
'g',
'tʃ',
'dʒ',
'ŋ',
'θ',
'ð',
'ʃ',
'ʒ',
'j',
'iː',
'ɐː',
'oː',
'ʉː',
'ɜː',
'ɪ',
'e',
'æ',
'ɐ',
'ɔ',
'ʊ',
'ə',
'æɪ',
'ɑe',
'oɪ',
'əʉ',
'æɔ',
'ɪə',
'eː',
'ʊə'
]

if (CONFIG.normalization) {
  ORTHOGRAPHY.forEach(
    (val, i) => (ORTHOGRAPHY[i] = val.normalize(CONFIG.normalization))
  )
}
