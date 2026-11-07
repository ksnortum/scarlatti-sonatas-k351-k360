%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in B♭ major"
  opus   = "K.351"
  source = "https://ks15.imslp.org/files/imglnks/usimg/5/53/IMSLP914630-PMLP528020-E4613_20-25-Scarlatti_-_Keyboard_Sonatas,_Supp_30-45.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 1) (0 . 2) (0 . 2))
                        ((0.3 . 2.7) (0.3 . 2.7) (0 . 2.7) (0 . 2.7))
                      ) \etc
slurShapeB = \shape #'((0 . 0) (0 . 1) (0 . 3) (0 . 1)) \etc
slurShapeC = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . 0)) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 1) (0 . 2) (0 . 1))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeE = \shape #'((0 . 0) (0 . 0) (0 . 3) (0 . 0)) \etc
slurShapeF = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -0.5)) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 1.5) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeH = \shape #'((0 . -1) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeJ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeK = \shape #'((0 . 0) (0 . 1) (0 . 3) (0 . 1)) \etc
slurShapeL = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . 0)) \etc
slurShapeM = \shape #'(
                        ((0 . 0) (0 . 1) (0 . 1) (0 . 0.5))
                        ((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeN = \shape #'((0 . 0) (0 . 1) (0 . 3.5) (0 . -1)) \etc
slurShapeO = \shape #'(
                        ((0 . 0) (0 . 1) (0 . 3) (0 . 0))
                        ((0 . 2) (0 . 2) (0 . 2) (0 . 2))
                      ) \etc
slurShapeP = \shape #'(
                         ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                         ((0 . 0) (0 . 0) (0 . 0) (0 . -0.5))
                       ) \etc
slurShapeQ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . -1) (0 . 0.75))
                      ) \etc
slurShapeR = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeS = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 2) (0 . 2.5))
                      ) \etc
slurShapeT = \shape #'((0 . 0) (0 . 2) (0 . 3) (0 . -1)) \etc
slurShapeU = \shape #'((0 . 0) (0 . 1.5) (0 . 3) (0 . 1)) \etc
slurShapeV = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . 0)) \etc
slurShapeW = \shape #'(
                        ((0 . 0) (0 . 1.5) (0 . 1.5) (0 . 0))
                        ((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeX = \shape #'((0 . 0) (0 . 1) (0 . 4) (0 . -1)) \etc
slurShapeY = \shape #'((0 . 0) (0 . 0) (0 . 1) (0 . 0)) \etc
slurShapeZ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0.5) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeAA = \shape #'(
                         ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                         ((0 . 0) (0 . 1) (0 . 1) (0 . -0.2))
                       ) \etc
slurShapeAB = \shape #'(
                         ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                         ((0 . 0) (0 . 1) (0 . 1) (0 . -0.3))
                       ) \etc
slurShapeAC = \shape #'(
                         ((0 . 0) (0 . 1) (0 . 1) (0 . 0))
                         ((0 . 0) (0 . 1) (0 . 1) (0 . 0))
                         ((0 . 0) (0 . 1) (0 . 1) (0 . 0))
                         ((0 . 0) (0 . 2) (0 . 2) (0 . -1.5))
                       ) \etc
slurShapeAD = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . 0.5)) \etc
slurShapeAE = \shape #'(
                         ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                         ((0.3 . 0) (0.3 . 0.5) (0 . 0) (0 . 0.5))
                       ) \etc
slurShapeAF = \shape #'(
                         ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                         ((0.3 . 2.7) (0.3 . 2.7) (0 . 2.7) (0 . 2.7))
                       ) \etc
slurShapeAG = \shape #'(
                         ((0 . -0.5) (0 . 0) (0 . 0) (0 . 0))
                         ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                       ) \etc
slurShapeAH = \shape #'(
                         ((0 . -1) (0 . -0.5) (0 . 0) (0 . 0))
                         ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                       ) \etc
slurShapeAI = \shape #'((0 . 0.3) (0 . 0.3) (0 . 0) (0 . 0)) \etc
slurShapeAJ = \shape #'((0 . 0) (0 . 0.3) (0 . 0.3) (0 . 0)) \etc
slurShapeAK = \shape #'((0 . -0.2) (0 . 0.2) (0 . 0.2) (0 . 0)) \etc

