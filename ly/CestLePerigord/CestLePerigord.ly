\version "2.18.2"
\language "italiano"

\header {
   %title = "C'est le Périgord"

  % Supprimer le pied de page par défaut
  
  tagline = ##f
}

\paper {
   #(include-special-characters)

  #(set-paper-size "a5")
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key re \major
  \numericTimeSignature
  \time 2/4
}

sopranoVoice = \relative do'' {
  \global
  \dynamicUp
  % En avant la musique !
  \autoBeamOff
  \partial4 
  re,8 ^"Refrain" mi fad4 fad fad mi8 re
  fad4 fad fad la8 re dod4 si la sol8 fad mi4 mi mi2 (mi4)
  \newSpacingSection re8 mi fad4fad sol8 ([fad]) mi re fad4 la re2 (re4) re8 re dod[(la)] la dod mi4 mi re2 (re4) r4
  
  \break
  \bar "||"la4 fad re' dod si4. (dod8) la4 r4
  fad la sol fad8([sol]) mi4 r4
  la fad la re dod4. (si8) la4 r4
  si si dod4.re8 re2 (re4) r4\bar "|."
  
  
}

verse = \lyricmode {
  % Ajouter ici des paroles.
C'est le Pé -- ri -- gord qui re -- vient en -- core
t'of -- frir son a -- mour son plus cher tré -- sor.
A tes pieds Ma -- rie, en un saint trans -- port,
s'a -- ge -- nouil -- le le Pé -- ri -- gord.

 \markup{ \bold {1.}De } la vieil -- le Fran -- ce
Nous a -- vons la Foi,
Et notre Es -- pé -- ran -- ce
Re -- po -- se sur Toi.
}

\score {
  \new Staff \with {
   % instrumentName = ""
    midiInstrument = "choir aahs"
  } { \sopranoVoice }
  \addlyrics { \verse }
  \layout { }
  \midi {
    \tempo 4=100
  }
}
