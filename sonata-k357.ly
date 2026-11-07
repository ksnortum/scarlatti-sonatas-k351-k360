%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in C major"
  opus   = "K.357"
  source = "https://imslp.eu/files/imglnks/euimg/1/1b/IMSLP345938-PMLP528984-Scarlatti,_Domenico-Sonates_Heugel_32.485_Volume_7_52_K.357_scan.pdf"
}

global = {
  \time 3/8
  \key c \major
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    c''16 g e' c g' e |
    c'16 g e' c g'8\noBeam |
    g,8 a b |
    c16 g e' c g'8\noBeam |
    g,8 a b |
    c16 d e f g g, |
    a16 f' e d c b |
    c4. |
    
    \barNumberCheck 9
    r16 e,,\noBeam <e g>8 <d f>~ |
    q16 <c e> <e g>8 <d f>~ |
    q16 <c e> <e g>8 <d f> |
    e16 d c b c g |
    a16[ c b8] c16\prall b32 c |
    d16[ b] c8.\prall b32 c |
    d16[ b] c8.\prall b32 c |
    \appoggiatura { c16 } d4. |
    
    \barNumberCheck 17
    R4.\fermata |
    <d' f>8 q q |
    q8 q q |
    \grace { f16( g } af8) g16 f ef d |
    \appoggiatura { f16 } ef4\prall d8 |
    R4.\fermata |
    <d f>8 q q |
    q8 q q |
    
    \barNumberCheck 25
    \grace { f16( g } a8) g16 f e d |
    d4\prall cs8 |
    e8 f g |
    a4 b8 |
    cs8 d4 |
    e16 cs a e cs a |
    s4.*2 |
    
    \barNumberCheck 33
    R4.\fermata | \pageBreak
    <a c>8 q q |
    q8 q q |
    \grace { c16( e } ef8) d16 c bf a |
    bf4\prall a8 |
    R4.\fermata |
    <a c>8 q q |
    q8 q q |
    
    \barNumberCheck 41
    \grace { c16( e } e8) d!16 c b a |
    a4 \bracketify \prall gs8 |
    b8 c d |
    e4 fs8 |
    gs8 a4\prall |
    b16 gs e b gs[ e] |
    s4. |
    <gs, b e>4. |
    
    \barNumberCheck 49
    R4.\fermata |
    e'''16 c g e \voiceOne f[ d'] |
    \oneVoice c16 g e c \voiceOne d[ b'] |
    \oneVoice e16 c g e \voiceOne f[ d'] |
    \oneVoice c16 g e c \voiceOne d[ b'] |
    \oneVoice e16 c g e d d' |
    c16 a fs c d b' |
    b16 a a g fs g |
    
    \barNumberCheck 57
    \appoggiatura { g16 } fs8.\prall e16 d8 |
    d'16 fs, g a32 b a16[\prall g] |
    d'16 fs, g a32 b a16[\prall g] |
    d'16 fs, g a32 b a16[\prall g] |
    \acciaccatura { g8 } a4.\prall |
    \voiceOne b,8\rest b\rest g |
    a4 b8 |
    c4 b8 |
    
    \barNumberCheck 65
    a4 g8 |
    a4 b8 |
    c4 b8 | \pageBreak
    \oneVoice c,16 a' b, g' a, fs' |
    g4.\prall |
    \voiceOne r8 r g' |
    a4 b8 |
    c4 b8 |
    
    \barNumberCheck 73
    a4 g8 |
    a4 b8 |
    c4 b8 |
    \oneVoice c,16 a' b, g' a, fs' |
    g'16 d d b b d |
    e16 c c a a d |
    d16 b b g g d |
    e16 c' b a g fs |
    
    \barNumberCheck 81
    g16 d d b b d |
    e16 c c a a d |
    d16 b b g g d |
    e16 c' b a g fs |
    g16 d b g b d |
    d'16 fs, g a32 b a16[\prall g] |
    d'16 fs, g a32 b a16[\prall g] |
    d'16 fs, g a32 b a16[\prall g] |
    
    \barNumberCheck 89
    d'16 fs, g a32 b a16[\prall g] |
    a16 d, c' d, b' d, |
    c16 a' b, g' a, fs' |
    g16 d b g b d |
    d'16 fs, g a32 b a16[\prall g] |
    d'16 fs, g a32 b a16[\prall g] |
    d'16 fs, g a32 b a16[\prall g] |
    d'16 fs, g a32 b a16[\bracketify \prall g] |
    
    \barNumberCheck 97
    a16 d, c' d, b' d, |
    c16 a' b, g' a, fs' |
    g16 d b g b d |
    g16 d b g a <fs' a> |
    <g b>16 d b g a <fs' a> |
    <g b>16 d b g a <fs' a> |
    <g b>16 d b g a <fs' a> |
    <g b>16 d b g a <fs' a> |
    
    \barNumberCheck 105
    <b, d g>4. | \pageBreak
  }
  \repeat volta 2 {
    <b' d>8 q q |
    q8 q q |
    \grace { d16( e } f8) e16 d c b |
    c4\prall b8 |
    R4.\fermata |
    <b d>8 q q |
    q8 q q |
    
    \barNumberCheck 113
    \grace { d16( e } fs8) e16 d cs b |
    b4\prall as8 |
    fs'4. |
    <c! a'>4. |
    <b a'>4. |
    g'16 fs e ds e8\noBeam |
    r16 ds' e ds e c |
    b16 ds e ds e b |
    
    \barNumberCheck 121
    a16 ds e ds e a, |
    g16 ds' e ds e b |
    c16 a a gs fs e |
    e4\prall ds8 |
    \voiceOne fs,8 fs fs |
    fs8 g a |
    g8 fs e |
    e4 fs8 |
    
    \barNumberCheck 129
    fs8 fs fs |
    fs8 g a |
    g8 fs e |
    e4 fs8 |
    \oneVoice fs'8 fs fs |
    <ds fs>8 q q |
    \voiceOne \grace { fs16( g } a8) g16 fs e ds |
    \oneVoice \appoggiatura { ds8 } e4. |
    
    \barNumberCheck 137
    e8 e e |
    <cs e>8 q q |
    \voiceOne \grace { e16( f! } g8) f16 e d cs |
    \oneVoice \appoggiatura { cs8 } d4. |
    d8 d d |
    <b d>8 q q |
    \voiceOne \grace { d16( e } f8) e16 d c b |
    \oneVoice \appoggiatura { b16 } c4. |
    
    \barNumberCheck 145
    g8 a b |
    c8 d e |
    f8 g a |
    b8 c8.\prall b32 c |
    d16[ b] c8.\prall b32 c |
    d16[ b] c8.\prall b32 c |
    d16[ b] c8.\prall b32 c |
    \appoggiatura { c16 } d4. | \pageBreak
    
    \barNumberCheck 153
    \voiceOne r8 r c, |
    d4 e8 |
    f4 e8 |
    d4 c8 |
    d4 e8 |
    f4 e8 |
    \oneVoice f,16 d' e, c' d, b' |
    \appoggiatura { b16 } c4. |
    
    \barNumberCheck 161
    \voiceOne r8 r c' |
    d4 e8 |
    f4 e8 |
    d4 c8 |
    d4 e8 |
    f4 e8 |
    \oneVoice f,16 d' e, c' d, b' |
    c16 g g e e g |
    
    \barNumberCheck 169
    a16 f f d d g |
    g16 e e c c e |
    d16 f e d c b |
    c16 g g e e g |
    a16 f f d d g |
    g16 e e c c e |
    d16 f e d c b |
    c16 g e' c c' g |
    
    \barNumberCheck 177
    g'16 b,c d32 e d16[\prall c] |
    g'16 b,c d32 e d16[\prall c] |
    g'16 b,c d32 e d16[\prall c] |
    g'16 b,c d32 e d16[\prall c] |
    d16 g, f' g, e' g, |
    f16 d' e, c' d, b' |
    c16 g e c e g |
    g'16 b,c d32 e d16[\prall c] |
    
    \barNumberCheck 185
    g'16 b,c d32 e d16[\prall c] |
    g'16 b,c d32 e d16[\prall c] |
    g'16 b,c d32 e d16[\bracketify \prall c] |
    d16 g, f' g, e' g, |
    f16 d' e, c' d, b' |
    c16 g e c d d' |
    \stemDown e16 c g e f[ f'] |
    g16 e c g a[ a'] |
    
    \barNumberCheck 193
    g16 f e d c b |
    c4. |
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s4.*48 |
    
    \barNumberCheck 49
    s4. |
    s4 \voiceFour d''16 s |
    s4 b16 s |
    s4 d16 s |
    s4 b16 s |
    s4.*3 |
    
    \barNumberCheck 57
    s4.*5 |
    d,4.~\startTrillSpan |
    d4.~ |
    d4.~ |
    
    \barNumberCheck 65
    d4.~ |
    d4.~ |
    d4. <>\stopTrillSpan |
    s4.*2 |
    d'4.~\startTrillSpan |
    d4.~ |
    d4.~ |
    
    \barNumberCheck 73
    d4.~ |
    d4.~ |
    d4. <>\stopTrillSpan |
    s4.*5 |
    
    \barNumberCheck 81
    s4.*24 |
    
    \barNumberCheck 105
    s4. |
  }
  \repeat volta 2 {
    s4.*7 |
    
    \barNumberCheck 113
    s4.*8 |
    
    \barNumberCheck 121
    s4.*4 |
    ds,16 b ds b ds b |
    ds16 c e c fs b, |
    e16 b ds a e' a, |
    b4. |
    
    \barNumberCheck 129
    ds16 b ds b ds b |
    ds16 c e c fs b, |
    e16 b ds a e' a, |
    b4. |
    s4.*2 |
    ds'8 ds s |
    s4. |
    
    \barNumberCheck 137
    s4.*2 |
    cs8 cs s |
    s4.*3 |
    b8 b s |
    s4. |
    
    \barNumberCheck 145
    s4.*8 |
    
    \barNumberCheck 153
    g4.~\startTrillSpan |
    g4.~ |
    g4.~ |
    g4.~ |
    g4.~ |
    g4. <>\stopTrillSpan |
    s4.*2 |
    
    \barNumberCheck 161
    g'4.~\startTrillSpan |
    g4.~ |
    g4.~ |
    g4.~ |
    g4.~ |
    g4. <>\stopTrillSpan |
    s4.*2 |
    
    \barNumberCheck 169
    s4.*24 |
    
    \barNumberCheck 193
    s4.*2 |
  }
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \repeat volta 2 {
    s4.*16 |
    
    \barNumberCheck 17
    s4.*4 |
    \voiceThree c''4 b8 |
    s4.*3 |
    
    \barNumberCheck 25
    s4.*8 |
    
    \barNumberCheck 33
    s4.*4 |
    g4 fs8 |
    s4.*3 |
    
    \barNumberCheck 41
    s4.*16 |
    
    \barNumberCheck 57
    s4.*5 |
    \clef bass s8 a,8 b |
    a4 b8 |
    a4 b8 |
    
    \barNumberCheck 65
    a4 b8 |
    a4 b8 |
    a4 b8 |
    s4.*2 |
    \clef treble s8 a' b |
    a4 b8 |
    a4 b8 |
    
    \barNumberCheck 73
    a4 b8 |
    a4 b8 |
    a4 b8 |
    s4.*5 |
    
    \barNumberCheck 81
    s4.*24 |
    
    \barNumberCheck 105
    s4. |
  }
  \repeat volta 2 {
    s4.*3 |
    a4\prall gs8 |
    s4.*3 |
    
    \barNumberCheck 113
    s4.*8 |
    
    \barNumberCheck 121
    s4.*3 |
    g8 fs4 |
    \clef bass d,8\rest d\rest b |
    a4 b8 |
    c4 c8 |
    b4. |
    
    \barNumberCheck 129
    d8\rest d\rest b |
    a4 b8 |
    c4 c8 |
    b4. |
    s4.*4 |
    
    \barNumberCheck 137
    s4.*16 |
    
    \barNumberCheck 153
    s8 d' e |
    d4 e8 |
    d4 e8 |
    d4 e8 |
    d4 e8 |
    d4 e8 |
    s4.*2 |
    
    \barNumberCheck 161
    \clef treble s8 d' e |
    d4 e8 |
    d4 e8 |
    d4 e8 |
    d4 e8 |
    d4 e8 |
    s4.*2 |
    
    \barNumberCheck 169
    s4.*24 |
    
    \barNumberCheck 193
    s4.*2 |
  }
}

leftHandLower = \relative {
  \repeat volta 2 {
    R4.*2 |
    \clef treble r16 e'' f d g f |
    e8 d c |
    r16 e f d g f |
    e8 d c |
    f,8 g g, |
    c4. |
    
    \barNumberCheck 9
    \clef bass c,,8. d'16 b g |
    c,8. d'16 b g |
    c,8. d'16 b g |
    <c, c'>8 <d d'> <e e'> |
    <f f'>8 <d d'> <c c'> |
    <g' g'>8 <e e'> <c c'> |
    <g' g'>8 <e e'> <c c'> |
    <g g'>4. |
    
    \barNumberCheck 17
    R4.\fermata |
    \clef treble bf'''8 bf bf |
    <af c>8 q q |
    <g b!>8 q q |
    \voiceTwo g4. |
    \oneVoice R4.\fermata |
    bf8 bf bf |
    a8 a a |
    
    \barNumberCheck 25
    <gs b!>8 q q |
    a8 a,4 |
    r16 cs' d a e' d |
    cs16 e f d g f |
    e16 g f d bf' g |
    a4. |
    \clef bass e,16 cs a e cs a |
    a,4. |
    
    \barNumberCheck 33
    R4.\fermata |
    \clef treble f'''8 f f |
    <ef g>8 q q |
    <d fs>8 q q |
    \voiceTwo d4. |
    \oneVoice R4.\fermata |
    f!8 f f |
    e8 e e |
    
    \barNumberCheck 41
    <ds fs>8 q q |
    e8 e,4 |
    r16 gs' a e b' a |
    gs16 b c a d c |
    b16 e d a f' d |
    e4. |
    \clef bass b,16 gs e b gs e |
    <e e'>4. |
    
    \barNumberCheck 49
    R4.\fermata |
    <c g' c>4 <d b' d>8 |
    <e c' e>8 <f f'> <g g'> |
    <c, g' c>4 <d b' d>8 |
    <e c' e>8 <f f'> <g g'> |
    <c, c'>4 <b b'>8 |
    <a a'>8 <d d'> <g, g'> |
    <c c'>8 <d d'> <e e'> |
    
    \barNumberCheck 57
    <d d'>4. |
    \clef treble <d'' d'>8 <b b'> <g g'> |
    \clef bass <d d'>8 <b b'> <g g'> |
    <d d'>8 <b b'> <g g'> |
    <d' d'>4. |
    r8 \voiceTwo fs' g |
    fs8 d g |
    fs8 d g |
    
    \barNumberCheck 65
    fs8 d g |
    fs8 d g |
    fs8 d g |
    \oneVoice c,8 d d, |
    g4. |
    \clef treble r8 \voiceTwo fs'' g |
    fs8 d g |
    fs8 d g |
    
    \barNumberCheck 73
    fs8 d g |
    fs8 d g |
    fs8 d g |
    \clef bass \oneVoice c,8 d d, |
    g4 \clef treble g''8 |
    c8 a fs |
    g8 d b |
    c8 d d, |
    
    \barNumberCheck 81
    g,4 g'8 |
    c8 a fs |
    g8 d b |
    \clef bass c8 d d, |
    g,4. |
    <d' d'>8 <b b'> <g g'> |
    <d d'>8 <b b'> <g g'> |
    <d'' d'>8 <b b'> <g g'> |
    
    \barNumberCheck 89
    <d d'>8 <b b'> <g g'> |
    <fs' fs'>8 <d d'> <g g'> |
    <c, c'>8 <d d'> q |
    <g, g'>4. |
    <d'' d'>8 <b b'> <g g'> |
    <d d'>8 <b b'> <g g'> |
    <d'' d'>8 <b b'> <g g'> |
    <d d'>8 <b b'> <g g'> |
    
    \barNumberCheck 97
    <fs' fs'>8 <d d'> <g g'> |
    <c, c'>8 <d d'> q |
    <g, g'>4. |
    q4 <d' d'>8 |
    <b b'>8 <g g'> <d' d'> |
    <b b'>8 <g g'> <d' d'> |
    <b b'>8 <g g'> <d' d'> |
    <b b'>8 <g g'> <d' d'> |
    
    \barNumberCheck 105
    <g, g'>4.
  }
  \repeat volta 2 {
    \clef treble g'''8 g g |
    <f! a>8 q q |
    <e gs>8 q q |
    \voiceTwo e4. |
    \oneVoice R4.\fermata |
    g8 g g |
    fs8 fs fs |
    
    \barNumberCheck 113
    es8 es es |
    fs4. |
    fs8 <fs a!> q |
    <e a>8 q q |
    <ds a'>8 q q |
    <e g>8 <fs a> <g b> |
    <a c>8 q q |
    <g e'>8 q q |
    
    \barNumberCheck 121
    <fs a>8 q q |
    <e g>8 q q |
    a,8 <a a'> q |
    \voiceTwo b4. |
    \clef bass b,,4. |
    b4. |
    b4. |
    b4. |
    
    \barNumberCheck 129
    b4. |
    b4. |
    b4. |
    b4. |
    \clef treble \oneVoice <b''' ds>8 q q |
    <a b>8 q q |
    q8 q q |
    <g b>4. |
    
    \barNumberCheck 137
    q8 q q |
    <g a>8 q q |
    q8 q q |
    <f! a>4. |
    q8 q q |
    <f g>8 q q |
    q8 q q |
    <e g>4. |
    
    \barNumberCheck 145
    r16 e f d g f |
    e16 a b g c b |
    a16 d e c f e |
    d16 g e8 c |
    g'8 e c |
    \clef bass <g, g'>8 <e e'> <c c'> |
    <g g'>8 <e e'> <c c'> |
    <g g'>4. |
    
    \barNumberCheck 153
    r8 \voiceTwo b'' c |
    b8 g c |
    b8 g c |
    b8 g c |
    b8 g c |
    b8 g c |
    f,8 g g, |
    \oneVoice c,4. |
    
    \barNumberCheck 161
    \clef treble r8 \voiceTwo b''' c |
    b8 g c |
    b8 g c |
    b8 g c |
    b8 g c |
    b8 g c |
    \clef bass \oneVoice f,8 g g, |
    c,4 \clef treble c''8 |
    
    \barNumberCheck 169
    f8 e b |
    e8 d e, |
    f8 g g, |
    c4 \clef bass c8 |
    f8 e b |
    e8 d e, |
    \stemDown f8 g g, |
    \stemNeutral c,4. |
    
    \barNumberCheck 177
    <g'' g'>8 <e e'> <c c'> |
    <g g'>8 <e e'> <c c'> |
    <g'' g'>8 <e e'> <c c'> |
    <g g'>8 <e e'> <c c'> |
    <b b'>8 <g g'> <c c'> |
    <f f'>8 <g g'> q |
    <c, c'>4. |
    <g'' g'>8 <e e'> <c c'> |
    
    \barNumberCheck 185
    <g g'>8 <e e'> <c c'> |
    <g'' g'>8 <e e'> <c c'> |
    <g g'>8 <e e'> <c c'> |
    <b b'>8 <g g'> <c c'> |
    <f f'>8 <g g'> q |
    <c, c'>4 <b b'>8 |
    <c c'>4 <d d'>8 |
    <e e'>4 <f f'>8 |
    
    \barNumberCheck 193
    <g g'>4 <g, g'>8 |
    <c c'>4. \clef treble  |
  }
}

