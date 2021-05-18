% Dieses Notenblatt wurde erstellt von David Göhler
% Kontakt: pirat@online.de

\version "2.16.0"
\header {
  title = "Summ, summ, summ" 	 		  % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                                  % weitere zentrierte Überschrift.
  poet = "Text: Hoffmann von Fallersleben"        % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                      % Metrum, linksbündig unter dem Dichter.
  composer = "bömisches Volkslied"		  % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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
  g4 d g2 d g g d g d g4 d g2 c4 d g2
}

melodie = \relative c' {
  \clef "treble"
  \time 2/4
  \tempo 4 = 90
  \key g\major
%  \partial 4  % kein Auftakt oder doch?
  \autoBeamOff
    d'4 c b r4 a8 b c a g4 r4 \break
    b8 c d b a b c a \breathe b c d b a b c a \breathe \break
    d4 c b r4 a8 b c a g4 r4
    \bar "|."
}
text = \lyricmode {
  \set stanza = "1."
  Summ, summ, summ! Bien -- chen summ her -- um!
  Ei, wir tun dir nichts zu -- lei -- de, flieg nur aus in Wald und Hei -- de.
  Summ, summ, summ! Bien -- chen summ her -- um! 
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
	"Summ, summ, summ!"
	"Bienchen summ herum!"
	"Such' in Blumen, such' in Blümchen,"
	"dir ein Tröpfchen, dir ein Krümchen."
	"Summ, summ, summ!"
	"Bienchen summ herum!"
	" "
          }
        }
      }
% { ab hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1    % horizontaler Abstand zwischen den Spalten
          \column {       % zweite Spalte rechts
        \line {
          \bold "  3. "
          \column {
	"Summ, summ, summ!"
	"Bienchen summ herum!"
	"Kehre heim mit reicher Habe,"
	"bau uns manche volle Wabe."
	"Summ, summ, summ!"
	"Bienchen summ herum!"
	" "
          }
        }
        }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
        }
  }
}
