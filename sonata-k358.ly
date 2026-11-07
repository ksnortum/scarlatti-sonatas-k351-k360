%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in D major"
  opus   = "K.358"
  source = "http://ks15.imslp.org/files/imglnks/usimg/7/73/IMSLP914938-PMLP529201-E4548_18-21-Scarlatti_-_Keyboard_Sonatas,_L.409-420.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . -0.5) (0 . 0) (0 . 2) (0 . -3)) \etc
slurShapeB = \shape #'((0 . 0.2) (0 . 0.5) (0 . 0) (0 . 0)) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2.7) (0 . 2.7) (0.2 . 2.7) (0.2 . 2.7))
                      ) \etc
slurShapeD = \shape #'(
                        ((0 . -1) (0 . 1) (0 . 0.5) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeE = \shape #'((0 . -1) (0 . 2) (0 . 1) (0 . -1)) \etc
slurShapeF = \shape #'((0 . 0) (0 . 0) (0 . 1) (0 . -1)) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 1) (0 . 1) (0 . 1))
                        ((0 . 1) (0 . 1) (0 . 0.5) (0 . 0))
                      ) \etc
slurShapeH = \shape #'(
                     ((0 . 0) (0 . 1) (0 . 2) (0 . 0))
                     ((0.3 . 1.2) (0.3 . 1.2) (0 . 0.5) (0 . 0))
                   ) \etc
slurShapeI = \shape #'((0 . 0.2) (0 . 0.3) (0 . 0) (0 . 0)) \etc
slurShapeJ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeK = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeL = \shape #'((0 . -1) (0 . 2) (0 . 1) (0 . 0.3)) \etc
slurShapeM = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0.2) (0.3 . 0.2) (0 . 0) (0 . 0))
                      ) \etc

%
% Music
%

