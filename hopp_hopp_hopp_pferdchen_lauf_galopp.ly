% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Hopp, hopp, hopp, Pferdchen lauf Galopp!" % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                              % weitere zentrierte Überschrift.
  poet = "Text: Karl Hahn" 		      % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                  % Metrum, linksbündig unter dem Dichter.
  composer = "Melodie: Karl Gottlieb Hering (1766 - 1853)" % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
  arranger = ""                               % Name des Bearbeiters/Arrangeurs, rechtsbündig unter dem Komponisten.
  tagline = "Diese Noten sind frei kopierbar für jedermann – erstellt für www.ebersberger-liedersammlung.de"
                                              % Zentriert unten auf der letzten Seite.
%  copyright = "Diese Noten sind frei kopierbar für jedermann – erstellt für www.ebersberger-liedersammlung.de"
                                              % Zentriert unten auf der ersten Seite (sollten tatsächlich zwei
                                              % seiten benötigt werden"
}

% Seitenformat und Ränder definieren
\paper {
  #(set-paper-size "a4")    % Seitengröße auf DIN A4 setzen.
  after-title-space = 2\cm  % Die Größe des Abstands zwischen der Überschrift und dem ersten Notensystem.
  bottom-margin = 5\mm      % Der Rand zwischen der Fußzeile und dem unteren Rand der Seite.
  top-margin = 10\mm        % Der Rand zwischen der Kopfzeile und dem oberen Rand der Seite.

  left-margin = 22\mm       % Der Rand zwischen dem linken Seitenrand und dem Beginn der Systeme/Strophen.
  line-width = 175\mm       % Die Breite des Notensystems.
}

\layout {
  indent = #0
}

% Akkorde für die Gitarrenbegleitung
akkorde = \chordmode {
  \germanChords
	g1 d2 g2 
	d2:7 g2 d:7 g
	g1 d2:7 g
}



melodie = \relative c'' {
  \clef "treble"
  \time 2/4
  \tempo 4 = 120
  \key g\major
  \autoBeamOff
	g4 b4 d4 r4 d8 c8 b8 a8 g4 r4 \break
	a8 a8 fis8 d8 d'8 d8 b8 g8 \breathe a8 a8 fis8 d8 d'8 d8 b8 g8 \breathe \break
	g8 a8 b8 c8 d4 r4 d8 c8 b8 a8 g4 r4 
  \bar "|."
}

text = \lyricmode {
  \set stanza = "1."
	Hopp, hopp, hopp! Pferd -- chen. lauf Ga -- lopp!
	Ü -- ber Stock und ü -- ber Stei -- ne, 
	a -- ber brich dir nicht die Bei -- ne!
	Hopp, hopp, hopp, hopp, hopp! Pferd -- chen. lauf Ga -- lopp!
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
                        "Tipp, tipp, tapp!"
                        "Wirf mich nur nicht ab!"
                        "Zähme deine wilden Triebe,"
                        "Pferdchen, tu es mir zuliebe."
                        "Tipp, tipp, tipp, tipp, tapp!"
                        "Wirf mich nur nicht ab!"
			" "
          }
        }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "  3. "
          \column {
                        "Brrr, brrr, he!"
                        "Steh doch, Pferdchen, steh!"
                        "Sollst schon heut noch weiterspringen,"
                        "muß dir nur erst Futter bringen."
                        "Brrr, brrr, brrr, bree, he!"
                        "Steh doch, Pferdchen, steh!"
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
                        "Ja, ja, ja!"
                        "Sind wir wieder da!"
                        "Schwester, Vater, liebe Mutter!"
                        "Findet auch mein Pferdchen Futter?"
                        "Ja, ja, ja, ja, ja!"
                        "Sind wir wieder da!"
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


