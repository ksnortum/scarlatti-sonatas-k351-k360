%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in D major"
  opus   = "K.359"
  source = "https://s9.imslp.org/files/imglnks/usimg/2/25/IMSLP915038-PMLP529431-E4550_55-58-Scarlatti_-_Keyboard_Sonatas,_L.436-450.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . -1) (0 . 1) (0 . 1) (0 . 0)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeD = \shape #'((0 . 0) (0 . 0) (0 . 1.5) (0 . -1.5)) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeF = \shape #'((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0.2)) \etc
slurShapeG = \shape #'((0 . -1) (0 . 1) (0 . 0) (0 . 0)) \etc
slurShapeH = \shape #'(
                        ((0.2 . 0) (2 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (4 . -2) (0 . 1) (4 . 0))
                      ) \etc
slurShapeI = \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (-0.2 . 0)) \etc

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
    a''4\prall a8-. |
    a4\prall a8-. |
    a4\prall a8-. |
    a4\prall a8-. |
    a16( fs g d e b |
    cs16 g a fs g e |
    fs4)\prall a8-. |
    a4 as8-. |
    
    \barNumberCheck 9
    b4 cs8-. |
    d4 ds8-. |
    e4 fs8-. |
    g4 gs8-. |
    a16-\slurShapeC ( e fs cs d b |
    e16 fs e d cs b |
    cs4) cs8-. |
    b4 b8-. |
    
    \barNumberCheck 17
    cs4 cs8-. |
    d4 ds8-. |
    e4.-\tag layout \prallprall -\tag midi \prall |
    R4. |
    \bar "||"
    e4. |
    <f gs>4.( |
    e4.) |
    <f gs>4.( |
    
    \barNumberCheck 25
    e4.) |
    <ef fs!>4.( |
    d4.) |
    <ef fs>4.-\slurShapeE ( |
    d4.) |
    <ef fs>4.( |
    \override Parentheses.font-size = #-3
    <\parenthesize d g>4.) |
    <e g>4. |
    
    \barNumberCheck 33
    q4. |
    q4. |
    q4. |
    q4.( |
    <d fs>4. |
    <d e>4.) |
    <d e b'>4.( |
    <e cs'>4. |
    
    \barNumberCheck 41
    <d fs d'>4.) |
    <d gs d'>4. |
    << 
      { \voiceOne cs'16( b a gs fs e | } 
      \new Voice { \voiceFour e8 r r | } 
    >>
    \oneVoice fs16 e d cs b a |
    gs4)-\tag layout \prallprall -\tag midi \prall e8-. |
    fs4 gs8-. |
    a4 b8-. |
    cs4 ds8-. |
    
    \barNumberCheck 49
    e4 gs8-. |
    a4 d8-. |
    cs16-\slurShapeI ( b a gs fs e |
    d16 cs b a gs b |
    a4) e8-. |
    fs4 gs8-. |
    a4 b8-. |
    cs4 ds8-. |
    
    \barNumberCheck 57
    e4 gs8-. |
    a4 d8-. |
    cs16-\slurShapeI ( b a gs fs e |
    d16 cs b a gs b |
    a4) e'8-. |
    d'8( e,) e-. |
    cs'8( e,) e-. |
    d'8( e,) e-. |
    
    \barNumberCheck 65
    cs'8( e,) e-. |
    d'8( e,) e-. |
    \osp #'(0 . 0.5) cs'16( b a gs fs e |
    d16 cs b a gs d' |
    cs16 b a gs fs e |
    d16 cs b a gs b |
    a4.) |
  }
  \repeat volta 2 {
    e''4\prall e8-. |
    
    \barNumberCheck 73
    b'4 e,8-. |
    e4\prall e8-. |
    b'4 e,8-. |
    e4\prall e8-. |
    a4 d,8-. |
    d4\prall d8-. |
    a'4 d,8-. |
    d4\prall d8-. |
    
    \barNumberCheck 81
    a'4 a8-. |
    g4 g8-. |
    fs4 fs8-. |
    e4 e8-. |
    d4 d8-. 
    cs8( g') b,-. |
    as4 fs8-. |
    g4 as8-. |
    
    \barNumberCheck 89
    b4 cs8-. |
    d4 es8-. |
    fs4 as8-. |
    b4 cs8-. |
    d4 <fs, d'>8-. |
    <e d'>4 q8-. |
    <e cs'>4 q8-. |
    <d cs'>4 q8-. |
    
    \barNumberCheck 97
    <d b'>4 q8-. |
    <cs b'>4 q8-. |
    <cs a'>16( gs' fs e d cs |
    b16 a gs fs es fs |
    cs4.)-\tag layout \prallprall -\tag midi \prall |
    R4. |
    \bar "||"
    cs'4. |
    <d es>4.( |
    
    \barNumberCheck 105
    cs4.) |
    <d es>4.( |
    <\parenthesize cs a'>4.) |
    <c ds>4.( |
    b4.) |
    <c ds>4.( |
    b4.) |
    <c ds>4.( |
    
    \barNumberCheck 113
    <\parenthesize b g'>4.) |
    <\parenthesize bf cs>4.( |
    <a fs'>4.) |
    <e' g>4.( |
    <e cs'>4. |
    <fs d'>4.)-\slurShapeH (~ |
    << 
      { \voiceOne d'16 cs b a g fs | } 
      \new Voice { \voiceFour e4. } 
    >>
    \oneVoice e16 d cs b a g |
    
    \barNumberCheck 121
    fs16 e d cs b a |
    << 
      { \staffDown g16 fs e d cs b) | }
      \new Voice { \staffUp R4. | } 
    >>
    \oneVoiceUp r8 a''-. a-. |
    << { g'4. } \\ { e8( a,) a-. } >> |
    << { fs'4. } \\ { d8( a) a-. } >> |
    << { g'4. } \\ { e8( a,) a-. } >> |
    << { fs'4. } \\ { d8( a) a-. } >> |
    << { g'4. } \\ { e8( a,) a-. } >> |
    
    \barNumberCheck 129
    \osp #'(0 . -0.5) fs'16( e d cs b a |
    g16 b a g fs e |
    d8-.) a'-. a-. |
    << { g'4. } \\ { e8( a,) a-. } >> |
    << { fs'4. } \\ { d8( a) a-. } >> |
    << { g'4. } \\ { e8( a,) a-. } >> |
    \osp #'(0 . 0.5) fs'16( e d cs b a |
    b16 d cs b a g |
    
    \barNumberCheck 137
    fs16 a g fs e d |
    e16 g fs e d cs |
    d4.) |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    d'8-\slurShapeA ( fs d |
    cs8 e a, |
    fs8 a d, |
    cs8 d e |
    a,4.) |
    a4. |
    d8-\slurShapeB ( a' cs, |
    d8 a' cs, |
    
    \barNumberCheck 9
    b8) b'( a |
    g8 b fs |
    e8) e'( d |
    cs8 e a, |
    a4) a8-. |
    gs4 gs8-. |
    a'16-\slurShapeD ( e fs cs d b |
    e16 fs e d cs b |
    
    \barNumberCheck 17
    a16 gs fs e d cs |
    b16 a gs fs e e' |
    e,4.) |
    R4. |
    \clef treble e''8( a c |
    e,8 b' d |
    e,8 a c |
    e,8 b' d |
    
    \barNumberCheck 25
    e,8 a c) |
    d,8( a' c |
    d,8 g bf |
    d,8 a' c |
    d,8 g bf |
    d,8)-\slurShapeF ( a' c |
    d,8 g bf) |
    cs,!8( g' a |
    
    \barNumberCheck 33
    cs,8 g' a) |
    b,8( e g |
    b,e g) |
    \clef bass a,8-\slurShapeG ( e' g |
    a,8 d fs |
    gs,8 d' e |
    gs,8 d' e |
    g,!8 a e' |
    
    \barNumberCheck 41
    fs, a d |
    e, b' e) |
    <a,, a'>4.( |
    d4.) |
    e8( e') cs-. |
    d,8( d') b-. |
    cs8( e) gs,-. |
    a8( e') fs,-. |
    
    \barNumberCheck 49
    e8( b') d,-. |
    cs8( a') b,-. |
    a4 cs8-. |
    d4 e8-. |
    a,8( a') cs-. |
    d,8( d') b-. |
    cs8( e) gs,-. |
    a8( e') fs,-. |
    
    \barNumberCheck 57
    e8( b') d,-. |
    cs8( a') b,-. |
    a4 cs8-. |
    d4 e8-. |
    a16( b cs d e fs) |
    e,,4. |
    a'16( b cs d e fs) |
    e,,4. |
    
    \barNumberCheck 65
    a'16( b cs d e fs) |
    e,,4.( |
    a4) cs8-. |
    d4 e8-. |
    a,4 cs8-. |
    d4 e8-. |
    a,4. |
  }
  \repeat volta 2 {
    a'8( cs a |
    
    \barNumberCheck 73
    gs8 e d' |
    cs8 e a, |
    gs8 e d' |
    cs8 e g,! |
    fs8 d' fs, |
    g8 b g |
    fs8 d' fs, |
    g8 b g |
    
    \barNumberCheck 81
    fs8 a d |
    e,8 as cs |
    d,8 fs b |
    cs,8 e as |
    b,8 fs' b) |
    e,8( e') g,-. |
    fs8( cs') d,8-. |
    e8( b') cs,-. |
    
    \barNumberCheck 89
    d8( b') as-. |
    b8( d) gs,-. |
    fs8( cs') e,-. |
    d8( b') cs,-. |
    b8( b') a-. |
    gs8( b) e,-. |
    a8( cs) gs-. |
    fs8( a) fs-. |
    
    \barNumberCheck 97
    gs8( b) fs-. |
    es8( gs) cs, |
    <fs, fs'>4.( |
    b4.) |
    <cs, cs'>4. |
    R4. |
    \clef treble cs''8( fs a |
    cs,8 gs' b |
    
    \barNumberCheck 105
    cs,8 fs a |
    cs,8 gs' b |
    cs,8 fs a) |
    b,8( fs' a |
    b,8 e g! |
    b,8 fs' a |
    b,8 e g |
    b,8 fs' a |
    
    \barNumberCheck 113
    b,8 e g) |
    a,8( e' g |
    a, d fs) |
    \clef bass g,8( a e' |
    g,8 a e' |
    fs, a d |
    g,4. |
    a4.) |
    
    \barNumberCheck 121
    R4. |
    s4. |
    a,4. |
    a'16( g fs e d cs |
    d16 e fs g a b) |
    a,,4. |
    d'16( e fs g a b) |
    a,,4.( |
    
    \barNumberCheck 129
    d4) fs'8-. |
    g4 a8-. |
    d,16( e fs g a b) |
    a,,4. |
    d'16( e fs g a b) |
    a,,4.( |
    d4) fs'8-. |
    g4 a8-. |
    
    \barNumberCheck 137
    d,4 fs,8-. |
    g4 a8-. |
    d,4. |
  }
}

dynamics = {
  \override TextScript.Y-offset = #-0.5
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4.\p |
    s4.\cresc |
    s4.*2 |
    s4.-\tweak Y-offset #-2 \f |
    s4. |
    s8 s4-\tweak Y-offset #-1 \p |
    \override DynamicLineSpanner.Y-offset = #0.5
    s4.\cresc |
    
    \barNumberCheck 9
    s4.*4 |
    s4.\f |
    s4.*3 |
    
    \barNumberCheck 17
    s4.*4 |
    s4.-\tweak Y-offset #-6 \p |
    s4.\> |
    s4.\! |
    s4.\> |
    
    \barNumberCheck 25
    s4.\! |
    s4.\> |
    s4.\! |
    s4.\> |
    s4.\! |
    s4.\cresc |
    s4.*2 |
    
    \barNumberCheck 33
    s4.*3 |
    s4.-\tweak Y-offset #-2 \mf |
    s4.*2 |
    s4.-\tweak extra-offset #'(0 . -3) \cresc |
    s4. |
    
    \barNumberCheck 41
    s4.*2 |
    s4.\f |
    s4. |
    s4\> s8\p |
    s4.\cresc |
    s4.*2 |
    
    \barNumberCheck 49
    s4.*2 |
    s4.\f |
    s4. |
    s4\> s8\p |
    s4.\cresc |
    s4.*2 |
    
    \barNumberCheck 57
    s4.*2 |
    s4.\f |
    s4.*5 |
    
    \barNumberCheck 65
    s4.*7 |
  }
  \repeat volta 2 {
    s4.\p |
    
    \barNumberCheck 73
    s4.*8 |
    
    \barNumberCheck 81
    s4.*7 |
    s4.\cresc |
    
    \barNumberCheck 89
    s4.*4 |
    s4.\f |
    s4.*3 |
    
    \barNumberCheck 97
    s4.*6 |
    s4.\p |
    s4.\> |
    
    \barNumberCheck 105
    s4.\! |
    s4.\> |
    s4.\! |
    s4.\> |
    s4.\! |
    s4.\> |
    s4.\! |
    s4.\> |
    
    \barNumberCheck 113
    s4.\! |
    s4.-\tweak Y-offset #-1 \> |
    s4.\! |
    s4.\cresc
    s4.*2 |
    s4.\f |
    s4. |
    
    \barNumberCheck 121
    s4.*2 |
    s4.^\sempreF |
    s4.*5 |
    
    \barNumberCheck 129
    s4.*8 |
    
    \barNumberCheck 137
    s4.*3 |
  }
}

pedal = {
  \repeat volta 2 {
    s4.*16 |
    
    \barNumberCheck 17
    s4.*5 |
    s4.\sd |
    s4.\su |
    s4.\sd |
    
    \barNumberCheck 25
    s4.\su |
    s4.\sd |
    s4.\su |
    s4.\sd |
    s4.\su |
    s4.\sd |
    s4.\su |
    s4.\sd |
    
    \barNumberCheck 33
    s4. |
    s4.-\tag layout \sd -\tag midi \sud |
    s4. |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud |
    s4. |
    s4.-\tag layout \sd -\tag midi \sud |
    
    \barNumberCheck 41
    s4.-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.\su |
    s4.*5 |
    
    \barNumberCheck 49
    s4.*8 |
    
    \barNumberCheck 57
    s4.*5 |
    s4.\sd |
    s4.\su |
    s4.\sd |
    
    \barNumberCheck 65
    s4.\su |
    s4.*6 |
  }
  \repeat volta 2 {
    s4. |
    
    \barNumberCheck 73
    s4.*24 |
    
    \barNumberCheck 97
    s4.*7 |
    s4.\sd |
    
    \barNumberCheck 105
    s4.\su |
    s4.\sd |
    s4.-\tweak Y-offset #1 \su |
    s4.-\tweak Y-offset #1 \sd |
    s4.\su |
    s4.\sd |
    s4.\su |
    s4.\sd |
    
    \barNumberCheck 113
    s4.\su |
    s4.-\tweak Y-offset #-2 \sd |
    s4.-\tweak Y-offset #-2 \su |
    s4.\sd |
    s4. |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.\su |
    s4. |
    
    \barNumberCheck 121
    s4.*5 |
    s4.-\tweak Y-offset #-2 \sd |
    s4.\su |
    s4. |
    
    \barNumberCheck 129
    s4.*3 |
    s4.-\tweak Y-offset #-2 \sd |
    s4.\su |
    s4.*3 |
    
    \barNumberCheck 137
    s4.*3 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegrissimo" 4. = 100
    s4.*64 |
    
    \barNumberCheck 65
    s4.*5 |
    \set Score.tempoHideNote = ##t
    \tempo 4. = 92 s8 \tempo 4. = 84 s \tempo 4. = 76 s |
    \tempo 4. = 69 s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 100
    s4. |
    
    \barNumberCheck 73
    s4.*64 |
    
    \barNumberCheck 137
    s4. |
    \tag layout { s4.*2 | }
    \tag midi {
      \alternative {
        {
          \tempo 4. = 92 s8 \tempo 4. = 84 s \tempo 4. = 76 s |
          \tempo 4. = 69 s4. |
        }
        {
          \tempo 4. = 88 s8 \tempo 4. = 76 s \tempo 4. = 66 s |
          \tempo 4. = 40 s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4.*7 \break
  s4.*7 \break
  s4.*7 \break
  s4.*7 \break
  s4.*7 \pageBreak
  
  % page 2
  s4.*7 \break
  s4.*7 \break
  s4.*8 \break
  s4.*7 \break
  s4.*7 \pageBreak
  
  % page 3
  s4.*7 \break
  s4.*7 \break
  s4.*7 \break
  s4.*7 \break
  s4.*7 \pageBreak
  
  % page 4
  s4.*7 \break
  s4.*7 \break
  s4.*7 \break
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