global = {
  \time 3/4
  \key d \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    r8 <d'' fs>16( <e g>  <fs a>8) <d fs>-. <a e'>-. <fs d'>-. |
    <a e'>8-. <d fs>16( <e g>  <fs a>8) <e g>-. <d fs>-. <a e'>-. |
    <fs d'>8 r a'4\prall a\prall |
    a4\prall a\prall a\prall |
    r8 a( g32 fs e16) g8(  fs32 e d16) fs8( |
    e32 d cs16) e8(  d32 cs b16) d8(  cs d16\prall cs32 d |
    e16 a) a( gs)  gs( a) a( gs)  gs( fs e d |
    e16 fs) fs( e)  e( fs) fs( e)  e( d) d( cs) |
    
    \barNumberCheck 9
    cs16( d) d( cs)  cs( d) d( cs)  cs( b) b( a |
    b4.) b8( cs d! |
    e4.) e8( d cs16 b |
    cs16 a') a( gs)  gs( a) a( cs,)  cs( d) d( cs |
    d16 a') a( gs)  gs( a) a( ds,)  ds( e) e( ds |
    e16 b') b( a)  a( gs) gs( fs)  fs( e) e( d! |
    <cs a'>4) q q |
    q4 q q |
    
    \barNumberCheck 17
    <a fs'>4 q-\slurShapeB (~  fs'16 e d cs |
    b16 cs) cs( d  cs d) d( cs  d e) e( ds |
    e16 b') b( a)  a( gs) gs( fs)  fs( e) e( d |
    cs16 a) a( gs)  gs( a) a( gs)  gs( a) a( gs |
    a16 b) b( as)  as( b) b( cs  d e fs d |
    cs8 b16 a) \osp #'(0.5 . 0) a( b a32 gs a b)  b8.(-\tag layout \prallprall
      -\tag midi \prall a16) |
    a16-. a-. a( gs)  gs( a) a( gs)  gs( a) a( gs |
    a16 b) b( as)  as( b) b( cs  d e fs d |
    
    \barNumberCheck 25
    cs8 b16 a) \osp #'(0.5 . 0) a( b a32 gs a b)  b8.(-\tag layout \prallprall
      -\tag midi \prall a16) |
    a16-. \osp #'(-0.5 . 0) a'( gs a  ds, e gs, a  \stemDown ds, e e' cs |
    fs16 d cs b \stemNeutral a b a32 gs a b)  b8.(-\tag layout \prallprall
      -\tag midi \prall a16) |
    a16-. r r8 r4 e'-- |
    r16 fs( e d  d cs b a  b a' a, gs |
    a16-.) r r8 r4 e'-- |
    r16 fs-\slurShapeF ( e d  d cs b a  b a' a, gs |
    a16 e' cs a  e cs a cs  e a cs e |
    
    \barNumberCheck 33
    a,2.) |
  }
  \repeat volta 2 {
    r8 cs16( d  e8) e( d cs |
    d8 fs16 g  a8) d,(  cs d16\prall cs32 d |
    e16 a) a( gs)  gs( a) a( gs)  gs( fs) fs-\slurShapeG ( e |
    fs2~ fs16 e d cs |
    d16 d') d( cs)  cs( d) d( cs)  cs( b) b( as) |
    as16-\slurShapeH ( b fs g  ds e as, b \stemDown fs g e e' |
    d8 cs16 b  fs'8 e16 d  cs8 b16 as |
    
    \barNumberCheck 41
    b16 b') b( as)  as( b) b( a)  a( gs) gs( fs |
    es8-.) d'(~  d16 cs) cs( b)  b( a) a( gs) |
    gs16( a) a( gs)  gs( a) a( g)  g( fs) fs( e |
    ds8-.) c'-\slurShapeI (~  c16 b) b( a)  a( g) g( fs) |
    fs16( g) g( fs)  fs( e) e( d)  d( cs!) cs( b |
    cs8-.) b'(~  b16 a) a( g)  g( fs) fs( e |
    fs4) fs fs |
    <fs d'>4 q q |
    
    \barNumberCheck 49
    <d b' d>4 q q |
    <e d'>16( cs') cs( b)  b( a) a( g)  g( fs) fs( e) |
    e16( d) d( cs)  cs( d) d( cs)  cs( d) d( cs |
    d16 e) e( ds)  ds( e) e( fs  g a b g |
    fs8 e16 d  d e d32 cs d e)  e8.(-\tag layout \prallprall
      -\tag midi \prall d16) |
    d16-. d-. d( cs)  cs( d) d( cs)  cs( d) d( cs) |
    d16( e) e( ds) ds( e) e( fs  g a b g |
    fs8 e16 d  d e d32 cs d e)  e8.(-\tag layout \prallprall
      -\tag midi \prall d16) |
    
    \barNumberCheck 57
    \osp #'(-1 . -1) d16( d' cs d  gs, a cs, d  gs, a a' a, |
    b'16 g fs e  d e d32 cs d e) e8.(-\tag layout \prallprall
      -\tag midi \prall d16) |
    d2( a'4) |
    r16 b( a g  g fs e d  e d' d, cs |
    d2 a'4) |
    r16 b-\slurShapeM ( a g  g fs e d  e d' d, cs |
    d2 a'4) |
    r16 \osp #'(0 . -1.5) b( a g  g fs e d  e d' d, cs |
    
    \barNumberCheck 65
    d16 d' a fs  d a fs a  d fs a d |
    d,2.) |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    R2.*2 |
    r8 <d' fs>16( <e g>  <fs a>8) <d fs>-. <a e'>-. <fs d'>-. |
    <a e'>8-. <d fs>16( <e g>  <fs a>8) <e g>-. <d fs>-. <a e'>-. |
    <<
      { 
        d4.-\slurShapeA ( cs4 d8~ |
        d8 e4 fs8 e d |
        \hideNoteHead cs4.)
      }
      \\
      { 
        \osp #'(0.5 . 0) fs,8( d e4 fs |
        g4 gs2 |
        \oneVoice <a cs>4.)
      }
    >> 
    a8( b cs |
    d,8-.) d'4 d8( cs a |
    
    \barNumberCheck 9
    b,8-.) b'4 gs8( a a, |
    e'16 e') e( ds)  ds( e) e( ds)  ds( cs) cs( b) |
    cs,16( cs') cs( b)  b( cs) cs( b)  b( a) a( gs) |
    a,4( a' g! |
    fs4 b a |
    gs4 e gs) |
    a,16( a') a( gs)  gs( a) a( gs)  gs( fs) fs( e) |
    fs,16( fs') fs( e)  e( fs) fs( e)  e( d) d( cs) |
    
    \barNumberCheck 17
    d,16( d') d( cs)  cs( d) d( cs)  cs( b) b( a |
    b4) b'-\slurShapeC ( a |
    gs4 e gs |
    a4. gs8 fs e |
    d8 cs b a! gs e |
    a8 d e4 e, |
    a8-.) a'4( gs8 fs e |
    d8 cs b a gs e |
    
    \barNumberCheck 25
    a8 d e4 e, |
    a2) cs4( |
    d4 e e,) |
    a'16-\slurShapeD ( a' gs a  ds, e gs, a  a, cs b a |
    d4 e e,) |
    a'16-\slurShapeE ( a' gs a  ds, e gs, a  a, cs b a |
    d4 e e, |
    a,4) a a |
    
    \barNumberCheck 33
    a2. |
  }
  \repeat volta 2 {
    <<
      { 
        r8 e'''16( fs  g!8) g( fs e |
        fs4) r8 \osp #'(0 . -1) a( g fs |
        \oneVoice <a, e'>4.)
      }
      \\
      {
        a2. |
        a2. |
        s4.
      }
    >> 
    a8( b cs |
    d,16 d') d( cs)  cs( d) d( cs)  cs( b) b( as) |
    b,4 b'( a!) |
    g,4_ ( g' g, |
    fs4) fs'( e |
    
    \barNumberCheck 41
    <d b'>4) q q_( |
    <cs b'>4) q q |
    <cs a'>4 q <c a'>_( |
    <b a'>4) q q |
    <b g'>4 q q_( |
    <a g'>4) q q |
    d16( d') d( cs)  cs( d) d( cs)  cs( b) b( as) |
    b,16( b') b( as)  as( b) b( a)  a( g) g( fs) |
    
    \barNumberCheck 49
    \stemDown g,16( g') g( fs)  fs( g) g( fs)  fs( e) e( d |
    \stemNeutral a4)_( a' a,) |
    d'4.-\slurShapeJ ( cs8 b a |
    g8 fs e d! cs a |
    d8 g a4 a,) |
    d'4.-\slurShapeK ( cs8 b a |
    g8 fs e d! cs a |
    d8 g a4 a, |
    
    \barNumberCheck 57
    d2) fs4( |
    g4 a a,) |
    d16-\slurShapeL ( d' cs d  gs, a cs, d  d, fs e d |
    g4 a) a |
    d16-\slurShapeL ( d' cs d  gs, a cs, d  d, fs e d |
    g4 a) a |
    d16-\slurShapeL ( d' cs d  gs, a cs, d  d, fs e d |
    g4 a) a( |
    
    \barNumberCheck 65
    d,4) d d |
    d2. |
  }
}

dynamics = {
  \override TextScript.Y-offset = #-0.5
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s8 s-\tweak Y-offset #-3 \f s2 |
    s2. |
    s8 s\p s2\cresc |
    s2. |
    s2.-\tweak Y-offset #1 \f |
    s2. |
    s8\> s\p s s4\< s16 s\! |
    s8\f\> s4\p s\< s16 s\! |
    
    \barNumberCheck 9
    s8\f\> s\p s2 |
    s2.-\tweak Y-offset #0.5 \cresc |
    s2. |
    s16\f s\p s8\cresc s2 |
    s2.*2 |
    s16\f s\p s8\cresc s2 |
    s2. |
    
    \barNumberCheck 17
    s2.\f |
    s8\> s\p s2\cresc |
    s2.*3 |
    s2.\f |
    s16 s\p s8\cresc s2 |
    s2. |
    
    \barNumberCheck 25
    s2.\f |
    s2.*2 |
    s2.^\sempreF |
    s2.*4 |
    
    \barNumberCheck 33
    s2. |
  }
  \repeat volta 2 {
    s4.-\tweak Y-offset #0.5 \f s-\tweak Y-offset #0.5 \p |
    s4\< s2\f |
    s8 s\p s2 |
    s2. |
    s2.\cresc |
    s2.\f |
    s2. |
    
    \barNumberCheck 41
    s16 s\p s8\cresc s2 |
    s4.\f\> s\p |
    s2.\cresc |
    s4.\f\> s\p |
    s2.\cresc |
    s2.\f |
    \override DynamicLineSpanner.Y-offset = #1
    s8\> s\p s2 |
    s2.\cresc |
    
    \barNumberCheck 49
    s2. |
    s2\f\> s8. s16\! |
    s8\> s\p s s4.\cresc |
    s2. |
    s2.-\tweak Y-offset #-1 \f |
    s16 s8.\p s2\cresc |
    s2. |
    s2.-\tweak Y-offset #-1 \f |
    
    \barNumberCheck 57
    s2.^\sempreF |
    s2.*7 |
    
    \barNumberCheck 65
    s2.*2 |
  }
}

pedal = {
  \repeat volta 2 {
    s2.*8 |
    
    \barNumberCheck 9
    s2.*2 |
    s8\sd s\su s2 |
    s2.*3 |
    s8-\tweak Y-offset #-1 \sd s-\tweak Y-offset #-1 \su s2 |
    s8\sd s\su s2 |
    
    \barNumberCheck 17
    s8\sd s\su s2 |
    s2.*7 |
    
    \barNumberCheck 25
    s2.*8 |
    
    \barNumberCheck 33
    s2. |
  }
  \repeat volta 2 {
    s2.*7 |
    
    \barNumberCheck 41
    s2.*7 |
    s8\sd s\su s2 |
    
    \barNumberCheck 49
    s8-\tweak Y-offset #-1 \sd s-\tweak Y-offset #-1 \su s2 |
    s2.*7 |
    
    \barNumberCheck 57
    s2.*8 |
    
    \barNumberCheck 65
    s2.-\tweak Y-offset #-1 \sd |
    s2.\su |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4 = 120
    s2.*24 |
    
    \barNumberCheck 25
    s2.*7 |
    \set Score.tempoHideNote = ##t
    \tempo 4 = 116 s4 \tempo 4 = 112 s \tempo 4 = 108 s |
    
    \barNumberCheck 33
    \tempo 4 = 104 s2. |
  }
  \repeat volta 2 {
    \tempo 4 = 120
    s2.*7 |
    
    \barNumberCheck 41
    s2.*24 |
    
    \barNumberCheck 65
    \tag layout { s2.*2 | }
    \tag midi {
      \alternative {
        {
          \tempo 4 = 116 s4 \tempo 4 = 112 s \tempo 4 = 108 s |
          \tempo 4 = 104 s2. |
        }
        {
          \tempo 4 = 112 s4 \tempo 4 = 104 s \tempo 4 = 96 s |
          \tempo 4 = 80 s2. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s2.*4 \break
  s2.*3 \break
  s2.*3 \break
  s2.*3 \break
  s2.*3 \pageBreak
  
  % page 2
  s2.*3 \break
  s2.*3 \break
  s2.*3 \break
  s2.*3 \break
  s2.*5 \pageBreak
  
  % page 3
  s2.*4 \break
  s2.*3 \break
  s2.*3 \break
  s2.*3 \break
  s2.*3 \pageBreak
  
  % page 4
  s2.*3 \break
  s2.*3 \break
  s2.*3 \break
  s2.*4 \break
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
    \new Dynamics \pedal
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

\score {
  \keepWithTag midi
  \articulate <<
    \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
    \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
  >>
  \midi {}
}
