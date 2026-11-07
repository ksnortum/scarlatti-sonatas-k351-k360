%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in B♭ major"
  opus   = "K.360"
  source = "https://s9.imslp.org/files/imglnks/usimg/b/b6/IMSLP914089-PMLP529681-E4529_24-28-Scarlatti_-_Keyboard_Sonatas,_L.394-400.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 2) (0 . 2.5) (0 . 0.5))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . -0.5) (0 . -0.5) (0 . 0))
                        ((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (1 . 0.5) (2 . 0.5) (3 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 2) (0 . 2))
                      ) \etc
slurShapeE = \shape #'(
                        ((0 . -1) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2) (0 . 2) (0 . 2) (0 . 2))
                      ) \etc
slurShapeF = \shape #'(
                        ((0 . -1) (0 . -1) (0 . -1) (0 . 0))
                        ((0 . -2.5) (0 . -2.5) (0 . -2.5) (0 . -2.5))
                      ) \etc
slurShapeG = \shape #'((0 . 0) (0 . 0) (0 . 0.5) (0 . -0.5)) \etc
slurShapeH = \shape #'((0 . 0) (0 . 0) (0 . 0.5) (0 . -0.5)) \etc
slurShapeI = \shape #'((0 . 0) (0 . 0) (0 . 0.5) (0 . -0.5)) \etc
slurShapeJ = \shape #'(
                        ((0 . 0) (0 . 0.25) (0 . 0.75) (0 . 1))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeK = \shape #'(
                        ((0 . -1) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2) (0 . 2) (0 . 2) (0 . 2))
                      ) \etc
slurShapeL = \shape #'((0 . -1) (0 . 0) (0 . 0) (0 . -1)) \etc
slurShapeM = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 2.7) (0.3 . 2.7) (0.3 . 2.7) (0.3 . 2.7))
                      ) \etc
slurShapeN = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeO = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc

moveNoteA = \once \override Staff.NoteHead.extra-spacing-width = #'(-2.5 . 0)

%
% Music
%

