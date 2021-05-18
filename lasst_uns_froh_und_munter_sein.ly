% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"
\header {
  title = "Lasst uns froh und munter sein"    % Die Überschrift der Noten wird zentriert gesetzt. 
  subtitle = " "			      % weitere zentrierte Überschrift.
%  poet = "Text: "			      % Name des Dichters, linksbündig unter dem Unteruntertitel. 
  meter = "" 				      % Metrum, linksbündig unter dem Dichter. 
  composer = "Text u. Melodie: Josef Annegarn (1794 - 1843)" % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel. 
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
	c1 s1 g1:7 g1:7 c4 g4 c4 g4 c1 c1 c4 g4 c4 s4 c4 g4 c4 f4 c4 g4 c4 s4
}


melodie= \relative c'' {
        \clef "treble"
        %\key d \major
        \time 4/4
        \tempo 4 = 120
        \autoBeamOff
        g4 g4 g8 ([a8]) g8 ([f8]) e4 e4 e4 r4 f4 f4 f8 ([g8]) f8 ([e8]) \break
	d4 d4 d4 r4 c4 d4 e4 f4 g8 a8 g8 a8 g4 r4 \break
	c4 g4 g8 ([a8]) g8 ([f8]) e4 d4 g4 r4 c4 g4 g8 ([a8]) g8 ([f8]) e4 d4 c4 r4
	\bar "|."
}

text = \lyricmode {
  \set stanza = "1."
	Lasst uns froh und mun -- ter sein und uns recht von Her -- zen freun!
	Lus -- tig, lus -- tig, tra -- le -- ra -- le -- ra!
	Bald ist Ni -- klaus -- a -- bend da, bald ist Ni -- klaus -- a -- bend da.
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
                        "Dann stell ich den Teller auf,"
                        "Niklaus legt gewiss was drauf."
                        "Lustig, lustig, traleralera!"
                        "Bald ist Niklausabend da,"
                        "bald ist Niklausabend da."
			" "
          }
        }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "  3. "
          \column {
                        "Wenn ich schlaf, dann träume ich,"
                        "jetzt bringt Niklaus was für mich."
                        "Lustig, lustig, traleralera!"
                        "Bald ist Niklausabend da,"
                        "bald ist Niklausabend da."
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
                        "Wenn ich aufgestanden bin,"
                        "lauf ich schnell zum Teller hin."
                        "Lustig, lustig, traleralera!"
                        "Bald ist Niklausabend da,"
                        "bald ist Niklausabend da."
			" "
          }
        }
        \hspace #0.1
        \line {
          \bold "  5. "
          \column {
                        "Niklaus ist ein guter Mann,"
                        "dem man nicht g'nug danken kann."
                        "Lustig, lustig, traleralera!"
                        "Bald ist Niklausabend da,"
                        "bald ist Niklausabend da."
			" "
          }
        }
        }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
        }
  }
}

