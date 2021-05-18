% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"
\header {
  title = "Zeigt her eure Füßchen"            % Die Überschrift der Noten wird zentriert gesetzt. 
  subtitle = " "			      % weitere zentrierte Überschrift.
  %  poet = "Text: überliefert"               % Name des Dichters, linksbündig unter dem Unteruntertitel. 
  meter = "" 				      % Metrum, linksbündig unter dem Dichter. 
  composer = "Volkslied"		      % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel. 
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
  after-title-space = 1\cm  % Die Größe des Abstands zwischen der Überschrift und dem ersten Notensystem.
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
	s8 g2 s1 d4. g8 a2 d4. g8 a2:7 d g s g d4. g8 a2 d4. g8 a2:7 d4.
}


melodie= \relative c' {
        \clef "treble"
        \key g \major
        \time 2/4
        \tempo 4 = 110
        \autoBeamOff
	\partial 8
	d8 g4 g8 b8 g4 g8 d8 g4 g8 b8 a4 r8 b8
	a4 b8 cis8 d4 a8 b8 a8 (g8) fis8 e8 d4 r8 d8 g4 g8 b8
	g4 g8 d8 g8 g8 g8 b8 a4 r8 b8 a4 b8 cis8
	d4 a8 b8 a8 g8 fis8 e8 d4 r8 
	\bar "|."
}

text = \lyricmode {
  \set stanza = "1."
	Zeigt her eu -- re Füß -- chen, zeigt her eu -- re Schuh und se -- het den flei -- ßi -- gen Wasch -- frau -- en zu.
	Sie wa -- schen, sie wa -- schen, sie wasch'n den gan -- zen Tag.
	Sie wa -- schen, sie wa -- schen, sie wasch'n den gan -- zen Tag.	
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
                        "Zeigt her eure Füßchen,"
			"zeigt her eure Schuh"
                        "und sehet den fleißgen"
			"Waschfrauen zu."
			"Sie wringen, sie wringen,"
			"sie wring'n den ganzen Tag,"
			"sie wringen, sie wringen,"
			"sie wring'n den ganzen Tag."
			" "
          }
        }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "  3. "
          \column {
			"Zeigt her eure Füßchen,"
			"zeigt her eure Schuh"
                        "und sehet den fleißgen"
			"Waschfrauen zu."
                        "Sie hängen, sie hängen,"
			"sie häng'n den ganzen Tag,"
                        "sie hängen, sie hängen,"
			"sie häng'n den ganzen Tag."
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
                        "Zeigt her eure Füßchen,"
			"zeigt her eure Schuh"
                        "und sehet den fleißgen"
			"Waschfrauen zu."
                        "Sie bügeln, sie bügeln,"
			"sie büg'ln den ganzen Tag,"
                        "sie bügeln, sie bügeln,"
			"sie büg'ln den ganzen Tag."
			" "
          }
        }
        \hspace #0.1
        \line {
          \bold "  5. "
          \column {
                        "Zeigt her eure Füßchen,"
			"zeigt her eure Schuh"
                        "und sehet den fleißgen"
			"Waschfrauen zu."
                        "Sie tanzen, sie tanzen,"
			"sie tanz'n den ganzen Tag,"
                        "sie tanzen, sie tanzen,"
			"sie tanz'n den ganzen Tag."
			" "
          }
        }
        }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
        }
  }
}

