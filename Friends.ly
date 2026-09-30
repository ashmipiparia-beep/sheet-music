\version "2.24.0"

\header {
  title = "Khalil & Logan"
  subtitle = "A Piano Piece for Two Friends"
  composer = "Original composition"
  tagline = ##f
}

global = {
  \key c \major
  \time 4/4
  \tempo "Warmly, with hope" 4 = 92
}

rightHand = \relative c' {
  \global
  \clef treble

  \mark \markup { \box "Intro" }
  e4 g c g | a c e c | a c f c | b d g d |

  \bar "||"
  \mark \markup { \box "Verse" }
  e g a g | d g b g | e a c b | a g f e |
  e g c g | d g b d | e c b a | g f e2 |

  \bar "||"
  \mark \markup { \box "Chorus" }
  a c f e | g e d c | d g b d | e d c b |
  a c f a | g e d c | d b a g | c1 \bar "|."

  \bar "||"
  \mark \markup { \box "Outro" }
  a4 c f c | b d g d | e g c2 \bar "|."
}

leftHand = \relative c {
  \global
  \clef bass

  c4 g' c g | a, e' a e | f, c' f c | g, d' g d |

  c, g' c g | g, d' g d | a, e' a e | f, c' f c |
  c, g' c g | g, d' g d | a, e' a e | f, c' f2 |

  f,4 c' f c | c, g' c g | g, d' g d | a, e' a e |
  f, c' f c | c, g' c g | g, d' g d | c, g' c c |

  f,4 c' f c | g, d' g d | c, g' c2
}

\score {
  \new PianoStaff <<
    \new Staff = "RH" \with {
      instrumentName = "Piano"
    } { \rightHand }

    \new Staff = "LH" {
      \leftHand
    }
  >>
  \layout { }
  \midi { }
}