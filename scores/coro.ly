\version "2.22.0"

\include "../definitions.ly"
\include "score_settings/coro.ly"

\book {
  \bookpart {
    \section "De Profundis"
    \addTocEntry
    \paper { indent = 2\cm }
    \score {
      <<
        \new ChoirStaff <<
          \new Staff {
            \set Staff.instrumentName = "Soprano"
            \new Voice = "Soprano" { \dynamicUp \DeProfundisSoprano }
          }
          \new Lyrics \lyricsto Soprano \DeProfundisSopranoLyrics

          \new Staff {
            \set Staff.instrumentName = "Alto"
            \new Voice = "Alto" { \dynamicUp \DeProfundisAlto }
          }
          \new Lyrics \lyricsto Alto \DeProfundisAltoLyrics

          \new Staff {
            \set Staff.instrumentName = "Tenore"
            \new Voice = "Tenore" { \dynamicUp \DeProfundisTenore }
          }
          \new Lyrics \lyricsto Tenore \DeProfundisTenoreLyrics

          \new Staff {
            \set Staff.instrumentName = "Basso"
            \new Voice = "Basso" { \dynamicUp \DeProfundisBasso }
          }
          \new Lyrics \lyricsto Basso \DeProfundisBassoLyrics
        >>
        \new Staff {
          \set Staff.instrumentName = "Organo"
          \DeProfundisOrgano
        }
        \new FiguredBass { \DeProfundisBassFigures }
      >>
    }
  }
}
