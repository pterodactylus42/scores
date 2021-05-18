% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"
\header {
  title = "Morgen, Kinder, wird's was geben"  % Die Überschrift der Noten wird zentriert gesetzt. 
  subtitle = " "			      % weitere zentrierte Überschrift.
  poet = "Text: Hoffmann von Fallersleben (1850)" % Name des Dichters, linksbündig unter dem Unteruntertitel. 
  meter = "" 				      % Metrum, linksbündig unter dem Dichter. 
  composer = "Melodie: Carl Gottlieb Haring (1850)" % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel. 
  arranger = "" 			      % Name des Bearbeiters/Arrangeurs, rechtsbündig unter dem Komponisten. 
  tagline = "Diese Noten sind frei kopierbar für jedermann – erstellt für www.ebersberger-liedersammlung.de" 
	    				      % Zentriert unten auf der letzten Seite.
%  copyright = "Diese Noten sind frei kopierbar für jedermann – erstellt für www.ebersberger-liedersammlung.de"
	    				      % Zentriert unten auf der ersten Seite (sollten tatsächlich zwei 
					      %	seiten benötigt werden"
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
	g1 c4 d4:7 g2 g1 d4:7 g4 d2:7 g1 c4 d4:7 g2 g1 d4:7 g4 d2:7 d2:7 c2 d2:7 g2 s2 c2 g4 d4:7 g2
}


melodie= \relative c'' {
        \clef "treble"
        \key g \major
        \time 4/4
        \tempo 4 = 110
        \autoBeamOff
	g4 d4 e4 d4 e8 ([g8]) fis8 ([a8]) g4 d4 b'4 b8 ([c8]) d4 b4 c4 b4 a4 r4
	g4 d4 e4 d4 e8 ([g8]) fis8 ([a8]) g4 d4 b'4 b8 ([c8]) d4 b4 c4 b4 a2 \breathe
	c4 c4 e4 e4 a,4 a4 d2 g,4 g4 c4 c4 b8 ([a8]) g8 ([fis8]) g2 
	\bar "|."
}

text = \lyricmode {
  \set stanza = "1."
	Mor -- gen, Kin -- der, wird's was ge -- ben, mor -- gen wer -- den wir uns freun.
	welch ein Ju -- bel, welch ein Le -- ben wird in un -- serm Hau -- se sein!
	Ein -- mal wer -- den wir noch wach, hei -- ßa, dann ist Weih -- nachts -- tag!
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
                        "Wie wird dann die Stube glänzen"
                        "von der großen Lichter Zahl!"
                        "Schöner als bei frohen Tänzen"
                        "ein geputzter Kronensaal."
                        "Wisst ihr noch, wie vor'ges Jahr"
                        "es am Heil'gen Abend war?"
			" "
          }
        }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "  3. "
          \column {
                        "Wisst ihr noch die Spiele, Bücher"
                        "und das schöne Schaukelpferd,"
                        "feine Kleider, wollne Tücher,"
                        "Puppenstube, Puppenherd?"
                        "Morgen strahlt der Kerzen schein,"
                        "morgen werden wir uns freun!"
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
                        "Welch ein schöner Tag ist morgen!"
                        "Neue Freude hoffen wir!"
                        "Unsre guten Eltern sorgen"
                        "lange, lange schon dafür."
                        "O, gewiß, wer sie nicht ehrt,"
                        "ist der ganzen Pracht nicht wert!"
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


