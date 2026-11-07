%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in F major"
  opus   = "K.355"
  source = "https://s9.imslp.org/files/imglnks/usimg/f/f5/IMSLP915026-PMLP528978-E4612_23-26-Scarlatti_-_Keyboard_Sonatas,_Supp_17-29.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . -1)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 1) (0 . 0.5) (0 . -0.5) (0 . -1))
                      ) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 2) (0 . 2.5))
                      ) \etc
slurShapeD = \shape #'((0 . -1.75) (0 . 0) (0 . 1) (0 . -1.5)) \etc
slurShapeE = \shape #'((0 . 0) (0 . 0.5) (0 . 1) (0 . -1)) \etc
slurShapeF = \shape #'((0 . 0) (0 . 0) (0 . 1) (0 . -1.25)) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeH = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 1) (0 . -1))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 1) (0 . -1))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc

%
% Music
%

global = {
  \time 2/2
  \key f \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    a''2-> bf4.(\trill a16 bf |
    c8 d) e,( g  f a c, e |
    d8 f e f  g bf, a bf |
    \afterGrace 15/16 bf2-\insideSlur \trill { a16 bf } a2) |
    a'2-> bf4.(\trill a16 bf |
    c8 d) e,-\slurShapeA ( g  f a c, e |
    d8 c bf a  g f e f |
    \afterGrace 15/16 f2-\insideSlur \trill { e16 f } e2) |
    
    \barNumberCheck 9
    \acciaccatura { a8 } g( fs g a  bf c d ef) |
    ef8( d) d( cs)  cs4( d) |
    \acciaccatura { a8 } g( fs g a  a bf c! d) |
    d8( c) c( b)  b4( c) |
    \acciaccatura { g'8 } f( e f g  a f e f) |
    \acciaccatura { g8 } f-\slurShapeB ( e f g  a f e f |
    e8 g f e  d c b c |
    b4.-\insideSlur -\tag layout \prallprall -\tag midi \prall a8 g2) |
    
    \barNumberCheck 17
    d'2-\slurShapeD (~ d8 f e d |
    e8 c g' e  c' g e c |
    c4-.) d->-\slurShapeI (~ d8 f e d |
    e8 c g' e  c' g e c |
    c4-.) d->(~ d8 f e d |
    e8 a g4~ g8) d'( c4~ |
    c8) a( b c  d,) d( e f |
    c4~ c16 d c32 b c d)  d4.(-\tag layout \prallprall -\tag midi \prall c8 |
    
    \barNumberCheck 25
    c8-.) f( e a  g e d c |
    c4-.) d4->(~ d8 f e d |
    e8 c g' e  c' g e c |
    c4-.) d->-\slurShapeH (~ d8 f e d |
    e8 c g' e  c' g e c |
    c4-.) d->(~ d8 f e d |
    e8 a g4~ g8) d'( c4~ |
    c8) a( b c  d,) d( e f |
    
    \barNumberCheck 33
    c4~ c16 d c32 b c d)  d4.(-\tag layout \prallprall -\tag midi \prall c8 |
    c2) r |
  }
  \repeat volta 2 {
    \acciaccatura { d8 } c( b c d  ef f g af) |
    af8( g) g( fs)  fs4( g~ |
    g8) ef-\slurShapeE ( d ef  f! d ef c |
    \afterGrace 15/16 c2-\insideSlur \trill { b16 c } b2) |
    \acciaccatura { c8 } b( a b c  d ef f g) |
    g8( af) af( g)  g4( af) |
    
    \barNumberCheck 41
    \acciaccatura { bf,!8 } af( g af bf  c d ef f) |
    f8( g) g( f)  f4( g~ |
    g8) f( ef d  c bf a bf |
    g'8 f ef d  c bf a bf |
    g'8 f e! d  c bf a bf |
    \afterGrace 15/16 bf2-\insideSlur \trill { a16 bf } a2) |
    \acciaccatura { g8 } f( e f g  a bf c d) |
    d8( c) c( b)  b4( c) |
    
    \barNumberCheck 49
    f,8( g a b  c d e f) |
    f8( e) e( d)  d4( e) |
    \acciaccatura { g,8 } f8( e f g  a bf c d) |
    d8( c) c( b)  b4( c) |
    bf!8( c d e  f g a bf) |
    bf8( a) a( g)  g4( a~ |
    a8) c-\slurShapeF ( e, g  f a c, e |
    d8 c bf a  g f e f |
    
    \barNumberCheck 57
    d'8 c b a  g f e f |
    \afterGrace 15/16 f2-\insideSlur \trill { e16 f } e2) |
    g'2(~ g8 bf a g |
    a8 c e, g  f a g f |
    f4-.) g4->(~  g8 bf a g |
    a8 c e, g  f a g f |
    f4-.) g4->(~  g8 bf a g |
    a8 d c4~  c8) e,( f4~ |
    
    \barNumberCheck 65
    f8) d8( e f  g,) g( a bf |
    f4~ f16 g f32 e f g)  g4.-\tag layout \prallprall -\tag midi \prall f8 |
    f8-. bf( a d  c f e f |
    f4-.) g4->(~  g8 bf a g |
    a8 c e, g  f a g f |
    f4-.) g4->(~  g8 bf a g |
    a8 c e, g  f a g f |
    f4-.) g4->(~  g8 bf a g |
    
    \barNumberCheck 73
    a8 d c4~  c8) e,( f4~ |
    f8) d8( e f  g,) g( a bf |
    f4~ f16 g f32 e f g)  g4.(-\tag layout \prallprall -\tag midi \prall f8 |
    f8-.) bf( a d  c f e bf' |
    a8 d c bf  a g f e |
    d8) d( e f  g,) g( a bf |
    f4~ f16 e f g)  g4.(-\tag layout \prallprall -\tag midi \prall f8 |
    f8-.) bf( a d  c f e bf' |
    
    \barNumberCheck 81
    a8 d c bf  a g f e |
    d8) d( e f  g,) g( a bf |
    f4~ f16 e f g)  g4.(-\tag layout \prallprall -\tag midi \prall f8 |
    f1) |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    f2( g |
    a2) a( |
    bf2 e, |
    f8 c a c f,2) |
    f'2( g |
    a2) a( |
    bf2 b |
    c8 g e g c,2) |
    
    \barNumberCheck 9
    c'2 c( |
    bf2) bf |
    bf2 bf( |
    a2) a |
    a2 a( |
    b2) b-\slurShapeC ( |
    c2 f, |
    g2 g,) |
    
    \barNumberCheck 17
    g'8( b d f) g,,2( |
    c4-.) d-. e-. f-. |
    g8( b d f) g,,2( |
    c4-.) d-. e-. f-. |
    g8( b d f) \osp #'(-0.5 . -0.5) g,,2( |
    c2 e |
    f2) \osp #'(0 . 2.5) f( |
    g2 g, |
    
    \barNumberCheck 25
    c2) r |
    g'8( b d f) g,,2( |
    c4-.) d-. e-. f-. |
    g8( b d f) g,,2( |
    c4-.) d-. e-. f-. |
    g8( b d f) g,,2_( |
    c2 e |
    f2) \osp #'(-2.5 . 0) f_( |
    
    \barNumberCheck 33
    g2 g, |
    c8 g e g c,2) |
  }
  \repeat volta 2 {
    \grace { s8 } c'2( c' |
    b2) \osp #'(0 . 2) b( |
    c2 af |
    g8 d b d g,2) |
    g'2 g( |
    f2) f |
    
    \barNumberCheck 41
    f2 f( |
    ef2) ef( ef'2) ef |
    ef ef( |
    e!2) e( |
    f8 c a c f,2) |
    f2 f( |
    e2) e( |
    
    \barNumberCheck 49
    d2) d-\slurShapeG ( |
    c2) c( |
    bf2) bf( |
    a2) a( |
    g2) g( |
    f2) f |
    a'2 a( |
    bf2) bf( |
    
    \barNumberCheck 57
    b2) b( |
    c8 g e g c,2) |
    c8( e g c) c,,2 |
    f'4-. g-. a-. bf-. |
    c,8( e g c) c,,2 |
    f'4-. g-. a-. bf-. |
    c,8( e g c) c,,2( |
    f2 a |
    
    \barNumberCheck 65
    bf2) bf'( |
    c2 c, |
    f2) r |
    c8( e g c) c,,2 |
    f'4-. g-. a-. bf-. |
    c,8( e g c) c,,2 |
    f'4-. g-. a-. bf-. |
    c,8( e g c) c,,2( |
    
    \barNumberCheck 73
    f2 a |
    bf2) bf'( |
    c2 c, |
    f2) r |
    r2 f( |
    bf2) bf,( |
    c2 c, |
    f2) r |
    
    \barNumberCheck 81
    r2 f'( |
    bf2) bf,( |
    c2 c, |
    f1) |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    \override DynamicLineSpanner.Y-offset = #-4.5
    s1\f |
    s1*3 |
    s1\p |
    s1*3 |
    
    \barNumberCheck 9
    s2\mf s4.\< s8\! |
    s2 s4.\> s8\! |
    s2 s4.\< s8\! |
    s2 s4.\> s8\! |
    s1\p |
    s1\cresc |
    s1 |
    \override DynamicLineSpanner.Y-offset = #1
    s1\mf |
    
    \barNumberCheck 17
    s1\f |
    s1*7 |
    
    \barNumberCheck 25
    s8 s2..\p |
    s1*4 |
    s2 s\< |
    s2. s4\f |
    s8 s4.\> s s8\! |
    
    \barNumberCheck 33
    s4\p s8..\< s32\! s4.\> s8\! |
    s1 |
  }
  \repeat volta 2 {
    \grace { s8 } s2\mf s4.-\tweak Y-offset #1 \< s8\! |
    s2 s4-\tweak Y-offset #0.5 \> s\! |
    s1*2 |
    s2\mf s4.\< s8\! |
    \override DynamicLineSpanner.Y-offset = #0.5
    s2 s4\> s\! |
    
    \barNumberCheck 41
    s2 s4.\< s8\! |
    s2 s4\> s\! |
    s8 s4.-\tweak Y-offset #0 \p s2\cresc |
    s1*2 |
    s1-\tweak X-offset #0.25 -\tweak Y-offset #1 \f |
    s2\mf s4.\< s8\! |
    s2 s4\> s\! |
    
    \barNumberCheck 49
    s2 s4.\< s8\! |
    s2 s4\> s\! |
    s2 s4.\< s8\! |
    s2 s4\> s\! |
    s1\f |
    s1 |
    s8 s4.\p s2\cresc |
    s1 |
    
    \barNumberCheck 57
    s1 |
    s1-\tweak Y-offset #0 \mf |
    s1\f |
    s1*5 |
    
    \barNumberCheck 65
    s1*2 |
    s8 s2..\p |
    s1*4 |
    s2. s4\< |
    
    \barNumberCheck 73
    s4 s2.\f |
    s8 s4.\> s s8\! |
    s4\p s8 s16.\< s32 s4.\> s8\! |
    s1-\tweak Y-offset #-1 \cresc |
    s1*3 |
    s1-\tweak Y-offset #-1.5 \f |
    
    \barNumberCheck 81
    s1*4 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 2 = 104
    s1*32 |
    
    \barNumberCheck 33
    \set Score.tempoHideNote = ##t
    s2 \tempo 2 = 96 s |
    \tempo 2 = 88 s4 \tempo 2 = 80 s \tempo 2 = 72 s2 |
  }
  \repeat volta 2 {
    \tempo 2 = 104
    \grace { s8 } s1*6 |
    
    \barNumberCheck 41
    s1*40 |
    
    \barNumberCheck 81
    s1*2 |
    \tag layout { s1*2 | }
    \tag midi {
      \alternative {
        {
          s4 \tempo 2 = 96 s \tempo 2 = 88 s \tempo 2 = 80 s |
          \tempo 2 = 72 s1 |
        }
        {
          s4 \tempo 2 = 92 s \tempo 2 = 80 s \tempo 2 = 69 s |
          \tempo 2 = 60 s1 |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s1*5 \break
  s1*5 \break
  \grace { s8 } s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*4 \pageBreak
  
  % page 2
  s1*5 \break
  \grace { s8 } s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*5 \pageBreak
  
  % page 3
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*5 \break
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
