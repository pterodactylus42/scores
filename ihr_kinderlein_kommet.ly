% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"
\header {
  title = "Ihr Kinderlein kommet"             % Die Überschrift der Noten wird zentriert gesetzt. 
  subtitle = " "			      % weitere zentrierte Überschrift.
  poet = "Text: Johann Abraham Peter Schulz (1790)" % Name des Dichters, linksbündig unter dem Unteruntertitel. 
  meter = "" 				      % Metrum, linksbündig unter dem Dichter. 
  composer = "Melodie: weihnachtliches Volkslied" % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel. 
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
akkorde = \transpose g d \chordmode {
  \germanChords
	s8 g1 d2:7 g2 g1 d2:7 g2 s 
	d2:7 g2 s g1 d2:7 s4.
}


melodie= \transpose g d \relative c'' {
        \clef "treble"
        \key g \major
        \time 4/8
        \tempo 4 = 100
        \autoBeamOff
	\partial 8
	d8 d4 b8 d d4 b8 d c4 a8 c b4 r8 d8 d4 b8 d d4 b8 d c4 a8 c b4 r8  
	b8 a4 a8 a c4 c8 c b4 b8 b e4. \breathe e8  d4 d8 d g4 d8 b8 c4 a8 fis g4.
	\bar "|."
}


text = \lyricmode {
  \set stanza = "1."
	Ihr Kin -- der  -- lein kom -- met, o kom -- met doch all,
	zur Krip -- pe her kom -- met in Beth -- le -- hems Stall,
	und seht, was in die -- ser hoch -- hei -- li -- gen Nacht
	der Va -- ter im Him -- mel für Freu -- de uns macht. 
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
                        "Da liegt es ihr Kinder,"
                        "auf Heu und auf Stroh:"
                        "Maria und Joseph"
                        "betrachten es froh;"
                        "Die redlichen Hirten"
                        "knien betend davor,"
                        "hoch oben schwebt jubelnd"
                        "der Engelein Chor."
			" "
          }
        }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "  3. "
          \column {
                        "O beugt wie die Hirten"
                        "anbetend die Knie;"
                        "Erhebet die Hände"
                        "und danket wie sie!"
                        "Stimmt freudig, ihr Kinder,"
                        "wer soll sich nicht freu'n?"
                        "Stimmt freudig zum Jubel"
                        "der Engel mit ein."
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
                        "Was geben wir Kinder,"
                        "was schenken wir dir?"
                        "Du bestes und liebstes"
                        "der Kinder dafür?"
                        "Nichts willst du von Schätzen"
                        "und Freuden der Welt,"
                        "ein Herz nur voll Unschuld"
                        "allein dir gefällt."
			" "
          }
        }
        \hspace #0.1
        \line {
          \bold "  5. "
          \column {
                        "So nimm unsre Herzen"
                        "zum Opfer denn hin,"
                        "wir geben sie gerne"
                        "mit fröhlichen Sinn,"
                        "und mache sie heilig"
                        "und selig sie deins,"
                        "und mach sie auf ewig"
                        "mit deinem vereint!"
			" "
          }
        }
        }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
        }
  }
}

