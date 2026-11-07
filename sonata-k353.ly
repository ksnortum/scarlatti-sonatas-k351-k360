%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in D major"
  opus   = "K.353"
  source = "https://s9.imslp.org/files/imglnks/usimg/4/4e/IMSLP914729-PMLP528354-E4523_52-55-Scarlatti_-_Keyboard_Sonatas,_L.301-315.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeC = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . -0.5)) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeE = \shape #'((0 . -0.5) (0 . 0.5) (0 . 1) (0 . -1)) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeG = \shape #'((-1 . 2.5) (0 . 3) (0 . 2) (0 . 0)) \etc
slurShapeH = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (-0.2 . 0.75))
                        ((0.2 . 0.5) (0.2 . 0) (0 . 0) (0 . 0))
                      ) \etc

%
% Music
%

global = {
  \time 3/8
  \key d \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    a''4. |
    d,4.-\tag layout \prallprall -\tag midi \prall |
    a'4. |
    d,4.-\tag layout \prallprall -\tag midi \prall |
    b'16-\slurShapeA ( a g fs e d |
    cs16 b a g fs e |
    fs16 a g fs e d |
    cs16 b a) r r8 |
    
    \barNumberCheck 9
    a'4. |
    d,4.-\tag layout \prallprall -\tag midi \prall |
    a'4. |
    d,4.-\tag layout \prallprall -\tag midi \prall |
    b'16-\slurShapeB ( a g fs e d |
    cs16 e d fs e g |
    fs16 a g b a cs |
    b16 d cs e d fs |
    
    \barNumberCheck 17
    e16 g fs a g fs |
    e4.)-\tag layout \prallprall -\tag midi \prall |
    <cs g'>4.( |
    <d a'>4. |
    <d d'>4.) |
    cs'16( b a gs a8-.) |
    <cs, g'!>4.( |
    <d a'>4. |
    
    \barNumberCheck 25
    <d d'>4.) |
    cs'16-\slurShapeC ( b a g! fs e |
    fs16 e d cs b a |
    gs16 fs e d cs b |
    cs16 d cs b cs a |
    b4.)-\tag layout \prallprall -\tag midi \prall |
    <d' b'>4 r16 <cs a'>16( |
    <d b'>4) r16 <cs a'>16( |
    
    \barNumberCheck 33
    <d b'>4) r16 <cs a'>16( |
    <d b'>4) r16 <cs a'>16-\slurShapeD ( |
    gs'16 fs e gs a e |
    fs16 d cs b a gs |
    a16 b cs d e cs |
    <e, b' d>4) r16 <e a cs>( |
    <e b' d>4) r16 <e a cs>( |
    <e b' d>4) r16 <e a cs>( |
    
    \barNumberCheck 41
    <e b' d>4) r16 <e a cs>( |
    b'16) e( fs gs a e |
    fs16 d cs b a gs) |
    gs'8->( a) a,->(~ |
    a16 fs' e d cs b) |
    gs'8->( a) a,->(~ |
    a16 fs' e d cs b |
    cs16 b a gs a e |
    
    \barNumberCheck 49
    fs16 d cs a' b, gs' |
    \override Parentheses.font-size = #-3
    <\parenthesize a, a'>4.)-> |
  }
  \repeat volta 2 {
    <e' cs'>4.( |
    <fs d'>4. |
    <g e'>4.) |
    \osp #'(-0.5 . 0) fs'16( e d cs d8-.) |
    <a fs'>4.( |
    <b g'>4. |
    
    \barNumberCheck 57
    <c a'>4.) |
    b'16( a g fs g8-.) |
    <b, ds fs>4 r16 <b e g>( |
    <b ds fs>4) r16 <b e g>( |
    <b ds fs>4) r16 <b e g>( |
    fs'16 e ds cs b8-.) |
    r16 a'( g fs c' ds, |
    b'8-.) g-. e-. |
    
    \barNumberCheck 65
    r16 fs( e ds a' fs |
    g8-.) e-. b-. |
    r16 f'( e d b' gs |
    a8-.) e-. a,-. |
    r16 d-\slurShapeE ( c b e d |
    c8-\insideSlur \prall b) c-. |
    a'16( fs d c b a |
    b8\prall a) b-. |
    
    \barNumberCheck 73
    g'16( e cs! b a g |
    a8\prall g) a-. |
    fs'16-\slurShapeF ( d b a g fs |
    g16 a b cs d e |
    cs16 d e fs g a |
    fs16 g a b cs d |
    b16 a g fs e d |
    cs8.-\tag layout \prallprall -\tag midi \prall b16 a8) |
    
    \barNumberCheck 81
    <g e'>4 r16 <fs d'>( |
    <g e'>4) r16 <fs d'>( |
    <g e'>4) r16 <fs d'>( |
    <g e'>4) r16 <fs d'>-\slurShapeG ( |
    cs'16 b a cs d e |
    fs16 g fs e d cs |
    d16 e fs g a fs |
    <a, e' g>4) r16 <a d fs>(_~ |
    
    \barNumberCheck 89
    <a e' g>4) r16 <a d fs>(_~ |
    <a e' g>4) r16 <a d fs>(_~ |
    <a e' g>4) r16 <a d fs>( |
    e'16 d cs e d fs |
    e16 g fs e d cs) |
    % Second beat, source has dotted quarter note
    cs'16->[( d]) d,4->-\slurShapeH (~ |
    d16 b' a g fs e) |
    cs'16->[( d]) d,4->(~ |
    
    \barNumberCheck 97
    d16 b' a g fs e |
    fs16 e d cs d a |
    b16 g fs e d cs |
    d4.->) |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    fs'8( d a') |
    fs8( d a') |
    fs8( d a') |
    fs8( d a') |
    g4( g,8 |
    g8-.) b-. cs-. |
    d8( b g |
    a8.) g16( fs e |
    
    \barNumberCheck 9
    fs8 d a') |
    fs8( d a') |
    fs8( d a') |
    fs8( d a') |
    g4( g,8 |
    \addStaccato {
      a8) b cs |
      d8 e fs |
      g8 a b |
    }
    
    \barNumberCheck 17
    cs8( d-.) d,-. |
    a4.-> |
    e''8( cs a |
    f' d a |
    gs' a, gs') |
    <a, a'>4. |
    e'8( cs a |
    f' d a |
    
    \barNumberCheck 25
    gs' a, gs') |
    <a, a'>4. |
    <d, d'>4._( |
    e8-.) fs-. gs-. |
    a4( a,8 |
    e'4.) |
    \clef treble r16 b''( a gs a a,) |
    r16 e'( fs gs a a,) |
    
    \barNumberCheck 33
    r16 b'( a gs a a,) |
    r16 e'( fs gs a a, |
    e'8-.) d-. cs-. |
    d8( e) \clef bass e,-. |
    a,4. |
    r16 b'( a gs a a,) |
    r16 e'( fs gs a a,) |
    r16 b'( a gs a a,) |
    
    \barNumberCheck 41
    r16 e'( fs gs a a, |
    e'8-.) d-. cs-. |
    d8( e-.) e,-. |
    a'8.( gs16 fs e |
    d8 e-.) e,-. |
    a'8.( gs16 fs e |
    d8 e-.) e,-. |
    a8( b cs |
    
    \barNumberCheck 49
    d8 e-.) e,-. |
    a4.-> |
  }
  \repeat volta 2 {
    g'!8( e a, |
    fs'8 d a |
    e'8 cs a) |
    d,4. |
    c''8( a d, |
    b'8 g d |
    
    \barNumberCheck 57
    a'8 fs d) |
    g,4. |
    r16 fs''( e ds e e,) |
    r16 b'( cs! ds e e,) |
    r16 fs'( e ds e e, |
    b4.) |
    <b' fs'>4.( |
    <g e'>4.) |
    
    \barNumberCheck 65
    <fs a>4.( |
    <e b'>4.) |
    <e d'!>4.( |
    <e c'>4.) |
    <e b'>4.( |
    <a, a'>4.) |
    <fs' d'>4.( |
    <g d'>4.) |
    
    \barNumberCheck 73
    <e cs'!>4.( |
    <fs d'>4.) |
    \override Parentheses.font-size = #-3
    <d \parenthesize b'>4.( |
    <e g>4.) |
    <a, g'>4.( |
    <d a'>4.) |
    <g, g'>4.( |
    <a a'>4.) |
    
    \barNumberCheck 81
    r16 e''( d cs d d,) |
    r16 a'( b cs d d,) |
    r16 e'( d cs d d,) |
    r16 \osp #'(-0.5 . 0) a'( b cs d d, |
    a'8-.) g-. fs-. |
    g8( a-.) a,-. |
    d4. |
    r16 e( d cs d d,) |
    
    \barNumberCheck 89
    r16 a'( b cs d d,) |
    r16 e'( d cs d d,) |
    r16 a'( b cs d d, |
    a'8-.) g-. fs-. |
    g8( a-.) a |
    d'8.( cs16 b a |
    g8 a-.) a,-. |
    d8.( cs16 b a |
    
    \barNumberCheck 97
    g8 a-.) cs-. |
    d8( e fs |
    g8 a-.) a,-. |
    d,4.-> |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4.\p |
    s4.\cresc |
    s4.*2 |
    s4.\f |
    s4.*2 |
    s8. s8\> s16\! |
    
    \barNumberCheck 9
    s4.\p |
    s4.\cresc |
    s4.*2 |
    s4\mf\> s16 s\! |
    s16\p s\cresc s4 |
    s4.*2 |
    
    \barNumberCheck 17
    s4. |
    s4.-\tweak Y-offset #-2 \f |
    s4.-\tweak Y-offset #-1.25 \p |
    s4.\cresc |
    s4. |
    s4\f\> s8\! |
    s4.-\tweak Y-offset #-1.25 \p |
    s4.\cresc |
    
    \barNumberCheck 25
    s4. |
    s4.\f |
    s4.*4 |
    s16 s-\tweak Y-offset #-2 \p s4 |
    s4.\cresc |
    
    \barNumberCheck 33
    s4.*2 |
    s4.\f |
    s4.*2 |
    s16 s\p s4 |
    s4.\cresc |
    s4. |
    
    \barNumberCheck 41
    s4.*3 |
    s4.\f |
    s4. |
    s4.\p |
    s4. |
    s4.\cresc |
    
    \barNumberCheck 49
    s4. |
    s4.-\tweak Y-offset #-2.5 \f |
  }
  \repeat volta 2 {
    s4.\p |
    s4.\cresc |
    s4. |
    s4.-\tweak Y-offset #-1 \f |
    s4.\p |
    s4.\cresc
    
    \barNumberCheck 57
    s4. |
    s4.-\tweak Y-offset #-1.5 \f |
    s4.\p |
    s4.\cresc |
    s4. |
    s4.-\tweak Y-offset #-1 \f |
    s4.*2 |
    
    \barNumberCheck 65
    s4.\p |
    s4. |
    s4.-\tweak extra-offset #'(0 . 0.75) \f |
    s4. |
    s4.\p |
    s4. |
    s4.\cresc |
    s4. |
    
    \barNumberCheck 73
    s4. |
    s4.\mf |
    s4.\p |
    s4.-\tweak Y-offset #-2 \cresc |
    s4.*2 |
    s4.\f |
    s4-\tweak Y-offset #-0.5 \> s8\! |
    
    \barNumberCheck 81
    s16 s\p s4 |
    s4.\cresc |
    s4.*2 |
    s4.\f |
    s4.*2 |
    s16 s-\tweak Y-offset #0.5 \p s4 |
    
    \barNumberCheck 89
    s4.\cresc |
    s4.*4 |
    s4.-\tweak Y-offset #0.5 \f |
    s4. |
    s4.-\tweak Y-offset #0.5 \p |
    
    \barNumberCheck 97
    s4. |
    s4.\cresc |
    s4. |
    s4.-\tweak Y-offset #-1 \f |
  }
}

pedal = {
  \repeat volta 2 {
    s4.*16 |
    
    \barNumberCheck 17
    s4.*2 |
    s4.\sd |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.\su |
    s4.\sd |
    s4.-\tag layout \sd -\tag midi \sud |
    
    \barNumberCheck 25
    s4.-\tag layout \sd -\tag midi \sud |
    s4.\su |
    s4.*6 |
    
    \barNumberCheck 33
    s4.*16 |
    
    \barNumberCheck 49
    s4.*2 |
  }
  \repeat volta 2 {
    s4.\sd |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.-\tweak Y-offset #-1 \su |
    s4.\sd |
    s4.-\tag layout \sd -\tag midi \sud |
    
    \barNumberCheck 57
    s4.-\tag layout \sd -\tag midi \sud |
    s4.\su |
    s4.*6 |
    
    \barNumberCheck 65
    s4.*32 |
    
    \barNumberCheck 97
    s4.*4 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4. = 84
    s4.*48 |
    
    \barNumberCheck 49
    \set Score.tempoHideNote = ##t
    \tempo 4. = 76 s8 \tempo 4. = 69 s \tempo 4. = 63 s |
    \tempo 4. = 58 s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 84
    s4.*6 |
    
    \barNumberCheck 57
    s4.*40 |
    
    \barNumberCheck 97
    s4.*2 |
    \tag layout { s4.*2 | }
    \tag midi {
      \alternative {
        {
          \tempo 4. = 76 s8 \tempo 4. = 69 s \tempo 4. = 63 s |
          \tempo 4. = 58 s4. |
        }
        {
          \tempo 4. = 72 s8 \tempo 4. = 63 s \tempo 4. = 56 s |
          \tempo 4. = 40 s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4.*7 \break
  s4.*8 \break
  s4.*8 \break
  s4.*8 \break
  s4.*6 \pageBreak
  
  % page 2
  s4.*6 \break
  s4.*7 \break
  s4.*7 \break
  s4.*6 \break
  s4.*7 \pageBreak
  
  % page 3
  s4.*6 \break
  s4.*6 \break
  s4.*6 \break
  s4.*6 \break
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