global = {
  \time 2/2
  \key bf \major
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    bf''2-> f-> |
    d2-> bf4_( a8 g |
    f4) c'8( a f4) d'8( bf |
    f4) f'8( ef  d4 c8 bf |
    a4 g8 f  bf4 c8 d) |
    d4-\slurShapeA \( c8 bf \grace { a8( } \afterGrace 15/16 a2)\trill
      { g16 a } |
    bf2\) bf |
    bf2 bf4-. c-. |
    
    \barNumberCheck 9
    d4-. d'8( bf  bf4-.) d8( bf |
    bf4-.) a8( g  f ef d c |
    d4-.) d'8( bf  bf4-.) d8( bf |
    bf4-.) a8( g  f ef d c |
    d4-.) \osp #'(-0.5 . 0) f( d-.) \osp #'(-0.5 . 0) f( |
    d4-.) f2->( a4 |
    bf4-.) \osp #'(-0.5 . 0) f( d-.) \osp #'(-0.5 . 0) f( |
    d4-.) f2->( <ef a>4 |
    
    \barNumberCheck 17
    <d bf'>4) d'8( bf  bf4-.) d8( bf |
    bf4-.) d8( bf)  bf4(\prall a8 g |
    a4-.) c8( a  a4-.) c8( a) |
    a4(\prall g8 f  g4-.) e-. |
    f4-. c'8( a  a4-.) c8( a |
    a4-.) g8( f  g4 a8 bf |
    a4-.) c8( a  a4-.) c8( a |
    a4-.) g8( f  g f e d |
    
    \barNumberCheck 25
    e4-.) g8( e  e4-.) g8( e |
    a4-.) g8( f  e d c b |
    c4-.) \voiceOne c'8( c,) s4 c8( c,) |
    s4 \voiceDown c8( c,) s4 c8( c,) |
    \staffUp \oneVoice r2 r4\fermata c''''8-\slurShapeC ( g |
    g4-.) g8-. g-.  g4-. af8( f |
    f4 g) r c8( g |
    g4-.) g8-. g-.  g4-. af8( f |
    
    \barNumberCheck 33
    f4 g) r g8-. g-. |
    \voiceOne g4-. g8-. g-.  g4-\slurShapeD ( af8 bf |
    af8 g f e f2~ |
    f2) e |
    f4( g) \oneVoice r4 g8-. g-. |
    \voiceOne g4-. g8-. g-.  g4-\slurShapeE ( af8 bf |
    af8 g f e f2~ |
    f2) e |
    
    \barNumberCheck 41
    \oneVoice f4-. a!8( c,  c4-.) a'8( c, |
    c4-.) d8( bf  bf4-.) g'8( bf, |
    bf4-.) c8( a  a4-.) f'8( c |
    \stemDown c8 a bf g \stemNeutral f4-.) e-.\prall |
    f4-. gs'8( a  a,4-.) cs'8( d |
    d,4-.) e8( f f,2)( |
    f8) e( f g)  g4.(-\tag layout \prallprall -\tag midi \prall f8) |
    f4-. gs'8( a  a,4-.) cs'8( d |
    
    \barNumberCheck 49
    d,4-.) e8( f f,2)( |
    f8) e( f g)  g4.(-\tag layout \prallprall -\tag midi \prall f8) |
    f4-. s2 \voiceOne \osp #'(-0.5 . 0) e'4( |
    f4-.) s2 \osp #'(-0.5 . 0) e4( |
    f4-.) s2 e4( |
    \alternative {
      { f1) | }
      {  
        \once \override Score.VoltaBracket.musical-length = \musicLength 1
        \repeat volta 2 {
          \override Parentheses.font-size = #-3
          \oneVoice \extendRT #1 <\parenthesize a, f'>2\repeatTie r4 c8( a |
          a4-.) c8( a  a4-.) c8( a |
          
          \barNumberCheck 57
          c4 b) r d8( b |
          b4-.) d8( b  b4-.) d8( b |
          d4 cs) r e8( cs |
          cs4-.) e8( cs  cs4-.) e8( cs) |
          cs4( d) r d'8( c! |
          bf4 a8 g \voiceOne f4 e8 d |
          \oneVoice cs2) a'( |
          d,2 e |
          
          \barNumberCheck 65
          a,2) <a f'>( |
          a'2 cs, |
          d4-.) a'8( d,  d4-.) a'8( d, |
          d4-.) a'8-\slurShapeG ( d,  c4 bf8-\insideSlur \prall a) |
          bf4-. g'8( bf,  bf4-.) g'8( bf, |
          bf4-.) g'8-\slurShapeH ( c,  bf4 a8-\insideSlur \prall g) |
          a4-. c'8( f,  f4-.) c'8( f, |
          f4-.) c'8-\slurShapeI ( f,  ef!4 d8-\insideSlur \prall c) |
          
          \barNumberCheck 73
          d4-. d'8( bf  bf4-.) d8( bf |
          bf4-.) a8( g  f ef d c |
          d4-.) f8( d  d4-.) f8( d |
          d4-.) \osp #'(-0.5 . 0) <f, f'>2( <a ef'>4 |
          d4-.) d'8( bf  bf4-.) d8( bf) |
          bf8( a g f  ef d c bf |
          f'4-.) \voiceOne f'8( f,) s4 f8( f,) |
          s4 f8( \voiceDown f,) s4 f8( f,) |
          
          \barNumberCheck 81
          \oneVoiceUp r2 r4\fermata f'''8-\slurShapeJ ( c |
          c4-.) c8-. c-.  c4-. df8( bf) |
          bf4( c) r f8( c |
          c4-.) c8-. c-.  c4-. df8( bf) |
          bf4( c) r4 c'8-. c-. |
          \voiceOne c4-. c8-. c-. c4-\slurShapeK ( df8  ef |
          df8 c bf a bf2~ |
          bf2) a |
          
          \barNumberCheck 89
          bf4( c) \oneVoice r c8-. c-. |
          \voiceOne c4-. c8-. c-. c4-\slurShapeL ( df8  ef |
          df8 c bf a bf2~ |
          bf2) a |
          bf4-. bf8( f \oneVoice f4-.) d'!8( f, |
          f4) g8( ef  ef4-.) c'8( ef, |
          ef4-.) f8( d  d4-.) bf'8( f |
          g8 d ef c  bf4-.) a-.\prall |
          
          \barNumberCheck 97
          bf2 <f' d'>( |
          <ef c'>2 <d bf'> |
          \voiceOne c'8 bf a g \oneVoice f ef d c |
          d8 f ef c  <bf d>4-.) <a c>-.\prall |
          bf2 <f' d'>( |
          <ef c'>2 <d bf'> |
          \voiceOne c'8 bf a g \oneVoice f ef d c |
          d8 f ef c  <bf d>4-.) <a c>-.\prall |
          
          \barNumberCheck 105
          bf4-. f'8( d \voiceOne bf f c' a |
          bf4-.) \oneVoice f'8( d \voiceOne bf f c' a |
          bf4-.) \oneVoice \osp #'(0 . -1) f'8( d \voiceOne bf f c' a |
          bf1) |
        }
      }
    }
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s1*32 |
    
    \barNumberCheck 33
    s1 |
    \voiceFour df''2 c~ |
    c2 c4( bf8 af |
    g4 af8 bf  af g f e) |
    f2 s |
    df'2 c~ |
    c2 c4( bf8 af |
    g4 af8 bf  af g f e) |
    
    \barNumberCheck 41
    s1*8 |
    
    \barNumberCheck 49
    s1*2 |
    s4 a'8( f  c a bf g |
    a2*1/2) \voiceOne a'8_( f \voiceFour c a bf g |
    a2*1/2) \voiceOne a'8_( f \voiceFour c a bf g |
    \alternative {
      { a1) | }
      { 
        \repeat volta 2 {
          s1*2 |
          
          \barNumberCheck 57
          s1*5 |
          s2 bf |
          s1*2 |
          
          \barNumberCheck 65
          s1*16 |
          
          \barNumberCheck 81
          s1*5 |
          gf'2 f2~ |
          f2 f4( ef8 df |
          c4 df8 ef  df c bf a) |
          
          \barNumberCheck 89
          bf2 s |
          gf'2 f2~ |
          f2 f4( ef8 df |
          c4 df8 ef  df c bf a) |
          bf2 s |
          s1*3 |
          
          \barNumberCheck 97
          s1*2 |
          c2 s |
          s1*3 |
          c2 s |
          s1 |
          
          \barNumberCheck 105
          s2. ef,4( |
          d2) s4 ef( |
          d2) s4 ef( |
          d1) |
        }
      }
    }
  }
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    R1*4 |
    f'2-> d-> |
    bf2-> ef,4-\slurShapeB ( d8 c |
    bf4-.) f'8( d  bf4-.) g'8( ef |
    bf4-.) g'8( f  ef4 d8 c |
    
    \barNumberCheck 9
    bf2) \clef treble bf'4_( c |
    d4 ef f a |
    bf2) bf,4_( c |
    d4 ef f a |
    bf4-.) d8( bf  bf4-.) d8( bf |
    bf4-.) a8( g  f ef d c |
    d4-.) d'8( bf  bf4-.) d8( bf |
    bf4-.) a8( g  f ef d c |
    
    \barNumberCheck 17
    bf2.) c4( |
    d2 e |
    f4-.) a8( f  f4-.) a8( f |
    f4-.) \clef bass e8( d  c bf a g |
    a4-.) \clef treble a'8( f  f4-.) a8( f |
    f4-.) \clef bass e8( d  c bf a g |
    f2.) g4( |
    a2 b |
    
    \barNumberCheck 25
    c2.) e,4( |
    f2 g |
    c,2) \staffUp \voiceTwo c''4-. s |
    c,4-. s \staffDown c,4-. s |
    c,2-> \oneVoice r4\fermata r |
    \clef treble <e'' c'>2( <f df'> |
    <e c'>2) r |
    <e c'>2( <f df'> |
    
    \barNumberCheck 33
    <e c'>2) \clef bass c( |
    bf2) e( |
    f2) \osp #'(0 . -1.5) af,( |
    bf2 c |
    f,,2) c''->( |
    bf2) e( |
    f2) af,( |
    bf2 c |
    
    \barNumberCheck 41
    <f, f'>2) <a f'>_( |
    <g f'>2) <g e'>( |
    <f f'>2) <a f'>-\slurShapeF _( |
    <bf f'>2 c |
    f,2) 
    << 
      { 
        <a f'>2_( |
        \voiceTwo bf2. b8 c) | 
      } 
      \new Voice { 
        \hideNoteHead f2( |
        \voiceThree f2) s |
      } 
    >>
    \oneVoice c,,1( |
    f2)
    << 
      { 
        <a' f'>2_( |
        
        \barNumberCheck 49
        \voiceTwo bf2. b8 c) | 
      } 
      \new Voice { 
        \hideNoteHead f2( |
        
        \barNumberCheck 49
        \voiceThree f2) s |
      } 
    >>
    \oneVoice c,,1( |
    f2.) c4( |
    f2.) c4( |
    f2.) c4( |
    \alternative {
      { f1) | }
      { 
        \repeat volta 2 {
          \extendRT #1 \moveNoteA f1\repeatTie |
          <<
            { 
              f''2( e |
              
              \barNumberCheck 57
              d2) g |
              g2( f |
              e2) a |
            }
            \\
            { 
              f,1 |
              
              \barNumberCheck 57
              g1 |
              g1 |
              a1 |
            }
          >> 
          << 
            { \voiceThree a'2( g | } 
            \new Voice { \voiceTwo a,1 | } 
          >>
          \oneVoice <bf f'>2) <f d'>_( |
          <g d'>2) g( |
          a4) a'8( f  f4-.) a8( f |
          f4-.) e8( d  cs b a g |
          
          \barNumberCheck 65
          f4-.) f'8( d  d4-.) f8( d |
          d4-.) cs8( bf!  a g f e |
          f2) <f d'>_( |
          <fs d'>2) <d d'>_( |
          <g d'>2) <f! d'>( |
          <e c'>2) <c c'>-\slurShapeO _( |
          <f c'>2) q( |
          <a f'>2) 
          << 
            { 
              \voiceTwo q( |
              
              \barNumberCheck 73
              bf2. c4) |
            } 
            \new Voice { 
              s2 |
              
              \barNumberCheck 73
              \voiceThree f2 s |
            } 
          >>
          \oneVoice d4-. ef( f a, |
          bf4-.) d8( bf  bf4-.) d8( bf |
          bf4-.) a8( g  f ef d c |
          bf2.) c4( |
          d2 ef |
          f2) \voiceUp f''4-. s4 |
          f,4-. s \staffDown f,-. s |
          
          \barNumberCheck 81
          f,2-> \oneVoice r4\fermata r |
          <a' f'>2( <bf gf'> |
          <a f'>2) r |
          <a f'>2( <bf gf'> |
          <a f'>2) f( |
          ef2) a( |
          bf2) df,( |
          ef2 f |
          
          \barNumberCheck 89
          bf,2) f'->( |
          ef2) a( |
          bf2) df,-\slurShapeN ( |
          ef2 f |
          bf,2) d'!( |
          c2) <f, f'>_( |
          <bf f'>2) <d, bf'>_( |
          ef2 f |
          
          \barNumberCheck 97
          bf,4-.) a''8( bf  bf,4-.) e8( f |
          f,4-.) a8( bf  bf,4-.) e8( f |
          f,2.) \osp #'(-0.5 . 0) a'4( |
          bf4 ef, f-.) f,-. |
          bf4-. a''8( bf  bf,4-.) e8( f |
          f,4-.) a8( bf  bf,4-.) e8-\slurShapeM ( f |
          f,2.) \osp #'(-0.5 . 0) a'4( |
          bf4 ef, f-.) f,-. |
          
          \barNumberCheck 105
          bf2. f4( |
          bf2.) f4( |
          bf2.) f4( |
          bf1) |
        }
      }
    }
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s1\f |
    s1 |
    s4 s\p s2\cresc |
    s1 |
    s1-\tweak Y-offset #1 \f |
    s1 |
    s4 s8\p s\cresc s2 |
    s1 |
    
    \barNumberCheck 9
    s1\f |
    s1 |
    s4 s2.\p |
    s1*2 |
    \override DynamicLineSpanner.Y-offset = #0.5
    s4 s2.\f |
    s4 s2.\p |
    s4 s2.\f |
    
    \barNumberCheck 17
    s1*8 |
    
    \barNumberCheck 25
    s4 s\p s2\cresc |
    s1 |
    s1\f |
    s1 |
    s2.  s4\p |
    s1 |
    s4\> s2.\! |
    s1 |
    
    \barNumberCheck 33
    s4\> s\! s8 s4.\cresc |
    s1 |
    s2 s-\tweak Y-offset #-1 \f |
    s1 |
    s4\> s2\! s4\p |
    s1\cresc |
    s2 s\f |
    s1 |
    
    \barNumberCheck 41
    s1*7 |
    s4 s2.\p |
    
    \barNumberCheck 49
    s1*2 |
    s4 s2.\cresc |
    s1*2 |
    \alternative {
      { s1\f | }
      {  
        \repeat volta 2 {
          s2.\f s4\p |
          s1 |
          
          \barNumberCheck 57
          s1*2 |
          s2 s8 s4.-\tweak Y-offset #1 \cresc |
          s1 |
          s2 s\mf |
          s1*3 |
          
          \barNumberCheck 65
          s1\cresc |
          s1 |
          s4\f s2.\mf |
          s1*3 |
          s4 s2.\f |
          s1 |
          
          \barNumberCheck 73
          s4 s2.\p |
          s4 s2.-\tweak Y-offset #0.5 \cresc |
          s1\f |
          s1 |
          s4 s2.\p |
          s1\cresc |
          s1\f |
          s1 |
          
          \barNumberCheck 81
          s2. s4\p |
          s1 |
          s4\> s2.\! |
          s1 |
          s4\> s\! s8 s4.\cresc |
          s1 |
          s2 s-\tweak Y-offset #-1.5 \f |
          s1 |
          
          \barNumberCheck 89
          s4\> s2\! s4\p |
          s1\cresc |
          s2 s-\tweak Y-offset #-1 \f |
          s1*5 |
          
          \barNumberCheck 97
          s1*4 |
          s4 s\p s2\cresc |
          s1*3 |
          
          \barNumberCheck 105
          s4\f s\p s2\cresc |
          s1*2 |
          s1\f |
        }
      }
    }
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 2 = 120
    s1*24 |
    
    \barNumberCheck 25
    s1*4 |
    \set Score.tempoHideNote = ##t
    s2 \tempo 2 = 40 s4 \tempo 2 = 120 s |
    s1*3 |
    
    \barNumberCheck 33
    s1*16 |
    
    \barNumberCheck 49
    s1*4 |
    s4 \tempo 2 = 112 s \tempo 2 = 104 s \tempo 2 = 96 s |
    \alternative {
      { \tempo 2 = 88 s1 | }
      {  
        \repeat volta 2 {
          \tempo 2 = 120 s1 |
          s1 |
          
          \barNumberCheck 57
          s1*24 |
          
          \barNumberCheck 81
          s2 \tempo 2 = 40 s4 \tempo 2 = 120 s |
          s1*7 |
          
          \barNumberCheck 89
          s1*16 |
          
          \barNumberCheck 105
          s1*2 |
          \tag layout { s1*2 | }
          \tag midi {
            \alternative {
              {
                s4 \tempo 2 = 112 s \tempo 2 = 104 s \tempo 2 = 96 s |
                \tempo 2 = 88 s1 |
              }
              {
                s4 \tempo 2 = 108 s \tempo 2 = 96 s \tempo 2 = 84 s |
                \tempo 2 = 72 s1 |
              }
            }
          }
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s1*6 \break
  s1*6 \break
  s1*6 \break
  s1*5 \break
  s1*6 \pageBreak
  
  % page 2
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*5 \pageBreak
  
  % page 3
  s1*6 \break
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*6 \pageBreak
  
  % page 4
  s1*6 \break
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
