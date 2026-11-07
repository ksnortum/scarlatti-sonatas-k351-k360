%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in D major"
  opus   = "K.352"
  source = "https://s9.imslp.org/files/imglnks/usimg/6/6a/IMSLP914622-PMLP528222-E4611_47-50-Scarlatti_-_Keyboard_Sonatas,_Supp_01-16.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0.5 . -0.2) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'((0.5 . -0.2) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0.25) (0 . 0.5) (0 . 0.75))
                        ((0.3 . 0.2) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeD = \shape #'(
                        ((0 . -1) (0 . 0.5) (0 . 0.5) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeF = \shape #'((0 . -0.5) (0 . 1) (0 . 1) (0 . 1)) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . -2))
                      ) \etc
slurShapeH = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0.5) (0 . 0.5) (0 . 0) (0 . -0.5))
                      ) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeJ = \shape #'(
                        ((0 . -1) (0 . 0.5) (0 . 0.5) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeK = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeL = \shape #'((0.5 . 0) (0 . -1) (0 . 0) (0 . 0)) \etc

%
% Music
%

global = {
  \time 2/2
  \key d \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    d''4-\slurShapeA (\prall cs8 d e4-.) a,-. |
    \osp #'(-0.5 . 0) fs'4(\prall e8 fs g4-.) a-. |
    d,4-\slurShapeA (\prall cs8 d e4-.) cs-. |
    d4-. a'8( fs  fs4-.) g8( e |
    e4-.) \osp #'(-0.5 . 0) fs8( d  d4-.) e8-\slurShapeC ( cs |
    d8 a' g fs  e4-.) e-. |
    \osp #'(1 . 0) a,8( a' g fs  e4-.) e-. |
    \osp #'(-1 . 0) a,8( a' g fs  b4-.) d,-. |
    
    \barNumberCheck 9
    cs4-. d-.  \osp #'(-0.5 . 0) e4.( fs16 g |
    fs4-.) d-.  e4.( fs16 g |
    fs4-.) d-.  e4.( fs16 g |
    fs4-.) a8( d,  d4-.) cs8( b |
    a4-.) a'-. a-. a-. |
    \osp #'(0 . 2.5) d8( cs b a  g fs e d 
    a4-.) a'-. a-. a-. |
    d8( cs b a  g fs e d 
    
    \barNumberCheck 17
    a1)-\tag layout \prallprall -\tag midi \prall |
    \bar "||"
    r4 e'8( c  c4-.) \osp #'(-0.5 . 0) f8( d |
    d4-.) b'8( gs)  \osp #'(-0.5 . 0) gs( d' c b |
    c4-.) e,8( c  c4-.) \osp #'(-0.5 . 0) f8( d |
    d4-.) b'8( gs)  gs-\slurShapeD ( d' c b |
    c4-.) e,8( c  c4-.) e8( c |
    c4-.) e8( c  c4-.) e8( c |
    c8-.) \osp #'(0 . -0.5) b'( a g  f e d c |
    
    \barNumberCheck 25
    f8 e d c  b a gs a |
    e4-.) b'8( gs  gs4-.) c8-\slurShapeE ( a |
    a4-.) a'8( ds,  ds4-.) \osp #'(-0.5 . 0) e8( fs |
    % Fourth beat, source is missing the slur, but see measure 26
    e4-.) b8( gs  gs4) c8( a |
    a4-.) a'8( ds,  ds4-.) e8( fs) |
    e,1\fermata |
    \bar "||"
    r8 b''8( a gs d2) |
    r8 cs!( b a e2) |
    
    \barNumberCheck 33
    r8 b'8( a gs d2) |
    r8 cs( b a e'2) |
    r8 b'8( a gs d2) |
    r8 cs( b a e'2) |
    r8 b'8( a gs d2 |
    cs4-.) e8( cs  cs4-.) a'8( e |
    e4-.) cs'8( a  a4-.) e'8( cs |
    cs8-.) a'( gs fs  e4-.) e-. |
    
    \barNumberCheck 41
    e8-\slurShapeF ( gs fs e  d d cs b |
    a4~ a16) b( a32 gs a b) \stemUp b4.(-\tag layout \prallprall
      -\tag midi \prall a8 |
    a4) \stemNeutral a'8( cs,  b4-.) gs'->~ |
    gs4 a8( cs,  b4-.) gs'->~ |
    gs4 \osp #'(0 . 2.5) a8( e  fs d b gs |
    e4)_(~ e16 fs gs a \stemUp b4.\prall a8 |
    a1) |
  }
  \repeat volta 2 {
    \stemNeutral \osp #'(-1 . 0) cs4(\prall b8 cs  d4-.) e-. |
    
    \barNumberCheck 49
    \osp #'(2 . 0) a,4( d8 e  fs4-.) g!-. |
    \osp #'(-0.5 . 0) a8( d cs b  a4-.) a-. |
    \osp #'(-0.5 . 0) a8( d cs b  a4-.) g-. |
    fs4-\slurShapeH (\prall e8 fs  g a b d, |
    cs4-\insideSlur \prall b8 a  a4-.) a-. |
    r8 a'( g fs  e4-.) e-. |
    \osp #'(-0.5 . 0) e8( a g fs  e4-.) e-. |
    r8 c'( b a  g fs e fs |
    
    \barNumberCheck 57
    g4 fs8 e  e4-.) e-. |
    r8 a( g fs  e4-.) e-. |
    \osp #'(-0.5 . 0) e8( a g fs  e4-.) e-. |
    \osp #'(-1 . 0) e8( d' cs b  as g fs e |
    d4 cs8 b  b4-.) b-. |
    r4 \osp #'(-0.5 . 0) fs'8( d  d4-.) fs8( d |
    d4-.) \osp #'(-0.5 . 0) fs8( d  d4-.) \osp #'(-0.5 . 0) fs8( d |
    d4-.) b'8( d,  d4-.) b'8( d, |
    
    \barNumberCheck 65
    a'8 b a g  fs e d c |
    b4 d) d-. d-. |
    g8-\slurShapeJ ( b a g  fs e d c |
    b4 d) d-. d-. |
    b'8( a g fs  e d cs! b |
    a4-.) a-. a-. a-. |
    a'8( g fs e  d cs b a |
    g4-.) g-. g-. g-. |
    
    \barNumberCheck 73
    g'8( fs e d  cs b a g |
    fs4-.) fs-. fs-. fs-. |
    \osp #'(0 . -1) fs'8( e d cs  b a g fs |
    b8 a g fs  e d cs b |
    a1)-\tag layout \prallprall -\tag midi \prall |
    \bar "||"
    r4 e''8( cs  cs4-.) \osp #'(-0.5 . 0) f8( d |
    d4-.) a'8( d,  d4-.) a'8( d, |
    d4-.) d'8( d,  d4-.) d'8( d, |
    
    \barNumberCheck 81
    cs'4-.) e,8( cs  cs4-.) \osp #'(-0.5 . 0) f8( d |
    d4-.) a'8( d,  d4-.) a'8( d, |
    d4-.) d'8( d,  d4-.) d'8( d, |
    cs'8 a g fs  e4-.) e-. |
    e4-. e-. e-. e-. |
    fs8( g a cs,  d e fs a, |
    b8 cs d fs,  g a b e, |
    fs8 g a d,)  e4(\prall d8 cs |
    
    \barNumberCheck 89
    d8 fs e d a'2) |
    r8 e( d cs g'2) |
    r8 fs( e d a'2) |
    r8 e( d cs g'2 |
    fs4-.) a8( fs  fs4-.) d'8( a |
    a4-.) \osp #'(-0.5 . 0) fs'8( d  d4-.) a'8( a, |
    b4-.) b'-. \appoggiatura { a8 } g4 \appoggiatura { fs8 } e4 |
    d4(~ d16 e d32 cs d e)  e4.(-\tag layout \prallprall -\tag midi \prall d8 |
    
    \barNumberCheck 97
    d4-.) d'8( fs,  e4-.) cs'4->~ |
    cs4 d8( fs,  e4-.) cs'4->~ |
    cs4 d8( a  b g a e |
    fs8 cs d a) \afterGrace 15/16 e'2-\slurShapeL (\trill { d16 e } |
    d1) |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    R1 |
    \osp #'(-0.5 . 0) d'4(\prall cs8 d e4-.) a,-. |
    fs'4-\slurShapeB (\prall e8 fs g4-.) e-. |
    fs4-. d( b cs |
    d4) fs,( g a |
    b4-.) g-.  cs8( b a g |
    fs4) d'  cs8( b a g |
    fs4-.) d-. g-. g'-. |
    
    \barNumberCheck 9
    g4-. fs-. e( cs |
    d4-.) fs,-. g( a |
    d4-.) fs,-. g( a |
    d,4-.) fs( e g) |
    r8 fs'( e d  cs b a g |
    fs2 g) |
    r8 fs'-\slurShapeG ( e d  cs b a g |
    fs2 g |
    
    \barNumberCheck 17
    a,1) |
    <a' e'>1( |
    <a f'>1) |
    <a e'>1( |
    <a f'>1) |
    <a e'>1_( |
    <g! e'>1) |
    <f e'>1( |
    
    \barNumberCheck 25
    <f d'>)_( |
    <e d'>)( |
    <e c'>) |
    <e d'>( |
    <e c'>) |
    e,1\fermata |
    e'2 \clef treble r8 b''( a gs) |
    a,2 \clef bass r8 cs( b a |
    
    \barNumberCheck 33
    e2) r8 b'( a gs) |
    a,2 \clef treble r8 cs''( b a) |
    \clef bass e,2 r8 b'( a gs) |
    a,2 \clef treble r8 cs''( b a) |
    \clef bass e,2 r8 b'( a gs) |
    a,1 |
    a1( |
    cs1 |
    
    \barNumberCheck 41
    d2) d_( |
    e2 e, |
    a4) cs_( d e |
    cs4) a_( d e |
    cs4) a_( d) d_( |
    e2 e, |
    a1) |
  }
  \repeat volta 2 {
    R1 |
    
    \barNumberCheck 49
    \osp #'(-0.5 . 0) cs'4(\prall b8 cs  d4-.) e-. |
    fs4-. d-.  cs8( b a g |
    fs4-.) d'-.  cs8( b a cs |
    d4-.) cs( b a) |
    a,1 |
    <a' e'>_( |
    <g e'> |
    << 
      { \voiceTwo fs1) | } 
      \new Voice { \voiceThree e'2( ds) | } 
    >>
    
    \barNumberCheck 57
    \oneVoice <e, e'>1 |
    <a e'>_( |
    <g e'> |
    <fs e'>1) |
    <b d>1 |
    q1-\slurShapeI _( |
    <a d>1 |
    <g d'>1 |
    
    \barNumberCheck 65
    <fs d'>1) |
    \osp #'(-0.5 . -2.5) g8( g' fs e  d c b a |
    g1) |
    \osp #'(-0.5 . -2.5) g8( g' fs e  d c b a |
    g1) |
    r8 fs'( e d  cs b a g |
    fs1) |
    r8 e'( d cs  b a g fs |
    
    \barNumberCheck 73
    e1) |
    r8 d'( cs b  a g fs e |
    \osp #'(0.5 . 0) d1)_( |
    g,1 |
    a1) |
    <a' e'>1( |
    <a f'>1) |
    <a gs'>1 |
    
    \barNumberCheck 81
    << 
      { \voiceThree a'2( e | } 
      \new Voice { \voiceTwo a,1 | } 
    >>
    \oneVoice <a f'>1) |
    <a gs'>1 |
    <a a'>2 r8 a'( g! fs |
    e d cs b  a g fs e |
    d2) fs( |
    g2) g( |
    a2 a, |
    
    \barNumberCheck 89
    d2) \clef treble r8 fs''( e d) |
    \clef bass a,2 r8 e'( d cs) |
    d,2 \clef treble r8 fs''( e d) |
    \clef bass a,2 r8 e'( d cs) |
    d,1-\slurShapeK _( |
    fs1 |
    g1 |
    a2 a, |
    
    \barNumberCheck 97
    d4) fs( g a |
    fs4) d( g a |
    fs4) \osp #'(-0.5 . 0) d( g cs, |
    d4-.) fs,-. g( a |
    d,1) |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s1-\tweak Y-offset #-2 \mf |
    s1-\tweak Y-offset #-1 \f |
    s1\mf |
    s4 s2.-\tweak Y-offset #-1 \cresc
    s1 |
    s1\f |
    s1*2 |
    
    \barNumberCheck 9
    s1 |
    s4 s2.\p |
    s4 s2.\cresc |
    s1 |
    s1\f |
    s1*3 |
    
    \barNumberCheck 17
    s1 |
    s4\p s2.\cresc |
    s1 |
    s4\f s2.\p\cresc |
    s1 |
    s4\f s2.\p |
    s1 |
    s1\cresc |
    
    \barNumberCheck 25
    s1 |
    s4\f s2.\p\cresc |
    s1 |
    s4-\tweak Y-offset #1 \f s2.-\tweak Y-offset #1 \p
      -\tweak Y-offset #1 \cresc |
    s1 |
    s1-\tweak Y-offset #0 \f |
    s2\mf s8 s4\< s8\! |
    s8\f s4.\p s8 s4\< s8\! |
    
    \barNumberCheck 33
    s2\mf s8 s4\< s8\! |
    s8\f s4.\p s8 s4\< s8\! |
    s2\mf s8 s4\< s8\! |
    s8\f s4.\p s8 s4\< s8\! |
    s2\mf s8 s4\< s8\! |
    s4-\tweak Y-offset #-1.5 \f s4..-\tweak Y-offset #-1.5 \p s16
      -\tweak Y-offset #-1 \cresc s4 |
    s1 |
    s1\f |
    
    \barNumberCheck 41
    s1*2 |
    s4 s4..\p s16\cresc s4 |
    s1 |
    s4 s2.\f |
    s1*2 |
  }
  \repeat volta 2 {
    s1\f |
    
    \barNumberCheck 49
    s1*5 |
    s1-\tweak Y-offset #-1.25 \p |
    s1 |
    s1\mf |
    
    \barNumberCheck 57
    s1 |
    s1-\tweak extra-offset #'(0 . 0.5) \p |
    s1 |
    s1-\tweak extra-offset #'(0 . 0.5) \mf |
    s1 |
    s1\p |
    s1 |
    s4 s2.-\tweak Y-offset #-1.5 \f |
    
    \barNumberCheck 65
    s1 |
    s4\> s2.\mf |
    s1*6 |
    
    \barNumberCheck 73
    s1*2 |
    s1\cresc |
    s1 |
    s1-\tweak Y-offset #-1.5 -\tweak extra-offset #'(0 . -0.5) \f |
    s4-\tweak Y-offset #-1.5 \p s2.-\tweak Y-offset #-1 \cresc |
    s1*2 |
    
    \barNumberCheck 81
    s4-\tweak X-offset #-0.25 \f s2.\p\cresc |
    s1*2 |
    s2\f s8.\p s16\cresc s4 |
    s1 |
    s1-\tweak Y-offset #-2 \mf |
    s1*2 |
    
    \barNumberCheck 89
    s2 s8 s4\< s8\! |
    s2\mf s8 s4-\tweak Y-offset #1 \< s8\! |
    s8\f s4.\p s8 s4\< s8\! |
    s2\mf s8 s4\< s8\! |
    s4\f s4..\p s16\cresc s4 |
    s1 |
    s1\f |
    s1 |
    
    \barNumberCheck 97
    \override DynamicLineSpanner.Y-offset = #0.5
    s4 s4..\p s16\cresc s4 |
    s1 |
    s4 s2.\f |
    s1*2 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 2 = 116
    s1*24 |
    
    \barNumberCheck 25
    s1*5 |
    \set Score.tempoHideNote = ##t
    \tempo 2 = 60 s1 |
    \tempo 2 = 116
    s1*2 |
    
    \barNumberCheck 33
    s1*8 |
    
    \barNumberCheck 41
    s1*5 |
    s4 \tempo 2 = 108 s \tempo 2 = 100 s \tempo 2 = 92 s |
    \tempo 2 = 84 s1 |
  }
  \repeat volta 2 {
    \tempo 2 = 116
    s1 |
    
    \barNumberCheck 49
    s1*48 |
    
    \barNumberCheck 97
    s1*3 |
    \tag layout { s1*2 | }
    \tag midi {
      \alternative {
        {
          s4 \tempo 2 = 108 s \tempo 2 = 100 s \tempo 2 = 92 s |
          \tempo 2 = 84 s1 |
        }
        {
          s4 \tempo 2 = 104 s \tempo 2 = 92 s \tempo 2 = 80 s |
          \tempo 2 = 69 s1 |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*6 \break
  s1*5 \pageBreak
  
  % page 2
  s1*6 \break
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*5 \pageBreak
  
  % page 3
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*5 \pageBreak
  
  % page 4
  s1*5 \break
  s1*5 \break
  s1*4 \break
  s1*5 \break
}

\score {
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 9)
         (padding . 1))
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

\score {
  \keepWithTag midi
  \articulate <<
    \new Staff = "upper" << \rightHand \dynamics \tempi >>
    \new Staff = "lower" << \leftHand \dynamics \tempi >>
  >>
  \midi {}
}
