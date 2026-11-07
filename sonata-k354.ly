%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in F major"
  opus   = "K.354"
  source = "https://ks15.imslp.org/files/imglnks/usimg/4/47/IMSLP914779-PMLP528550-E4445_15-18-Scarlatti_-_Keyboard_Sonatas,_L.064-084.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 0) (0 . 0) (0 . 1) (0 . 0)) \etc
slurShapeB = \shape #'((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0)) \etc
slurShapeC = 
  \shape #'((-0.3 . 0.2) (-0.5 . -0.2) (-0.5 . -0.5) (-0.4 . -0.5)) \etc
slurShapeD = 
  \shape #'((-0.3 . 0.2) (-0.7 . -0.2) (-0.9 . -0.5) (-1 . -0.5)) \etc
slurShapeE = \shape #'((0.5 . 0) (0 . -1) (0 . -0.5) (0 . 0)) \etc
slurShapeF = \shape #'((0.5 . -0.75) (0 . -1) (0 . -0.5) (0 . 0)) \etc
slurShapeG = \shape #'((0.5 . -0.75) (0 . -1) (0 . 0) (0 . 0)) \etc
slurShapeH = \shape #'((0 . 0) (0 . 0) (0 . 2) (0 . -1.5)) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . -1.5) (0 . 0) (-0.2 . 1))
                        ((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeJ = \shape #'((0.5 . 0) (0 . -1) (0 . -0.5) (0 . 0)) \etc
slurShapeK = 
  \shape #'((-0.3 . 0.1) (-0.7 . -0.1) (-0.9 . -0.3) (-1 . -0.4)) \etc
slurShapeL = 
  \shape #'((-0.3 . 0.2) (-0.5 . -0.2) (-0.5 . -0.5) (-0.4 . -0.4)) \etc
slurShapeM = \shape #'((0 . -0.6) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeN = \shape #'((0.5 . -0.5) (0 . -1) (0 . -0.5) (0 . 0)) \etc

%
% Music
%

global = {
  \time 3/8
  \key f \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    c'''4.(~ |
    c16  bf a g f e |
    d8 c bf |
    a8 g a) |
    g4.-\tag layout \prallprall -\tag midi \prall |
    d'16( bf a g g' bf, |
    a8) bf16(\prall a32 bf c8-.) |
    d16( bf a g g' bf, |
    
    \barNumberCheck 9
    a8) bf16(\prall a32 bf c8-.) |
    ef16-\slurShapeA \( c bf a f' a, |
    \grace { c32( } \stemDown bf8)\trill a bf\) |
    ef16-\slurShapeA \( c bf a f' a, |
    \grace { c32( } bf8)\trill a bf\) |
    f'16\( d c b g' b, |
    \grace { d32( } c8)\trill b c\) |
    f16\( d c b g' b, |
    
    \barNumberCheck 17
    \grace { d32( } c8)\trill b c~ |
    c16\) c\( a' c, b c |
    \grace { e32( } d8)\trill \bracketAccidental cs? d~ |
    d16\) fs( a c,! b c) |
    \stemNeutral \grace { c16( } b8.)-\slurShapeB (\prall a16 g8) |
    \grace { d'16( c } b4.)( |
    c16 d e f g a) |
    \grace { d,16( c } b4.)( |
    
    \barNumberCheck 25
    c16 d e f g a) |
    \grace { bf!16( a } g4.)( |
    f16 g a bf c d) |
    \grace { g,16( f } e4.)( |
    f16 bf) \grace { a32( } a8.)(\trill g32 f |
    e16 a) \grace { g32( } g8.)(\trill f32 e |
    d16 g) \grace { f32( } f8.)(\trill e32 d |
    c16 f) \grace { e32( } e8.)(\trill d32 c |
    
    \barNumberCheck 33
    b8) \grace { c32( } c8.)(\trill b32 c) |
    \appoggiatura { c16 } d4. |
    <c e>4 <e g>8( |
    <d f>8-.) <c e>-. <b d>-. |
    \grace { d16-\slurShapeC ( } <c e)>4 <e g>8( |
    <d f>8-.) <c e>-. <b d>-. |
    \grace { d16-\slurShapeC ( } <c e)>4 \osp #'(-0.5 . 0) g'8(~ |
    g16 a f e d c |
    
    \barNumberCheck 41
    c'8-.) \grace { b,32( } \afterGrace 15/16 b4)(\trill { a32 b } |
    <c e>4) <e g>8( |
    <d f>8-.) <c e>-. <b d>-. |
    \grace { d16-\slurShapeD ( } <c e)>4 <e g>8( |
    <d f>8-.) <c e>-. <b d>-. |
    \grace { d16-\slurShapeD ( } <c e)>4 \osp #'(-0.5 . 0) g'8(~ |
    g16 a f e d c |
    c'8-.) \grace { b,32( } \afterGrace 15/16 b4)-\slurShapeE (\trill
      { a32 b } |
    
    \barNumberCheck 49
    c16) f( e a g8~ |
    g16 f e d c b |
    gs16 a b c d e32 f |
    e16 d32 c) \grace { d32( } \afterGrace 15/16 d4)-\slurShapeF (\trill
      { c32 d } |
    c16) f( e a g8~ |
    g16 bf a g f e) |
    gs16( a) \acciaccatura { g8 } f16( e d c |
    g8-.) \grace { d'32( } \afterGrace 15/16 d4)-\slurShapeG (\trill
      { c32 d } |
    
    \barNumberCheck 57
    c4.) |
  }
  \repeat volta 2 {
    g'4.(~ |
    g16 f e d c bf |
    a16 g' f e a g |
    f8-\tag layout \prallprall -\tag midi \prall e d) |
    a'4.-\slurShapeH (~ |
    a16 g f e d c |
    b16 a' gs a c a |
    
    \barNumberCheck 65
    gs8-\insideSlur -\tag layout \prallprall -\tag midi \prall fs e) |
    \grace { d16( c } b4.) |
    \grace { b16( a } gs4.) |
    \grace { f'16( e } d4.) |
    \grace { e16( f } g4.) |
    \grace { f16( g } a4.)(~ |
    a16 bf g f e d) |
    cs'16( d) g,( f e d) |
    
    \barNumberCheck 73
    \grace { d16( } cs8.)(\prall b16 a8) |
    <d f>4 <f a>8( |
    <e g>8-.) <d f>-. <cs e>-. |
    \grace { e16( } <d f)>4 <f a>8( |
    <e g>8-.) <d f>-. <cs e>-. |
    <d a'>4 c'8( |
    bf8-.) a-. g-. |
    <d a'>4 c'8( |
    
    \barNumberCheck 81
    bf8-.) a-. g-. |
    <c, g'>4 bf'8( |
    a8-.) g-. f-. |
    <c g'>4 bf'8( |
    a8-.) g-. f-. |
    \grace { c16(^\aTempo d } ef4.) |
    \grace { d16( e! } f4.)( |
    e8) \grace { f32( } f8.)(\trill e32 f |
    
    \barNumberCheck 89
    g8) \grace { f32( } f8.)(\trill e32 f |
    g8) \grace { f32( } f8.)(\trill e32 f) |
    \appoggiatura { f16 } g4. |
    <f a>4 <a c>8( |
    <g bf>8-.) <f a>-. <e g>-. |
    \grace { g16-\slurShapeK ( } <f a)>4 <a c>8( |
    <g bf>8-.) <f a>-. <e g>-. |
    \grace { g16-\slurShapeL ( } <f a)>4 c'8(~ |
    
    \barNumberCheck 97
    c16 d bf a g f) |
    f16( g) \afterGrace 15/16 g4-\slurShapeJ (\trill { f32 g }
    f16) c( a f a c |
    <f, a>4) \stemUp <a c>8( |
    <g bf>8-.) <f a>-. <e g>-. |
    \grace { g16( } <f a)>4 <a c>8( |
    <g bf>8-.) <f a>-. <e g>-. |
    \grace { g16( } <f a)>4 \stemDown c'8(~ |
    
    \barNumberCheck 105
    c16 d bf a g f) |
    \stemNeutral f16( g) \afterGrace 15/16 g4(\trill { f32 g }
    f16) bf( a d c8~ |
    c16) f( e g f8~ |
    f16) g( fs g a bf32 c |
    a16 g32 f) \grace { g32( } \afterGrace 15/16 g4)-\slurShapeN (\trill 
      { f32 g } |
    f16) \osp #'(0 . 1.5) bf( a d c8~ |
    c16 bf a g f e |
    
    \barNumberCheck 113
    d16 c bf a g f |
    e16 d c bf a g |
    f4.) |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    % The \after is so that the \p doesn't conflict with the \f in dynamics
    \after 512 ^\p f8( a c |
    f8 g a |
    bf8 a g |
    f8 e f) |
    c4. |
    e8-.( e-.) e( |
    f8) f f |
    e8-.( e-.) e( |
    
    \barNumberCheck 9
    f8) f f |
    \addStaccato {
      <f, ef'>8( q q) |
      <f d'>8( q q) |
      <f ef'>8( q q) |
      <f d'>8( q q) |
      q8( q q) |
      <e c'>8( q q) |
      <f d'>8( q q) |
      
      \barNumberCheck 17
      <e c'>8( q q) |
      <d c'>8( q q) |
      <d b'>8( q q) |
      <d a'>8( q q) |
    }
    g8( g,4) |
    \addStaccato {
      <g' f'>8( q q) |
      <g e'>8( q q) |
      <g f'>8( q q) |
      
      \barNumberCheck 25
      <g e'>8( q q) |
      q8( q q) |
      <a f'>8( q q) |
    }
    <bf g'>-.( q-.) q( |
    <a f'>8-.) q-. q( |
    <g e'>8) q q( |
    <f d'>8) q q( |
    <e c'>8) q q( |
    
    \barNumberCheck 33
    d8) e( c |
    g4.) |
    \osp #'(0 . -1.5) e'16( c g' e c' c, |
    g4.) |
    \osp #'(0 . -1.5) e'16( c g' e c' c, |
    g4.) |
    e'16( c g' e c' e, |
    f8) f-.( f-.) |
    
    \barNumberCheck 41
    \osp #'(0 . 2.5) g4( g,8) |
    \osp #'(0 . -1.5) e'16( c g' e c' c, |
    g4.) |
    \osp #'(0 . -1.5) e'16( c g' e c' c, |
    g4.) |
    e'16( c g' e c' e, |
    f8) f-.( f-.) |
    \osp #'(0 . 2.5) g4( g,8 |
    
    \barNumberCheck 49
    c4.) |
    \addStaccato {
      e8( e e) |
      f8( f f) |
    }
    g4( g,8 |
    c8) c-.( c-.) |
    \addStaccato {
      e8( e e) |
      f8( f f) |
    }
    g4 g,8( |
    
    \barNumberCheck 57
    c,4.) |
  }
  \repeat volta 2 {
    \after 512 ^\p c'8( e g |
    c4. |
    cs8) cs-. cs-. |
    d8( a d,) |
    \after 512 ^\p d8( f a |
    d4. |
    ds8) ds-.( ds-.) |
    
    \barNumberCheck 65
    e8( b e,) |
    \addStaccato {
      e'8( e e) |
      <d f>8( q q) |
      q8( q q) |
      <cs e>8( q q) |
      <d f>8( q q) |
      <g, g'>8( q q) |
      <g, g'>8( q q) |
    }
    
    \barNumberCheck 73
    <a a'>4. |
    f'16( d a' f d' a) |
    a,4. |
    f'16( d a' f d' a) |
    a,4. |
    \osp #'(-0.5 . -0.5) fs'16( d a' fs d' d, |
    g,4.) |
    fs'16( d a' fs d' d, |
    
    \barNumberCheck 81
    g,4.) |
    e'16( c g' e c' c, |
    f,4.) |
    e'16( c g' e c' c, |
    f,4.) |
    \addStaccato {
      <a' c>8( q q) |
      <bf d>8( q q) |
    }
    \override Parentheses.font-size = #-3
    <g \parenthesize bf>8-. a( f |
    
    \barNumberCheck 89
    c-.) a'( f |
    c-.) a'( f) |
    c,4. |
    \osp #'(-1.5 . -0.5) a''16( f c' a f' f, |
    c4.) |
    a'16-\slurShapeI ( f c' a f' f, |
    c4.) |
    a'16( f c' a f' a, |
    
    \barNumberCheck 97
    bf8) bf,-.-\slurShapeM ( bf'-. |
    c4) c,8( |
    f,4.) |
    a16( f c' a f' f, |
    c4.) |
    a'16( f c' a f' f, |
    c4.) |
    a'16( f c' a f' a, |
    
    \barNumberCheck 105
    bf8) bf,-.( bf'-. |
    c4) c,8( |
    f8) f-.( f-.) |
    \addStaccato {
      a'8( a a) |
      bf8( bf bf) |
    }
    c4( c,8 |
    f8) f-.( f-.) |
    \addStaccato {
      a,8( a a) |
      
      \barNumberCheck 113
      bf8( bf bf) |
    }
    c4( c,8 |
    f4.) |
  }
}

dynamics = {
  \override TextScript.Y-offset = #-0.5
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4.\f |
    s4.\p |
    s4.*6 |
    
    \barNumberCheck 9
    s4.*5 |
    s4.\mf |
    s4.*2 |
    
    \barNumberCheck 17
    s4.*3 |
    s16 s\p s4 |
    s4. |
    s8\f s4\p |
    s4. |
    s8\f s4\p |
    
    \barNumberCheck 25
    s4. |
    s8\f s4\p |
    s4. |
    s4.\f |
    s4.*2 |
    s4.\dim |
    s4. |
    
    \barNumberCheck 33
    s4.-\tweak Y-offset #-1.5 \p |
    s4. |
    s4.\mf |
    s4.*5 |
    
    \barNumberCheck 41
    s4. |
    s4.\p |
    s4.*3 |
    s4 s8\mf |
    s4.*2 |
    
    \barNumberCheck 49
    s4.*4 |
    s16 s\p s4 |
    s4.*3 |
    
    \barNumberCheck 57
    s4. |
  }
  \repeat volta 2 {
    s4.\f |
    s4.\p |
    s4.*2 |
    s4.\f |
    s4.*2 |
    
    \barNumberCheck 65
    s4. |
    s4.-\tweak Y-offset #-1 \f |
    s4.\p |
    s4.\cresc |
    s4. |
    s4.\f |
    s4. |
    s8 s8.-\tweak Y-offset #-1 \> s16\! |
    
    \barNumberCheck 73
    s4-\tweak Y-offset #-0.5 \> s8\! |
    s4.\p |
    s4. | s4.\cresc |
    s4.*3 |
    s4.\mf |
    
    \barNumberCheck 81
    s4. |
    s4.\dim
    s4. |
    s4.\p |
    s4.^\pocoRit |
    s4.-\tweak Y-offset #0 \mf |
    s4.*2 |
    
    \barNumberCheck 89
    s4.\dim |
    s4. |
    s4.\p |
    s4.-\tweak Y-offset #0 \mf |
    s4.*4 |
    
    \barNumberCheck 97
    s4.*2 |
    s4\> s16 s\! |
    s4.\p |
    s4.*3 |
    s4 s8-\tweak Y-offset #0 \mf |
    
    \barNumberCheck 105
    s4.*2 |
    s16 s\p s4\cresc |
    s4.*3 |
    s8\f s4\> |
    s8-\tweak X-offset #0.5 \mf s4\dim |
    
    \barNumberCheck 113
    s4. |
    s4.\p |
    s4. |
  }
}

pedal = {
  \repeat volta 2 {
    s4.\sd |
    s4.\su |
    s4.*2 |
    s4.\sd |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.\su |
    s4.\sd |
    
    \barNumberCheck 9
    s4.\su |
    s4.\sd |
    s4.\su |
    s4.\sd |
    s4.\su |
    s4.\sd |
    s4.\su |
    s4.\sd |
    
    \barNumberCheck 17
    s4.\su |
    s4.\sd |
    s4.\su |
    s4.\sd |
    s4.\su |
    s8 s4\sd |
    s4.\su |
    s8 s4\sd |
    
    \barNumberCheck 25
    s4.\su |
    s8 s4\sd |
    s4.\su |
    s8 s4\sd |
    s4.\su |
    s4.*3 |
    
    \barNumberCheck 33
    s4.\sd |
    s4.\su |
    s4.\sd |
    s4.\su |
    s4.\sd |
    s4.\su |
    s4.\sd |
    s4.\su |
    
    \barNumberCheck 41
    s4. |
    s4.\sd |
    s4.\su |
    s4.\sd |
    s4.\su |
    s4.\sd |
    s4.\su |
    s4. |
    
    \barNumberCheck 49
    s4.*8 |
    
    \barNumberCheck 57
    s4. |
  }
  \repeat volta 2 {
    s4.-\tweak Y-offset #-0.5 \sd |
    s4.\su |
    s4.\sd |
    s4.\su |
    s4.-\tweak Y-offset #-0.5 \sd |
    s4.\su |
    s4.\sd |
    
    \barNumberCheck 65
    s4.\su |
    s8 s4\sd |
    \grace { s8\su } s8 s4\sd |
    \grace { s8\su } s8 s4\sd |
    \grace { s8\su } s8 s4\sd |
    \grace { s8\su } s8 s4\sd |
    s4.\su |
    s4. |
    
    \barNumberCheck 73
    s4. |
    s4.\sd |
    s4.\su |
    s4.\sd |
    s4.\su |
    s4.\sd |
    s4.\su |
    s4.\sd |
    
    \barNumberCheck 81
    s4.\su |
    s4.\sd |
    s4.\su |
    s4.\sd |
    s4.\su |
    s8 s4-\tweak Y-offset #1 \sd |
    \grace { s8\su } s s4\sd |
    s4.\su |
    
    \barNumberCheck 89
    s4.*3 |
    s4.\sd |
    s4.\su |
    s4.\sd |
    s4.-\tweak Y-offset #1 \su |
    s4.-\tweak Y-offset #1 \sd |
    
    \barNumberCheck 97
    s4.\su |
    s4.*2 |
    s4.\sd |
    s4.-\tweak Y-offset #-1.5 \su |
    s4.\sd |
    s4.-\tweak Y-offset #-1.5 \su |
    s4.\sd |
    
    \barNumberCheck 105
    s4.\su |
    s4.*7 |
    
    \barNumberCheck 113
    s4.*3 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Andante" 4. = 48
    s4.*48 |
    
    \barNumberCheck 49
    s4.*7 |
    \set Score.tempoHideNote = ##t
    \tempo 4. = 46 s8 \tempo 4. = 44 s \tempo 4. = 40 s |
    
    \barNumberCheck 57
    \tempo 4. = 38 s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 48
    s4.*7 |
    
    \barNumberCheck 65
    s4.*16 |
    
    \barNumberCheck 81
    s4.*4 |
    \tempo 4. = 44 s8 \tempo 4. = 40 s \tempo 4. = 36 s |
    \tempo 4. = 48
    s4.*3 |
    
    \barNumberCheck 89
    s4.*24 |
    
    \barNumberCheck 113
    s4. |
    \tag layout { s4.*2 | }
    \tag midi {
      \alternative {
        {
          \tempo 4. = 46 s8 \tempo 4. = 44 s \tempo 4. = 40 s |
          \tempo 4. = 38 s4. |
        }
        {
          \tempo 4. = 44 s8 \tempo 4. = 40 s \tempo 4. = 36 s |
          \tempo 4. = 30 s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4.*7 \break
  s4.*7 \break
  \grace { s32 } s4.*7 \break
  \grace { s8 } s4.*7 \break
  s4.*6 \pageBreak
  
  % page 2
  s4.*7 \break
  s4.*8 \break
  s4.*8 \break
  s4.*8 \break
  \grace { s8 } s4.*7 \break
  \grace { s16 } s4.*7 \pageBreak
  
  % page 3
  s4.*7 \break
  \grace { s8 } s4.*8 \break
  s4.*7 \break
  \grace { s16 } s4.*7 \break
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