%
% Music
%

global = {
  \time 2/2
  \key bf \major
}

rightHand = \relative {
  \global
  r4 \osp #'(0 . -0.5) f''--( f d |
  f4) \acciaccatura { a8 } \tuplet 3/2 { g8( f ef } d4 c |
  d4) \osp #'(0 . -0.5) d--( d bf |
  d4) \acciaccatura { f8 } \tupletOff 
    \tuplet 3/2 { \osp #'(0 . -0.5) ef8( d c } bf4 a |
  bf4) \tuplet 3/2 { d8-\slurShapeA \( bf f' } f,4 \grace { ef16( }
    \afterGrace 15/16 ef4)\trill { d16 ef } |
  d4\) \tuplet 3/2 { d'8-\slurShapeB \( bf f' } f,4 \grace { ef16( }
    \afterGrace 15/16 ef4)\trill { d16 ef } |
  d4\) \tuplet 3/2 { bf'8-\slurShapeC \( a d } c4 \grace { bf16( }
    \afterGrace 15/16 bf4)\trill { a16 bf } |
  a4\) \tuplet 3/2 { bf8-\slurShapeC \( a d } c4 \grace { bf16( }
    \afterGrace 15/16 bf4)\trill { a16 bf } |
  
  \barNumberCheck 9
  a4\) bf'-\slurShapeD \( c,~ \tuplet 3/2 { c8 d ef } |
  \tuplet 3/2 { d8 ef f  ef[ d c] } bf4 \grace { a16( } \afterGrace 15/16
    a4)\trill { g16 a } |
  bf4\) bf'-\slurShapeE \( c,~ \tuplet 3/2 { c8 d ef } |
  \tuplet 3/2 { d8 ef f  g[ ef c] } bf4 \grace { a16( } \afterGrace 15/16
    a4)\trill { g16 a } |
  \bar "||"
  \time 3/8
  bf8\)( f bf) |
  bf8( a c) |
  c8( bf d) |
  d8( c ef |
  
  \barNumberCheck 17
  d8 f bf,) |
  bf8( a c) |
  c8( bf d) |
  d8( c ef |
  d4) f8-. |
  f8( c ef |
  d4) f8-. |
  f8( c ef |
  
  \barNumberCheck 25
  d4) bf'8-. |
  bf8( c, a') |
  a8( bf, g') |
  g8( f ef |
  d4) f8-. |
  f8( e g) |
  g8( f a) |
  a8( g bf |
  
  \barNumberCheck 33
  a4) c8-. |
  c8( g bf |
  a4) c8-. |
  c8( g bf) |
  a16( g f e d c |
  d16 c bf a g f |
  e8-.) d'-\slurShapeG ( bf~ |
  bf8 g' g, |
  
  \barNumberCheck 41
  a8) d( bf~ |
  bf8 g' g, |
  a4) f'8-\slurShapeH \( |
  \grace { g16( } f8)\trill e-.\) f-. |
  c'8-. bf-. a-. |
  g16( bf a g f e |
  f4) f8-\slurShapeH \( |
  \grace { g16( } f8)\trill e-.\) f-. |
  
  \barNumberCheck 49
  c'8-. bf-. a-. |
  g16( bf a g f e |
  \bar "||"
  \time 2/2
  f4) f--( f d |
  f4) \acciaccatura { a8 } \tuplet 3/2 { g8( f ef! } d4 c |
  d4) \osp #'(0 . -0.5) d--( d bf |
  d4) \acciaccatura { f8 } \tupletOff \tuplet 3/2 { ef8-\slurShapeI ( d c }
    bf4 a |
  bf4) \tuplet 3/2 { d8-\slurShapeK \( bf f' } f,4 \grace { ef16( }
    \afterGrace 15/16 ef4)\trill { d16 ef } |
  d4\) \tuplet 3/2 { d'8-\slurShapeK \( bf f' } f,4 \grace { ef16( }
    \afterGrace 15/16 ef4)\trill { d16 ef } |
  
  \barNumberCheck 57
  d4\) \tuplet 3/2 { bf'8-\slurShapeL \( a d } c4 \grace { bf16( }
    \afterGrace 15/16 bf4)\trill { a16 bf } |
  a4\) \tuplet 3/2 { bf8-\slurShapeM \( a d } c4 \grace { bf16( }
    \afterGrace 15/16 bf4)\trill { a16 bf } |
  a4\) bf'-\slurShapeN \( c,~ \tuplet 3/2 { c8 d ef } |
  \tuplet 3/2 { d8 ef f  ef[ d c] } bf4 \grace { a16( } \afterGrace 15/16
    a4)\trill { g16 a } |
  bf4\) bf'-\slurShapeO \( c,~ \tuplet 3/2 { c8 d ef } |
  \tuplet 3/2 { d8 ef f  g[ ef c] } bf4 \grace { a16( } \afterGrace 15/16
    a4)\trill { g16 a } |
  \bar "||"
  \time 3/8
  bf8\)( f bf) |
  \acciaccatura { c8 } bf8( a c) |
  
  \barNumberCheck 65
  \acciaccatura { d8 } c8( bf d) |
  \acciaccatura { ef8 } d8( c ef |
  d4) ef8-. |
  \acciaccatura { f8 } ef8( d f) |
  \acciaccatura { g8 } f8( ef g) |
  \acciaccatura { af8 } g8( f af) |
  af8( g) c,-. |
  \acciaccatura { d8 } c8( b d) |
  
  \barNumberCheck 73
  \acciaccatura { ef8 } d8( c ef) |
  \acciaccatura { f8 } ef8( d f |
  ef4) g8-. |
  g8( d f |
  ef4) g8-. |
  g8( d f |
  ef4) g8-. |
  \acciaccatura { a!8 } g8( fs a) |
  \acciaccatura { \bracketify bf8 } a8( g bf) |
  \acciaccatura { \bracketify c8 } bf8( a c |
  bf4) d8-. |
  d8( a c |
  bf4) d8-. |
  d8( a c |
  bf8 d) bf-\slurShapeAJ (~ |
  bf16 a g f ef d |
  
  \barNumberCheck 89
  c8-.) c'-. a-\slurShapeAK (~ |
  a16 g fs e d c |
  bf4) g'8-. |
  g8( c,) g'-. |
  g8( bf,) g'-. |
  g8( a,) g'-. |
  g8( g,) g'(~ |
  g16 f! e d cs g' |
  
  \barNumberCheck 97
  f8-.) a-. f-\slurShapeAI (~ |
  f16 ef! d c b f' |
  ef8-.) g-. ef(~ |
  ef16 d c bf a ef' |
  d4) f8-. |
  f8( c ef |
  d4) f8-. |
  \osp #'(-0.5 . 0) f8( c ef |
  
  \barNumberCheck 105
  d8-.) g-. \osp #'(-1 . 0) ef(~ |
  ef8 c' c, |
  d8-.) g-. \osp #'(-1 . 0) ef(~ |
  ef8 c' c, |
  d8-.) d'16( c bf a |
  g16 f ef d c bf |
  a8-.) bf( c |
  d8 ef d |
  
  \barNumberCheck 113
  c8) bf( c |
  d8 ef d |
  c8) f( a, |
  \stemDown bf8 a bf |
  c8) f( a, |
  bf8 a bf |
  \bar "||"
  \time 2/2
  c4) f--( f d |
  f4) \acciaccatura { a8 } \tupletOn \tuplet 3/2 { g8( f ef } d4 c |
  
  \barNumberCheck 121
  \stemNeutral d4) d---\slurShapeR ( d bf |
  d4) \acciaccatura { f8 } \tupletOff \tuplet 3/2 { ef8-\slurShapeT \( d c }
    bf4 \grace { a16( } \afterGrace 15/16 a4)\trill { g16 a } |
  bf4\) \tuplet 3/2 { d8-\slurShapeU \( bf f' } f,4 \grace { ef16( }
    \afterGrace 15/16 ef4)\trill { d16 ef } |
  d4\) \tuplet 3/2 { d'8-\slurShapeU \( bf f' } f,4 \grace { ef16( }
    \afterGrace 15/16 ef4)\trill { d16 ef } |
  d4\) \tuplet 3/2 { bf'8-\slurShapeV \( a d } c4 \grace { bf16( }
    \afterGrace 15/16 bf4)\trill { a16 bf } |
  a4\) \tuplet 3/2 { bf8-\slurShapeW \( a d } c4 \grace { bf16( }
    \afterGrace 15/16 bf4)\trill { a16 bf } |
  a4\) bf'-\slurShapeX \( c,~ \tuplet 3/2 { c8 d ef } |
  \tuplet 3/2 { d8 ef f  ef[ d c] } bf4 \grace { a16( } \afterGrace 15/16
    a4)\trill { g16 a } |
  
  \barNumberCheck 129
  bf4\) bf'-\slurShapeX \( c,~ \tuplet 3/2 { c8 d ef } |
  \tuplet 3/2 { d8 ef f  g[ ef c] } bf4 \grace { a16( } \afterGrace 15/16
    a4)\trill { g16 a } |
  \bar "||"
  bf4\) bf'--( bf d) |
  \appoggiatura { c8 } bf4( a8 g  f ef d c |
  d4) f--( f bf) |
  \appoggiatura { a8 } g4( f8 ef  d c bf a |
  bf8) c( d ef  f d c bf |
  c8 d ef f  g ef d c |
  
  \barNumberCheck 137
  d8) c( d ef  f d c bf |
  c8 d ef f  g ef d c |
  d8) c-\slurShapeY ( d ef  f g af c, |
  b8) af'-\slurShapeZ ( g f  ef d c b |
  c8 d ef f  g a! bf! d, |
  cs8) bf'( a g  f e d cs |
  d4) a'2( g4 |
  fs4) a2( g4 |
  
  \barNumberCheck 145
  fs8) g-\slurShapeAA ( a bf  c a g fs |
  g8 a bf c  d bf a g |
  a8 g a bf  c a g fs |
  g8 a bf c  d bf a g |
  a8 g fs e  d c bf a |
  bf8)( a bf a bf a bf b |
  c8 b c b  c b c d |
  ef8 d ef d ef d ef e |
  
  \barNumberCheck 153
  f8 e f e  f e f g |
  a8 g f e  d c bf a) |
  bf'8-\slurShapeAB ( a g f  g f e d |
  cs8 d e f  g e d c |
  d8 e f g  a f e d |
  e8 d cs bf  a g f e |
  f8)-\slurShapeAC ( e f e  f e f fs |
  g8 fs g fs  g fs g a |
  
  \barNumberCheck 161
  bf8 a bf a  bf a bf b |
  c8 b c b  c b c d |
  ef8 d ef d  ef d ef e |
  f8 e f e  f e f g |
  a8 g a bf  c a g f |
  g8 a bf c  d bf a g |
  a8 g a bf  c a g f |
  ef!8 f g a  bf g f ef |
  
  \barNumberCheck 169
  d8 c d ef  f d c bf |
  c8 d ef f  g ef d c |
  d8 c d ef  f d c b |
  c8 d ef f  g ef d c) |
  bf'8-\slurShapeAD ( a g f  ef d c bf |
  c8 bf a g  f ef d c |
  bf8)-\slurShapeAE ( a bf b  c b c d |
  ef8 d ef e  f e f g |
  
  \barNumberCheck 177
  a8 bf c d  ef! c bf a |
  f'8 d g ef  d c bf a |
  \stemDown bf8)( a bf b  c b c d |
  ef8 d ef e  f e f g |
  a8 f g a  bf a g f |
  ef8 g f ef  d c bf a |
  bf4) <bf d>2( <a c>4) |
  r4 <bf d>2( <a c>4) |
  
  \barNumberCheck 185
  d8-\slurShapeAG ( f ef c  d bf c a |
  bf4) <d f>2( <c ef>4) |
  r4 <d f>2( <c ef>4) |
  \osp #'(-2 . 0) d8( f ef c  d bf c a |
  \stemNeutral bf8 f g ef'  <f, bf d>4--) <f a c>-- |
  bf1 |
  \bar "|." % No volta according to an urtext
}