leftHand = {
  \global
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

tempi = {
  \set Score.tempoHideNote = ##t
  \repeat volta 2 {
    \tempo "Allegro" 4. = 69
    s4.*16 |
    \barNumberCheck 17
    
    \tempo 4. = 40
    s4. |
    \tempo 4. = 69
    s4.*4 |
    \tempo 4. = 40
    s4. |
    \tempo 4. = 69
    s4.*2 |
    
    \barNumberCheck 25
    s4.*8 |
    
    \barNumberCheck 33
    \tempo 4. = 40
    s4. |
    \tempo 4. = 69
    s4.*4 |
    \tempo 4. = 40
    s4. |
    \tempo 4. = 69
    s4.*2 |
    
    \barNumberCheck 41
    s4.*8 |
    
    \barNumberCheck 49
    \tempo 4. = 40
    s4. |
    \tempo 4. = 69
    s4.*7 |
    
    \barNumberCheck 57
    s4.*40 |
    
    \barNumberCheck 97
    s4.*7 |
    \tempo 4. = 63 s8 \tempo 4. = 58 s \tempo 4. = 54 s |
    
    \barNumberCheck 105
    \tempo 4. = 50 s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 69
    s4.*4 |
    \tempo 4. = 40
    s4. |
    \tempo 4. = 69
    s4.*2 |
    
    \barNumberCheck 113
    s4.*80 |
    
    \barNumberCheck 193
    \tag layout { s4.*2 | } 
    \tag midi {
      \alternative {
        {
          \tempo 4. = 63 s8 \tempo 4. = 58 s \tempo 4. = 54 s |
          \tempo 4. = 50 s4. |
        }
        {
          \tempo 4. = 60 s8 \tempo 4. = 54 s \tempo 4. = 48 s |
          \tempo 4. = 30 s4. |
        }
      }
    }
  }
}

\score {
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 9)
         (padding . 1))
  } <<
    \new Staff = "upper" \rightHand
    \new Staff = "lower" \leftHand
    \new Dynamics \tempi
  >>
  \layout {}
}

\include "articulate.ly"

\score {
  \keepWithTag midi
  \articulate <<
    \new Staff = "upper" << \rightHand \tempi >>
    \new Staff = "lower" << \leftHand \tempi >>
  >>
  \midi {}
}
