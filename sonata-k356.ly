%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in C major"
  opus   = "K.356"
  source = "https://ks15.imslp.org/files/imglnks/usimg/1/1f/IMSLP914727-PMLP528786-E4550_33-39-Scarlatti_-_Keyboard_Sonatas,_L.436-450.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 0) (2 . -1) (0 . 4) (0 . -3)) \etc
slurShapeB = \shape #'(
                        ((0 . -1.5) (0 . 1) (0 . 0.5) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeC = \shape #'((0 . -0.5) (0 . 1) (0 . 0) (0 . 0)) \etc
slurShapeD = \shape #'((0 . -1.5) (0 . 2) (0 . 1) (-0.3 . 0)) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((-0.3 . 0) (0 . 1) (0 . 4) (0 . -9.5))
                      ) \etc
slurShapeF = \shape #'((0 . -1.5) (0 . 2.5) (0 . 2) (0 . -1.5)) \etc
slurShapeG = \shape #'(
                        ((0 . -1.5) (0 . 1) (0 . 1) (0 . 0))
                        ((0 . 0) (0 . 1) (0 . 3) (0 . 2.5))
                      ) \etc
slurShapeH = \shape #'((0 . -1.5) (0 . 1) (0 . 0) (0 . -1.5)) \etc
slurShapeI = \shape #'((0 . -1.5) (0 . 1) (0 . 1) (0 . -1)) \etc
slurShapeJ = \shape #'((0 . 0) (0 . 1) (2 . 6) (5 . 4.5)) \etc
slurShapeK = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 4.75) (0 . 4.75) (0 . 4.75) (0 . 4.75))
                      ) \etc