leftHand = \relative {
  \global
  \clef bass
  bf,2 r4 \osp #'(0 . -0.5) bf'--( |
  bf ef, f a |
  bf2) r4 \osp #'(0 . 2) g4--( |
  g4 ef f f, |
  bf4) bf'( a f |
  bf4) bf( a f |
  bf4) d,( ef g |
  f4) d( ef g |
  
  \barNumberCheck 9
  f4) d( ef f |
  bf4) ef,( f) f( |
  g4) g( a f |
  bf4) \osp #'(-0.5 . 1) ef,( f f, |
  \time 3/8
  bf4) d8( |
  c4 ef8 |
  d4) bf'8( |
  a8 f a |
  
  \barNumberCheck 17
  bf4) d8( |
  c4 ef8 |
  d4) bf8-\slurShapeF ( |
  a8 f a |
  bf8 d bf |
  a4 f8 |
  bf8 d bf |
  a4) f8( |
  
  \barNumberCheck 25
  bf,8 c d |
  ef4 f8 |
  g4) g8( |
  a4 f8 |
  bf8 d bf |
  g4 bf8 |
  a4) \osp #'(-0.5 . 0) f8( |
  e4 c8 |
  
  \barNumberCheck 33
  f8 a f |
  e4 c8 |
  f8 a f |
  e4 c8 |
  f8 g a |
  bf4) bf,8-. |
  c8-. r r |
  e8-. r r |
  
  \barNumberCheck 41
  f8-. r r |
  e8-. r r |
  f8( g a |
  bf4) g8-. |
  a8-. g-. f-. |
  bf8( c c, |
  f8 g a |
  bf4) bf8-. |
  
  \barNumberCheck 49
  a8-. g-. f-. |
  bf8( c c, |
  f2) r4 \osp #'(0 . -0.5) bf--( |
  bf4 ef,! f a |
  bf2) r4 g4---\slurShapeJ ( |
  g4 ef f f, |
  bf4) bf'( a f |
  bf4) bf( a f |
  
  \barNumberCheck 57
  bf4) d,( ef g |
  f4) d( ef g |
  f4) d( ef f |
  bf4 ef, f) f( |
  g4) g( a f |
  bf4 ef, f f,) |
  \time 3/8
  bf'4( d8 |
  c4 ef8 |
  
  \barNumberCheck 65
  d4 bf8 |
  a8 f a |
  bf8 af g |
  f4 af8 |
  g4 ef'8 |
  d8 bf d |
  ef4) ef8-. |
  d4-\slurShapeP ( f8 |
  
  \barNumberCheck 73
  ef4 c8 |
  b8 g b |
  c8 ef c |
  b4) g8-. |
  c8( ef c |
  b4) g8-. |
  c8( ef c |
  a!4) c8( |
  
  \barNumberCheck 81
  bf4) \clef treble g'8-\slurShapeQ ( |
  fs8 d fs |
  g8 bf g |
  fs4 d8 |
  g8 bf g |
  fs4 d8 |
  g4.) |
  \clef bass g,4.( |
  
  \barNumberCheck 89
  a4. |
  d,4. |
  g8 bf) g-. |
  ef4._( |
  d4. |
  c4. |
  bf4. |
  a4. |
  
  \barNumberCheck 97
  d4. |
  g,4. |
  c4. |
  f,4.) |
  bf'8( d bf |
  a4 f8 |
  bf8 d bf |
  a4 f8 |
  
  \barNumberCheck 105
  bf8-.) r r |
  a8-. r r |
  bf8-. r r |
  a8-. r r |
  bf4.( |
  ef,4) ef'8(~ |
  ef8 d c |
  bf8 a bf |
  
  \barNumberCheck 113
  f8) d'( c |
  bf8 a bf |
  f8) f'( ef |
  d8 c bf) |
  f,8-. \osp #'(0 . -1) f'( ef |
  d8 c bf |
  \time 2/2
  f'2) r4 \osp #'(0 . -1) bf--( |
  bf ef, f a |
  
  \barNumberCheck 121
  bf2) r4 g4---\slurShapeS ( |
  g4 ef f f, |
  bf4) bf'( a f |
  bf4) bf( a f |
  bf4) d,( ef g |
  f4) d( ef g |
  f4) d( ef f |
  bf4) ef,( f) f( |
  
  \barNumberCheck 129
  g4) g( a f |
  bf4) \osp #'(0 . 2.5) ef,( f f, |
  bf2) r |
  r4 \clef treble bf''_( a f |
  bf2) r |
  r4 \clef bass \osp #'(0 . -2) ef,( f f, |
  bf,2) r4 bf'( |
  a4 f) f( a |
  
  \barNumberCheck 137
  bf2) r4 bf( |
  a4 f) f( a |
  bf2) r4 af( |
  g4) g \osp #'(0 . 2.5) g( f |
  ef4 c) r bf'( |
  a4) a a( g |
  fs8) d( e fs  g a bf c |
  d8) d,( e fs  g a bf c |
  
  \barNumberCheck 145
  d4) \osp #'(-2 . 0) d,( d' c |
  bf4-.) g-. r g( |
  fs4 d d' c |
  bf4-.) g-. r g( |
  fs4 d) d( fs |
  g4) g g( f! |
  ef4) ef ef( d |
  c4) c' c( bf |
  
  \barNumberCheck 153
  a4) a a( g |
  f) f f f( |
  g4 a bf g |
  a4) a a( g |
  f-.) d-. d-. d'( |
  cs4 a) a( cs |
  d4) d d( c! |
  bf4) bf bf( a |
  
  \barNumberCheck 161
  g4) g g( f |
  ef4) ef ef( d |
  c4) c' c( bf |
  a4) a a( g |
  f4) f f \osp #'(0 . 2.5) f( |
  e4 c) \osp #'(2.5 . 0) c( e |
  f4) f f f( |
  g4) g g( a |
  
  \barNumberCheck 169
  bf4) bf bf bf( |
  a4 f) f( a |
  bf4) bf bf bf( |
  a4 f) f( a |
  bf4 d, ef g |
  f4) f f f-\slurShapeAF ( |
  g4 f ef d |
  c4 bf a g |
  
  \barNumberCheck 177
  f4) f' f( ef |
  d4 ef f) f( |
  g4 f ef d |
  c4 bf a g) |
  f'4( ef d bf |
  ef4) ef( f f,) |
  bf'8( c d ef  f) f,( g a |
  bf8 c d ef  f) f,( g a |
  
  \barNumberCheck 185
  bf4) ef,-\slurShapeAH _( f f, |
  bf8 c d ef  f) f,( g a |
  bf8 c d ef  f) f,( g a |
  bf4) \osp #'(-1 . 0) ef( f ef |
  d4 ef f--) f,-- |
  bf1 |
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  s1-\tweak Y-offset #-4.5 \p |
  s1*7 |
  
  \barNumberCheck 9
  s4 s2.\mf |
  s1 |
  s4 s2.-\tweak Y-offset #0 \p |
  s1 |
  \time 3/8
  s4.\p |
  s4.\cresc |
  s4.*2 |
  
  \barNumberCheck 17
  s8 s4-\tweak Y-offset #0 \mf-\tweak Y-offset #1 \> |
  s4.-\tweak X-offset #0.5 -\tweak Y-offset #1 \p |
  s4.\cresc |
  s4. |
  s4.-\tweak Y-offset #0 \mf |
  s4.*3 |
  
  \barNumberCheck 25
  s4\< s8\! |
  s4.\f |
  s4.*6 |
  
  \barNumberCheck 33
  s4.*16 |
  
  \barNumberCheck 49
  s4.*2 |
  \time 2/2
  s4 s2.\p |
  s1*5 |
  
  \barNumberCheck 57
  s1*2 |
  s4 s2.\mf |
  s1 |
  s4 s2.\p |
  s1 |
  \time 3/8
  s4.-\tweak Y-offset #-1.5 \p |
  s4.-\tweak Y-offset #-1 \cresc |
  
  \barNumberCheck 65
  s4.*2 |
  s4.\mf |
  s4.\cresc |
  s4.*2 |
  s4\f s8-\tweak X-offset #-1.5 \mf |
  s4. |
  
  \barNumberCheck 73
  s4.*7 |
  s4.-\tweak Y-offset #0.5 \cresc |
  
  \barNumberCheck 81
  s4.*2 |
  \override DynamicLineSpanner.Y-offset = #0.5
  s4.\f |
  s4.*5 |
  
  \barNumberCheck 89
  s4.*2 |
  s4 s8\mf |
  s4.*3 |
  s4 s8-\tweak Y-offset #-2 \f |
  s4. |
  
  \barNumberCheck 97
  s4.*4 |
  s4 s8-\tweak extra-offset #'(0 . 0.5) \p |
  s4.*3 |
  
  \barNumberCheck 105
  s8 s4-\tweak Y-offset #-1 \f |
  s4.*5 |
  s8 s4\mf |
  s4. |
  
  \barNumberCheck 113
  s16 s-\tweak Y-offset #-0.5 \cresc s4 |
  s4.*5 |
  \time 2/2
  s4\f s2.\p |
  s1 |
  
  \barNumberCheck 121
  s1*6 |
  s4 s2.\mf |
  s1 |
  
  \barNumberCheck 129
  s4 s2.\p |
  s1 |
  s4 s2.\mf |
  s1*5 |
  
  \barNumberCheck 137
  s8 s2..\p |
  s1 |
  s2.\< s4\mf |
  s1 |
  s2.\< s4\f |
  s1*3 |
  
  \barNumberCheck 145
  s1*5 |
  s4\> s2.\p |
  s1-\tweak Y-offset #-1 \cresc |
  s1 |
  
  \barNumberCheck 153
  s1 |
  s1\mf |
  s1\f |
  s1*3 |
  s4\> s2.\p |
  s1\cresc |
  
  \barNumberCheck 161
  s1*4 |
  s1\mf |
  s4.\< s8\! s4.-\tag midi \ff \> s8\! |
  s1*2 |
  
  \barNumberCheck 169
  s1 |
  s4.\< s8\! s4.-\tag midi \ff \> s8\! |
  s1 |
  s4.\< s8\! s4.-\tag midi \ff \> s8\! |
  s1-\tweak Y-offset #0.5 \f |
  s1 |
  s4\> s2.\p |
  s1\cresc |
  
  \barNumberCheck 177
  s1 |
  s1\mf |
  s4\> s\p s2\cresc |
  s1 |
  s1-\tweak Y-offset #-1.5 \f |
  s1 |
  s4 s2.\mf |
  s1 |
  
  \barNumberCheck 185
  s1 |
  s4 s2.\f |
}

