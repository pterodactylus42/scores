% Dieses Notenblatt wurde erstellt von David Göhler
% Kontakt: pirat@online.de

\version "2.16.0"
\header {
  title = "Die Gedanken sind frei"	 	  % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                                  % weitere zentrierte Überschrift.
%  poet = "Text: " 			          % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                      % Metrum, linksbündig unter dem Dichter.
  composer = "Volkslied (1865)" 	  	  % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
  arranger = ""                                   % Name des Bearbeiters/Arrangeurs, rechtsbündig unter dem Komponisten.
  tagline = "Diese Noten sind frei kopierbar für jedermann – erstellt für www.ebersberger-liedersammlung.de"
                                                  % Zentriert unten auf der letzten Seite.
%  copyright = "Diese Noten sind frei kopierbar für jedermann – erstellt für www.ebersberger-liedersammlung.de"
                                                  % Zentriert unten auf der ersten Seite (sollten tatsächlich zwei
                                                  % seiten benötigt werden"
}

% Seitenformat und Ränder definieren
\paper {
  #(set-paper-size "a4")    % Seitengröße auf DIN A4 setzen.
  after-title-space = 1\cm  % Die Größe des Abstands zwischen der Überschrift und dem ersten Notensystem.
  bottom-margin = 5\mm      % Der Rand zwischen der Fußzeile und dem unteren Rand der Seite.
  top-margin = 10\mm        % Der Rand zwischen der Kopfzeile und dem oberen Rand der Seite.

  left-margin = 22\mm       % Der Rand zwischen dem linken Seitenrand und dem Beginn der Systeme/Strophen.
  line-width = 175\mm       % Die Breite des Notensystems.
}

\layout {
  indent = #0
}

akkorde = \chordmode {
  s4 c2. s2. g2. c2. s1. g2. c2. g2. c2. g2. c2.f2. c2. g4 f g c
}

melodie = \relative c' {
  \clef "treble"
  \time 3/4
  \tempo 4 = 120
  \key c\major
  \partial 4
  \autoBeamOff
    g'8 g   \autoBeamOn c4 c e8( c) g2 g4 f d g e c \breathe g' c c e8( c) \break
    g2 g4 f d g e c \breathe c' b d b c e c \break 
    b d b c e \breathe c a a c8( a) g2 g8 e' e( d) c4 b c2
  \bar "|."
}
text = \lyricmode {
  \set stanza = "1."
  Die Ge -- dan -- ken sind frei, wer kann sie er -- ra -- ten, 
  sie flie -- hen vor -- bei wie nächt -- li -- che Schat -- ten. 
  Kein Mensch kann sie wis -- sen, kein Jä -- ger er schie -- ßen, 
  es blei -- bet da -- bei: die Ge -- dan -- ken sind frei!
}

\score {
  <<
    \new ChordNames { \akkorde }
    \new Voice = "Lied" { \melodie }
    \new Lyrics \lyricsto "Lied" { \text }
  >>
  \midi { }
  \layout { }
}

\markup {
        \column {
    \hspace #0.1     % schafft ein wenig Platz zur den Noten
    \fill-line {
      \hspace #0.1  % Spalte vom linken Rand, auskommentieren, wenn nur eine Spalte
          \column {      % erste Spalte links
        \line { \bold "  2. "
          \column {
	"Ich denke, was ich will,"
	"und was mich beglücket,"
	"doch alles in der Still,"
	"und wie es sich schicket."
	"Mein Wunsch und Begehren"
	"kann niemand verwehren,"
	"es bleibet dabei:"
	"die Gedanken sind frei."
	" "
          }
        }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "  3. "
          \column {
	"Und sperrt man mich ein"
	"im finsteren Kerker," 
	"das alles sind rein"
	"vergebliche Werke." 
	"Denn meine Gedanken"
	"zerreißen die Schranken" 
	"und Mauern entzwei:"
	"Die Gedanken sind frei!"
	" "
                  }
                }
      }
% { ab hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1    % horizontaler Abstand zwischen den Spalten
          \column {       % zweite Spalte rechts
        \line {
          \bold "  4. "
          \column {
	"Drum will ich auf immer"
	"den Sorgen entsagen"
	"und will mich auch nimmer"
	"mit Grillen mehr plagen."
 	"Man kann ja im Herzen"
	"stets lachen und scherzen"
	"und denken dabei:"
	"die Gedanken sind frei."
	" "
          }
        }
        \hspace #0.1
        \line {
          \bold "   "
          \column {
                        " "
          }
        }
        }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
        }
  }
}