slurShapeL = \shape #'((0 . 0) (1 . 0) (1 . 1) (3 . -2.5)) \etc
slurShapeM = \shape #'((0 . -0.25) (0 . 1) (0 . 1) (0 . -1)) \etc
slurShapeN = \shape #'((0 . 1.25) (0 . 0.5) (0 . 0) (0 . 0.75)) \etc
slurShapeO = \shape #'(
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeP = \shape #'((0 . -1) (0 . 1) (0 . 1) (0 . -1)) \etc
slurShapeQ = \shape #'(
                        ((0 . -1.5) (0 . 1) (0 . 1) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeR = \shape #'((0 . 0) (0 . -2) (0 . -1) (0 . 0)) \etc
slurShapeS = \shape #'((0 . 0) (0 . -2) (0 . -1) (0 . 0)) \etc
slurShapeT = \shape #'((0 . 0) (5 . 1) (15 . 0) (18 . -11)) \etc
slurShapeU = \shape #'((0 . 0) (0 . 0) (0 . 1) (0 . 0)) \etc
slurShapeV = \shape #'((0 . 0) (4 . 1) (2 . 4) (3 . -2.5)) \etc
slurShapeW = \shape #'(
                        ((0 . 0.5) (-1 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeX = \shape #'((0 . 1) (0 . -1) (0 . 0) (0 . 0)) \etc
slurShapeY = \shape #'((0.5 . 0) (0 . -1) (0 . 0) (0 . 0)) \etc
slurShapeZ = \shape #'((0 . -0.5) (0 . 0) (0 . 0) (0 . -0.5)) \etc
slurShapeAA = \shape #'((0.5 . -0.5) (0 . 0) (0 . 0.5) (0 . -0.5)) \etc

moveNoteA = \once \override Staff.NoteHead.extra-spacing-width = #'(0 . 1)

%
% Music
%

global = {
  \time 2/2
  \key c \major
  \beamTripletsOnly.22
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    \partial 2 \grace { g''16( } g4.)(\trill f16 g |
    c4 g) \grace { a16( } g4.)(\trill f16 g |
    c4 g) \grace { a16( } g4.)(\trill f16 g |
    \tuplet 3/2 4 { a8) f( g  a b c } \tupletOff \tuplet 3/2 { b a g  f e d } |
    e4 c) \clef bass \grace { g,16( } g4.)(\trill f16 g |
    c4 g) \grace { a16( } g4.)(\trill f16 g |
    c4 g) \grace { a16( } g4.)(\trill f16 g |
    a4) \clef treble a'4( \tuplet 3/2 { g8 f e  d c b } |
    c4) g''-- \grace { a16( } g4.)(\trill f16 g |
        
    \barNumberCheck 9
    \tuplet 3/2 { a8 c b) } b4(~ \tuplet 3/2 { b8 c d  c b a } |
    \tuplet 3/2 { g8) e'\( d  c b a } \grace { g16( } g4.)\trill f16 g |
    \tuplet 3/2 { a8 c b\) } b4(~ \tuplet 3/2 { b8 c d  c b a } |
    g4) \clef bass g,,-- \grace { a16( } g4.)(\trill f16 g |
    \tuplet 3/2 { a8 c b) } b4(~ \tuplet 3/2 { b8 c d  c b a } |
    \tuplet 3/2 { g8) e'\( d  c b a } \grace { g16( } g4.)\trill f16 g |
    \tuplet 3/2 { a8 c b\) } b4(~ \tuplet 3/2 { b8 c d  c b a } |
    g2) \clef treble \tuplet 3/2 { e''8( f g } g4--) |
        
    \barNumberCheck 17
    \tuplet 3/2 { a8( g f } d'2) \tuplet 3/2 { c8(\prall b c } |
    \tuplet 3/2 { g'8 d b } g4) \tuplet 3/2 { e8( f g } g4--) |
    \tuplet 3/2 { a8( g f } d'2) \tuplet 3/2 { c8-\slurShapeA (\prall b c } |
    \tuplet 3/2 { g'8 d b  g d b  g d b \staffDown \voiceFour g d b } |
    \oneVoice g2*1/2) \oneVoiceUp d''4\( \grace { e16( } d4.)\trill c16 d |
    \tuplet 3/2 { e8 g fs\) } fs4(~ \tuplet 3/2 { fs8 g a  g fs e } |
    \tuplet 3/2 { d8) b'\( a  g fs e } \grace { d16( } d4.)\trill c16 d |
    \tuplet 3/2 { e8 g fs\) }fs4(~ \tuplet 3/2 { fs8 g a  g fs e } |
        
    \barNumberCheck 25
    d4) b''-\slurShapeB ( b4.-\insideSlur \trill a16 b |
    g'4) b,-\slurShapeC ( b4.-\insideSlur \trill a16 b |
    g'4) g,-\slurShapeD ( g4.-\insideSlur \trill fs16 g |
    a4. b8 c4 \tuplet 3/2 { b8 a g } |
    \tuplet 3/2 { 
      fs8)-\slurShapeE ( g a  b c d  e fs g  e d c~ |
      c8 e d  c b c~  c e d  c b c~ |
      c8 d c  b a g  d' a fs d a fs |
    }
    \tuplet 3/2 { d8\noBeam \staffDown \voiceFour a fs \voiceOne d a fs }
      d4) \oneVoiceUp \tuplet 3/2 { a'''8( gs a } |
        
    \barNumberCheck 33
    \tuplet 3/2 { 
      a8 gs a~  a gs a~  a b c  d c b |
      c8 b a)  a'( gs a~  a b c  d c b |
      c8 b a)  f,( d a  gs b e  d c d |
      e8 d e  f d a  gs b e  d c d |
    }
    e4) b''-\slurShapeF ( b4.-\insideSlur \trill c16 d |
    \tuplet 3/2 { b8 a gs  d' c b  f' e d  d c b } |
    a4) a,-\slurShapeG ( a4.-\insideSlur \trill b16 c |
    \tuplet 3/2 { a8 g fs  c' b a  e' d c c b a } |
        
    \barNumberCheck 41
    g4) \clef bass g,-\slurShapeH ( g4.-\insideSlur \trill fs16 g) |
    \tuplet 3/2 { g8( a b)  b\( a b } \grace { c16( } c4)\trill
      \tuplet 3/2 { c8 b c } |
    \tuplet 3/2 { b8\) g\( a  b c d } \grace { c16( } c4)\trill
      \tuplet 3/2 { c8 b c } |
    b4\) \clef treble b''4-\slurShapeI ( b4.-\insideSlur \trill a16 b |
    \tuplet 3/2 { 
      ds8 e b)  b( c gs)  gs( b c) c-\slurShapeAA (\prall ^\trillNatural b c |
      cs8 d! a)  a( b fs  g) g'( fs)  fs( e d) |
      d8( e d)  d( c! b  a c b)  b( a g |
    }
    fs4) \tuplet 3/2 { fs,8( g a  b c d  b a g } |
        
    \barNumberCheck 49
    a4) \clef bass \tuplet 3/2 { fs,8( g a  b c d  b a g } |
    a4) \clef treble \tuplet 3/2 { d''8( a fs  g b g'  fs a, c } |
    <b g'>4) \tuplet 3/2 { \stemDown d,8( a fs  g b g'  fs a, c } |
    <b g'>4) \clef bass \tuplet 3/2 { d,8( a fs  g b g'  fs a, c } |
    <b g'>4) \clef treble \tuplet 3/2 { b''8-\slurShapeZ ( g d' } <g, b>4) r |
    r4 \stemNeutral \tuplet 3/2 { b,,8( g d' } b4) r | 
    \tuplet 3/2 { g'''8-\slurShapeJ ( d b  g d b) } \grace { b'16( }
      a2)\trill |
    \tuplet 3/2 { 
      g8-\slurShapeL ( d b  g d b \staffDown \voiceFour g d b \voiceOne g d b)
    } |
        
    \barNumberCheck 57
    \oneVoiceUp \tuplet 3/2 { g'''''8\( d b  g d b } \grace { b'16( }
      a2)\trill |
    \tuplet 3/2 { 
      g8\) d-\slurShapeM ( fs  e a, c  b d g,  d a' fs |
      g8 b, d  c e a, \clef bass b d g,  d a' fs |
    }
    \moveNoteA g2) \clef treble
  }
  \repeat volta 2 {
    d''4.(\trill c16 d |
    a'4 f!) s2 |
    \voiceOne gs2 gs( |
    a4) \clef bass \oneVoice a,,4\( a4.-\insideSlur \trill gs16 a |
    \tuplet 3/2 { f'8 d gs  a e a, } \grace { e'16( } d4.)\trill c16 b |
    
    \barNumberCheck 65
    c4\) \clef treble c''-- c-- c-- |
    \tuplet 3/2 { e8( d c } c4) bf4.(\trill a16 bf |
    a4) c,-- \osp #'(-2.5 . -0.5) bf4.(\trill a16 bf |
    a4) c,-- bf4.(\trill a16 bf |
    a4) a''( \tuplet 3/2 { c8 bf a } <g ef'>4 |
    <fs d'>4) g'\( \grace { d16( } c4.)\trill bf16 a |
    bf4\) d,-- \grace { d16( } c4.)-\slurShapeY (\trill bf16 a |
    bf4) <bf, d>-- \grace { d16( } c4.)-\slurShapeO (\trill bf16 a |
    
    \barNumberCheck 73
    bf4) bf''4-- bf-- bf-- |
    \tuplet 3/2 { d8( c bf } bf4) af4.(\trill g16 af |
    g4) g'-- \tuplet 3/2 { g8( f ef  d ef c } |
    d4) g,-- \tuplet 3/2 { g8( f ef  d ef c } |
    d4) r r2 |
    R1 |
    r4 d-\slurShapeP ( d4.-\insideSlur \trill c16 d |
    a'4 f) d4.(\trill c16 d |
    
    \barNumberCheck 81
    \tuplet 3/2 { c'8 g e } c4) r2 |
    R1 |
    r4 e-\slurShapeQ ( e4.-\insideSlur \trill d16 e |
    \tuplet 3/2 { 
      gs8 a e)  e( f cs  d e f)  f( e f |
      % Fourth beat, f natural according to an urtext
      fs g! d)  d( e b  c d e)  e( f g) |
      g8( f e)  e( d c)  c( e d  c b a |
    }
    b4) r r2 |
    R1 |
    
    \barNumberCheck 89
    r4 g'' ( g,) \tuplet 3/2 { g8( a b } |
    \tuplet 3/2 { c8 d e } g4) g,-- \tuplet 3/2 { g8( a b } |
    \tuplet 3/2 { c8 d e } g4) g,,-- \tuplet 3/2 { g8( a b } |
    \tuplet 3/2 { c8 d e } g4)  g,-- \tuplet 3/2 { g8( a b } |
    \tuplet 3/2 { \stemDown c8 g c  e c e  g e g } c4) |
    \tuplet 3/2 { a8\( g f  e d c } \grace { e16( } d2)\trill |
    c4\) \stemNeutral \tuplet 3/2 { e,8-\slurShapeX ( c g  f' a, c  d g, b } |
    \tuplet 3/2 { e8 g, c  e g, c  f a, c  d g, b } |
    
    \barNumberCheck 97
    <c e>4) g'''( \tuplet 3/2 { e8 d c } bf4 |
    a4) e'( \tuplet 3/2 { cs8 b! a } g4 |
    fs4) a( \tuplet 3/2 { fs8 e d } c!4 |
    b4) d'( \tuplet 3/2 { b8 a g } f!4 |
    e4) \tuplet 3/2 { e,8-\slurShapeW ( g, c  f a, c  d g, b } |
    \tuplet 3/2 { e8 g, c  e g, c  f a, c  d g, b } |
    <c e>4) \tuplet 3/2 { c''8-\slurShapeR \( d e } \grace { d8( }
      \afterGrace 15/16 d2)\trill { e16 d } |
    c4\) \tuplet 3/2 { c,8-\slurShapeS \( d e } \grace { d8( }
      \afterGrace 15/16 d2)\trill { e16 d } |
    
    \barNumberCheck 105
    c4\) \tuplet 3/2 { c,8\( d e } \grace { d8( } \afterGrace 15/16 d2)\trill
      { e16 d } |
    c4\) \tuplet 3/2 { c''8( c, c'  b b, b' a a, a' } |
    \tuplet 3/2 { g8 g, g'  f f, f' \stemDown e e, e'  d d, d') } |
    \tuplet 3/2 { c'8-\slurShapeT ( g e \stemNeutral c g e) } r2 |
    \tuplet 3/2 { \oneVoiceUp c''8-\slurShapeU \( g e  c g e } \grace { e'16( }
      d2)\trill |
    c4\) <e e'> q q |
    <g g'>4 q q <b, b'> |
    \tuplet 3/2 { 
      <c c'>8-\slurShapeV ( g' e  c g e \staffDown \voiceThree c g e
        \voiceOne c g e) |
    }
    
    \barNumberCheck 113
    \tuplet 3/2 { \oneVoiceUp c''''8-\slurShapeU \( g e  c g e }
      \grace { e'16( } d2)\trill |
    c4\) \tuplet 3/2 { bf'8( g c, } a'4 g) |
    \tuplet 3/2 { b,!8\( d f  e g c, } \grace { e16( } d2)\trill |
    c4\) \tuplet 3/2 { bf8( g c, } a'4 g) |
    \tuplet 3/2 { b,!8\( d f  e g c, } \grace { e16( } d2)\trill |
    c2\)
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    \partial 2 \grace { s16 } s2 |
    s1*8 |
    
    \barNumberCheck 9
    s1*8 |
    
    \barNumberCheck 17
    s1*3 |
    s2. r4 |
    r4 s2. |
    s1*3 |
    
    \barNumberCheck 25
    s1*7 |
    s8 r r4 r s |
        
    \barNumberCheck 33
    s1*8 |
    
    \barNumberCheck 41
    s1*8 |
    
    \barNumberCheck 49
    s1*7 |
    s2 r |
        
    \barNumberCheck 57
    s1*3 |
    s2
  }
  \repeat volta 2 {
    s2 |
    s2 \osp #'(-2.5 . -2.5) d''4._(\trill c16 d |
    \voiceFour gs4 f) d4.-\slurShapeN (\trill c16 b |
    e4) s2. |
    s1 |
    
    \barNumberCheck 65
    s1*40 |
    
    \barNumberCheck 105
    s1*7 |
    s2 r |
    
    \barNumberCheck 113
    s1*5 |
    s2
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
    \partial 2 \grace { s16 } s2 |
    s1*3 |
    s2 \clef bass \voiceThree \grace { e16( } e4.)(\trill d16 e) |
    s2 \grace { f16( } e4.)(\trill d16 e) |
    s2 \grace { f16( } \osp #'(-1 . 0) e4.)(\trill d16 e |
    \oneVoice f,4) s2. |
    s1 |
    
    \barNumberCheck 9
    s1*3 |
    s2 \clef bass \voiceThree \grace { f'16( } e4.)(\trill d16 e) |
    s1 |
    s2 \grace { e16( } e4.)(\trill d16 e) |
    s1*2 |
    
    \barNumberCheck 17
    s1*4 |
    s2 \grace { c'16( } b4.)(\trill a16 b) |
    s1*3 |
    
    \barNumberCheck 25
    s1*32 |
    
    \barNumberCheck 57
    s1*3 |
    s2
  }
  \repeat volta 2 {
    \clef treble b'4.(\trill a16 b |
    <f! c'>4) s2. |
    s1*3 |
    
    \barNumberCheck 65
    s1*48 |
    
    \barNumberCheck 113
    s1*5 |
    s2
  }
}

leftHandLower = \relative {
  \repeat volta 2 {
    \partial 2 \grace { e''16( } e4.)(\trill d16 e |
    c4 e) \grace { f16( } e4.)(\trill d16 e |
    c4 e) \grace { f16( } e4.)(\trill d16 e |
    f,4) f( g) g( |
    c,2) \clef bass \voiceTwo c,2 |
    \oneVoice c,4_( e') \voiceTwo c2 |
    \oneVoice c,4_( e') \voiceTwo c2 |
    s4 \oneVoice f( g g, |
    c2) \clef treble <c'' e>4 q( |
        
    \barNumberCheck 9
    <c f>4) q q q( |
    <c e>4) q q q( |
    <c f>4) q q q( |
    <c e>4) r \clef bass \voiceTwo c,,2 |
    \oneVoice c,4 <c' f> q q |
    \osp #'(0 . -2) c,4_( e') \voiceTwo c2 |
    \oneVoice c,4 <c' f> q q |
    c,2 \clef treble <c''' e>4 q( |
        
    \barNumberCheck 17
    <b d>4) q( <c e>) q( |
    <g d'>4) q( <c e>) q( |
    <b d>4) q( <c e>) q( |
    <g d'>2) r4 \clef bass s |
    % First beat, hidden note is just for the MIDI output
    \hideNoteHead g,,2 \voiceTwo g'2 |
    \oneVoice g,4 <g' c> q q |
    g,4 <g' b> q q |
    g,4 <g' c> q q |
        
    \barNumberCheck 25
    g,2 r |
    \addTenuto {
      r4 \clef treble g''' g g |
      r4 e e e |
      r4 <c e> q q( |
    }
    <c d>4) <b d>( <a c> <g e'> |
    <fs c' d>4) <g c e>( <fs c' d>) <g c e>( |
    <fs c' d>4) \osp #'(0 . 2.5) <g d'>( d) r |
    \clef bass r8 s s2 \clef treble d4( |
        
    \barNumberCheck 33
    <c e>4 <d f!> <c e> <b d> |
    <a e'>4) <d' f>( <c e> <b d> |
    <a e'>4) \clef bass <d,,, d'>( <e e'> <f f'> |
    <e e'>4 <d d'> <e e'> <f f'> |
    <e e'>4) r r \clef treble e'''( |
    <d f>4) q-- q-- q( |
    <c e>2) r4 <c, e>-- |
    q4-- q-- q-- q( |
        
    \barNumberCheck 41
    <b d>4) r r \clef bass <g,, g'>( |
    <c c'>4 <b b'> <a a'>) <d d'>( |
    <g, g'>4) <b b'>( <a a'>) <d d'>( |
    <g, g'>4) r r \clef treble <g''' d'>( |
    <c e>4) q-- q-- q( |
    <b d>4) q-- q-- q( |
    <c e>4) q-- <cs e>-- q( |
    d4) \clef bass d,( b g |
        
    \barNumberCheck 49
    d'4) <d,, d'>( <b b'> <g g'> |
    <d' d'>4) \clef treble c'''( <b d> <a c> |
    <g b>4) \clef bass c,( <b d> <a c> |
    <g b>4) <c,, c'>4( <b b'> <a a'> |
    <g g'>4) r r \clef treble \tupletOff \stemUp \tuplet 3/2 { b'''8( g d' } |
    <g, b>4) r4 \clef bass \stemNeutral \tuplet 3/2 { g,8( d b  g d b } |
    g4) r d''-\slurShapeK ( d, |
    g,4) r4 s2 |
        
    \barNumberCheck 57
    g4 r4 \osp #'(0 . 2) d''( d, |
    g,4) <c c'>4( <d d'>) q( |
    <g, g'>4) c( d) d( |
    g,2) \clef treble
  } 
  \repeat volta 2 {
    \voiceTwo g'''2 |
    s4 \oneVoice <f c'>( <f a>) q( |
    <d b'>4) q-- q-- q( |
    <c a'>4) r r \clef bass <c,, c'>( |
    <d d'>4 <c c'> <b b'>) <e e'>( |
    
    \barNumberCheck 65
    a2) r4 \clef treble <f''' a>( |
    <e g>4) q-- q-- q( |
    f4) <f, a>-- <c g'> q( |
    f4) \clef bass <f, a>-- <c g'> q( |
    <f, f'>4) r r \clef treble <c''' ef>( |
    <c d>4) <bf d>_( a d, |
    g4) bf_( a d, |
    g4) \clef bass <g,, g'>( <a a'> <d, d'> |
    
    \barNumberCheck 73
    <g g'>4) r r \clef treble <ef''' g>( |
    <d f>4) q_( <c f>) q_( |
    <b! f'>4) <c ef>-- <af c> q( |
    <g b>4) q( <af c>) q( |
    <g b>4) \clef bass \tuplet 3/2 { g8( g, g'  f f, f'  e! e, e' } |
    \tuplet 3/2 { d8 d, d'  c c, c'  b b, b'  a a, a' } |
    <g, g'>4) r r \clef treble <g'' b>( |
    <f d'>4) q( <f b>) q( |
    
    \barNumberCheck 81
    <e c'>4) \clef bass \tuplet 3/2 { c8( c, c'  b b, b'  a a, a' } |
    \tuplet 3/2 { g8 g, g'  f f, f'  e e, e'  d d, d' } |
    <c, c'>4) r r \clef treble c'''( |
    <f, a>4) q-- q-- q( |
    <e g>4) q-- q-- q( |
    <f a>) q( <fs a>) q( |
    <g b>4) \clef bass \tuplet 3/2 { g,8( g, g'  f! f, f'  e e, e' } |
    \tuplet 3/2 { d8 d, d'  c c, c'  b b, b'  a a, a' } |
    
    \barNumberCheck 89
    <g, g'>4) r r \clef treble f''''( |
    e4 c g) f'( |
    e4 c) r f,( |
    e4 c g) f'( |
    e4 c) r <e g>( |
    <f a>4) q( g g, |
    c4) \clef bass <c,, c'> q q |
    r4 q q q |
    
    \barNumberCheck 97
    q4 r r \clef treble <c''' g'>_(
    <cs g'>) q-- q-- cs( |
    d4) <fs, a>-- q-- q( |
    g4) <b d>-- q-- q( |
    c4) \clef bass <c,,, c'> q q |
    r4 q q q |
    q4 \clef treble e'''( f g |
    e4) e,( f g |
    
    \barNumberCheck 105
    e4) \clef bass <e,, e'>( <f f'> <g g'> |
    <c, c'>4) \tuplet 3/2 { c''8( c, c'  b b, b' a a, a' } |
    \tuplet 3/2 { g8 g, g'  f f, f'  e e, e'  d d, d' } |
    <c, c'>4) r \tuplet 3/2 { c''8 g e  c g e } |
    c4 <c c'>( <f f'> <g g'> |
    <c, c'>4) \tuplet 3/2 { c''8( c, c'  b b, b' a a, a' } |
    \tuplet 3/2 { g8 g, g'  f f, f'  e e, e'  d d, d' } |
    <c, c'>4) r s2 |
    
    \barNumberCheck 113
    c4 <c c'>( <f f'> <g g'> |
    <c, c'>4) \clef treble <e'' g>( <f a> <e g> |
    <d f>4 <c e>) \clef bass <f, f'>( <g g'> |
    <c, c'>4) <e g>( <f a> <e g> |
    <d f>4 <c e>) <f, f'>( <g g'> |
    <c, c'>2) \clef treble
  } 
}

leftHand = {
  \global
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    \partial 2 \grace { s16 } s2\p |
    s1*8 |
    
    \barNumberCheck 9
    s1*8 |
    
    \barNumberCheck 17
    s2. \tuplet 3/2 { s4\< s8\! } |
    \override DynamicLineSpanner.Y-offset = #-5
    s4\> s2.\! |
    s2. \tuplet 3/2 { s4\< s8\! } |
    s1\mf |
    s1*4 |
    
    \barNumberCheck 25
    \override DynamicLineSpanner.Y-offset = #0.5
    s4 s2.\p |
    s1*2 |
    s2\< s\! |
    s1 |
    s1\cresc |
    s2 s\mf |
    s1 |
    
    \barNumberCheck 33
    s1|
    s4 s2.\p |
    s4 s2.-\tweak Y-offset #-2 \mf |
    s1 |
    \override DynamicLineSpanner.Y-offset = #-4
    s4 s2.\p |
    \tuplet 3/2 { s4.\< s4 s8\!  s4.\> s4 s8\! } |
    s4 s2.\p |
    s1 |
    
    \barNumberCheck 41
    s1*3 |
    \override DynamicLineSpanner.Y-offset = #1
    s4 s2\< s8. s16\! |
    \tuplet 3/2 { s4\> s8\! s2. s4\< s8\! } |
    \tuplet 3/2 { s4\> s8\! } s4 s2\f |
    s1 |
    s4 s2.-\tweak Y-offset #0 \p |
    
    \barNumberCheck 49
    s4 s2.\mf |
    s4 s2.\p |
    s4 s2.\mf |
    \override DynamicLineSpanner.Y-offset = #-0
    s4 s2.\p |
    s1*2 |
    \tuplet 3/2 { s4.\< s4 s8\! } s2\f |
    s1 |
    
    \barNumberCheck 57
    s1 |
    s1\dim |
    s1 |
    s2\p
  }
  \repeat volta 2 {
    s4..\p\< s16\! |
    s4\> s\! s4..-\tweak Y-offset #-1.5 \p-\tweak Y-offset #-1 \< s16\! |
    s4-\tweak Y-offset #-1 \> s4\! s2-\tweak Y-offset #-3.25 \mf |
    s1*2 |
    
    \barNumberCheck 65
    s4 s2\p\< s4\! |
    s1\mf |
    s4 s2.\p |
    s4 s2.-\tweak Y-offset #-2 -\tweak extra-offset #'(0 . 0.25) \mf |
    s4 s\p \tuplet 3/2 { s4\< s8\! } s4\> |
    s4 s2.\p |
    s4 s2.-\tweak Y-offset #-1 \mf |
    s4 s2.-\tweak Y-offset #-1.5 \p |
    
    \barNumberCheck 73
    s1 |
    \override DynamicLineSpanner.Y-offset = #0.5
    s2 s\mf\> |
    s4 s2.\p |
    s1*2 |
    s1-\tweak Y-offset #1 \cresc |
    s4\mf s2.\p |
    s1 |
    
    \barNumberCheck 81
    s1 |
    s1-\tweak Y-offset #0.5 \cresc |
    s4\mf s4\p\< s4.. s16\! |
    \tuplet 3/2 { s4\> s8\! } s2 s4\< |
    \tuplet 3/2 { s4\> s8\! } s2 s4\< |
    s4\> s2.\! |
    s4 s2.\p |
    s1\cresc |
    
    \barNumberCheck 89
    s2.\mf s4\p |
    s1 |
    s2 s\mf |
    s2 s\p |
    s2.\< s4\! |
    s1 |
    s4 s2.-\tweak Y-offset #-1 \p |
    s1 |
    
    \barNumberCheck 97
    s4 s2.\mf |
    s1*3 |
    s4 s2.\p |
    s1 |
    s4 s2.\mf |
    s4 s2.\p |
    
    \barNumberCheck 105
    s4 s2.-\tweak Y-offset #-1.5 \mf |
    s4 s2.\f |
    s1*3 |
    \override DynamicLineSpanner.Y-offset = #-4
    s4 s\p s2\cresc |
    s1 |
    s1\f |
    
    \barNumberCheck 113
    s1 |
    s4 s2.\p |
    s1 |
    s4 s2.\mf |
    s1 |
    s2
  }
}

pedal = {
  \repeat volta 2 {
    \partial 2 \grace { s16 } s2 |
    s4\sd s2.\su |
    s4\sd s2.\su |
    s1*2 |
    s4\sd s2.\su |
    s4\sd s2.\su |
    s1*2 |
    
    \barNumberCheck 9
    s1*4 |
    s4\sd s2.\su |
    s1 |
    s4\sd s2.\su |
    s2\sd s\su |
    
    \barNumberCheck 17
    s1*5 |
    s4\sd s2.\su |
    s1 |
    s4\sd s2.\su |
    
    \barNumberCheck 25
    s1\sd |
    s2.\su s4\sd |
    s2\su s\sd |
    s1\su |
    s1*4 |
    
    \barNumberCheck 33
    s1*8 |
    
    \barNumberCheck 41
    s1*3 |
    s2-\tweak Y-offset #-3 \sd s\su |
    s1*4 |
    
    \barNumberCheck 49
    s1*4 |
    s1-\tweak Y-offset #-1 \sd |
    s1 |
    s2\su s-\tweak Y-offset #2 \sd |
    s1\su |
    
    \barNumberCheck 57
    s2 s\sd |
    s1\su |
    s1 |
    s2
  }
  \repeat volta 2 {
    s2 |
    s1 |
    s2 s\sd |
    s1\su |
    s1 |
    
    \barNumberCheck 65
    s1 |
    s2 s-\tweak Y-offset #1 \sd |
    s2-\tweak Y-offset #1 \su s\sd |
    s2\su s\sd |
    s1-\tweak Y-offset #1 \su |
    s2 s\sd |
    s2\su s\sd |
    s2\su s\sd |
    
    \barNumberCheck 73
    s1\su |
    s1*5 |
    s1\sd |
    s2\su s\sd |
    
    \barNumberCheck 81
    s1\su |
    s1 |
    s1-\tweak Y-offset #-1 \sd |
    s1\su |
    s1*4 |
    
    \barNumberCheck 89
    s2.-\tweak Y-offset #-3 \sd s4\su |
    s1*7 |
    
    \barNumberCheck 97
    s1*8 |
    
    \barNumberCheck 105
    s1*3 |
    s1\sd |
    s2\su s-\tweak Y-offset #-1 \sd |
    s4\su s2.\sd |
    s1-\tweak Y-offset #1 -\tag layout \sd -\tag midi \sud |
    s1-\tag layout \sd -\tag midi \sud |
    
    \barNumberCheck 113
    s2\su s-\tweak Y-offset #-1 \sd |
    s1\su |
    s1*2 |
    s2 s\sd |
    s2\su
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Andante" 2 = 69
    \partial 2 \grace { s16 } s2 |
    s1*8 |
    
    \barNumberCheck 9
    s1*48 |
    
    \barNumberCheck 57
    s1*2 |
    \set Score.tempoHideNote = ##t
    s4 \tempo 2 = 63 s \tempo 2 = 58 s \tempo 2 = 54 s |
    \tempo 2 = 50 s2
  }
  \repeat volta 2 {
    \tempo 2 = 69
    s2 |
    s1*4 |
    
    \barNumberCheck 65
    s1*48 |
    
    \barNumberCheck 113
    s1*4 |
    \tag layout { s1 | s2 }
    \tag midi {
      \alternative {
        {
          s4 \tempo 2 = 63 s \tempo 2 = 58 s \tempo 2 = 54 s |
          \tempo 2 = 50 s2
        }
        {
          s4 \tempo 2 = 60 s \tempo 2 = 54 s \tempo 2 = 48 s |
          \tempo 2 = 30 s2
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  \grace { s16 } s2 s1*4 \break
  s1*5 \break
  s1*4 \break
  s1*4 \break
  s1*4 \pageBreak
  
  % page 2
  s1*4 \break
  s1*4 \break
  s1*3 \break
  s1*3 \break
  s1*4 \pageBreak
  
  % page 3
  s1*4 \break
  s1*4 \break
  s1*4 \break
  s1*4 \break
  s1*4 s2 \break
  
  % page 4
  s2 s1*4 \break
  s1*4 \break
  s1*4 \break
  s1*4 \break
  s1*4 \pageBreak
  
  % page 5
  s1*3 \break
  s1*3 \break
  s1*4 \break
  s1*4 \break
  s1*4 \pageBreak
  
  % page 6
  s1*4 \break
  s1*4 \break
  s1*4 \break
  s1*4 \break
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

% Can't use articluate.ly because of the initial grace note bug
% \include "articulate.ly"

\score {
  \keepWithTag midi
  \unfoldRepeats <<
    \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
    \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
  >>
  \midi {}
}