tempi = {
  \tempo "Andante" 2 = 56
  s1*8 |
  
  \barNumberCheck 9
  s1*4 |
  \time 3/8
  \tempo "Allegro" 4. = 112
  s4.*4 |
  
  \barNumberCheck 17
  s4.*32 |
  
  \barNumberCheck 49
  s4.*2 |
  \time 2/2
  \tempo "Andante" 2 = 56
  s1*6 |
  
  \barNumberCheck 57
  s1*6 |
  \time 3/8
  \tempo "Allegro" 4. = 112
  s4.*2 |
  
  \barNumberCheck 65
  s4.*48 |
  
  \barNumberCheck 113
  s4.*6 |
  \time 2/2
  \tempo "Andante" 2 = 56
  s1*2 |
  
  \barNumberCheck 121
  s1*8 |
  
  \barNumberCheck 129
  s1*2 |
  \tempo "Allegro" 2 = 120
  s1*6 |
  
  \barNumberCheck 137
  s1*48 |
  
  \barNumberCheck 185
  s1*4 |
  \set Score.tempoHideNote = ##t
  \tempo 2 = 108 s4 \tempo 2 = 96 s \tempo 2 = 84 s \tempo 2 = 72 s |
  \tempo 2 = 63 s1 |
}

forceBreaks = {
  % page 1
  s1*5 \break
  s1*5 \break
  s1*2 s4.*6 \break
  s4.*11 \break
  s4.*10 \pageBreak
  
  % page 2
  s4.*10 \break
  s4. s1*4 \break
  s1*4 \break
  s1*4 \break
  s4.*10 \pageBreak
  
  % page 3
  \grace { s8 } s4.*10 \break
  s4.*10 \break
  s4.*10 \break
  s4.*11 \break
  s4.*5 s1*3 \pageBreak
  
  % page 4
  s1*5 \break
  s1*5 \break
  \grace { s8 } s1*5 \break
  s1*5 \break
  s1*5 \pageBreak
  
  % page 5
  s1*5 \break
  s1*5 \break
  s1*4 \break
  s1*4 \break
  s1*4 \pageBreak
  
  % page 6
  s1*4 \break
  s1*4 \break
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
