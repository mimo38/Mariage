% Lily was here -- automatically converted by /Applications/LilyPond.app/Contents/Resources/bin/midi2ly from /Users/michel/Documents/Kitematic/musite/opt/musite/data/Mariage/ly/OMaReine/OMaReine.midi
\version "2.14.0"

\layout {
  \context {
    \Voice
    \remove "Note_heads_engraver"
    \consists "Completion_heads_engraver"
    \remove "Rest_engraver"
    \consists "Completion_rest_engraver"
  }
}

trackAchannelA = {


  \key c \major

  % [SEQUENCE_TRACK_NAME] control track

  % [TEXT_EVENT] creator:

  % [TEXT_EVENT] GNU LilyPond 2.18.2

  \time 2/4

  \tempo 4 = 100

}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {

  \set Staff.instrumentName = ":theme"

  % [INSTRUMENT_NAME] flute


  \key c \major

}

trackB = <<
  \context Voice = voiceA \trackBchannelA
>>


\score {
  <<
  >>
  \layout {}
  \midi {}
}
