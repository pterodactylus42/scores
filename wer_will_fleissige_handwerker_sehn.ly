% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"
\header {
  title = "Wer will fleißige Handwerker sehn" 	  % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                                  % weitere zentrierte Überschrift.
  poet = " "       				  % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                      % Metrum, linksbündig unter dem Dichter.
  composer = "Volkstümliches Spiellied"		  % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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

% Akkorde für die Gitarrenbegleitung
akkorde = \chordmode {
  \germanChords
  %\partial 4
	g1 g1 d2. a4:7 a4:7 d2. 
	\repeat "volta" 2 {
	    d1 g1 d1:7 g4 d4:7 g2	
	}
}



melodie = \relative c'' {
  \clef "treble"
  \time 4/4
  \tempo 4 = 120
  \key g\major
  \autoBeamOff
	g4 g4 g4 g8 g8 b4 g8 g8 g2 \breathe a4. g8 fis4 e4 e4 d4 d2 \breathe
  \repeat volta 2 {
        d4 a'4 a4 r4 d,4 b'4 b4 r8 b8 c4. b8 a4 d4 b4 a4 g2 \breathe }
  %\bar "|."
}

text = \lyricmode {
	\set stanza = "1."
	Wer will flei -- ßi -- ge Hand -- wer -- ker  sehn, ei, der muß zu uns her -- gehn.
	Stein auf Stein, Stein auf Stein, das Häus -- chen wird bald fer -- tig sein.
}

wdh = \lyricmode { }


\score {
  <<
    \new ChordNames { \akkorde }
    \new Voice = "Lied" { \melodie }
    \new Lyrics \lyricsto "Lied" { \text }
    % \new Lyrics \lyricsto "Lied" { \wdh } % auskommentieren, wenn Text zweizeilig gesetzt wird
  >>
  \layout { }
}

\score {
  \unfoldRepeats
  <<
        \new ChordNames { \akkorde }
        \new Voice = "Lied" { \melodie }
  >>    
  \midi { }
}


\markup {
        \column {
    \hspace #0.1     % schafft ein wenig Platz zur den Noten
    \fill-line {
      \hspace #0.1  % Spalte vom linken Rand, auskommentieren, wenn nur eine Spalte
          \column {      % erste Spalte links
        \line { \bold "  2. "
          \column {
	  		"Wer will fleißige Handwerker sehn,"
			"ei, der muss zu uns hergehn."
			"Oh wie fein, oh wie fein,"
			"der Glaser setzt die Scheiben ein."
			" "
          }
        }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "  3. "
          \column {
			"Wer will fleißige Handwerker sehn,"
			"ei, der muss zu uns hergehn."
                        "Tauchet ein, tauchet ein,"
			"der Maler streicht die Wände fein."
			" "
                  }
                }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "  4. "
          \column {
                        "Wer will fleißige Handwerker sehn,"
			"ei, der muss zu uns hergehn."
                        "Zisch, zisch, zisch - zisch, zisch, zisch,"
			"der Tischler hobelt glatt den Tisch."
			" "
                  }
                }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "  5. "
          \column {
                        "Wer will fleißige Handwerker sehn,"
			"ei, der muss zu uns hergehn."
                        "Poch, poch, poch - poch, poch poch,"
			"der Schuster schustert zu das Loch."
			" "
                  }
                }
	 }
% { ab hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1    % horizontaler Abstand zwischen den Spalten
          \column {       % zweite Spalte rechts
        \line {
          \bold "  6. "
          \column {
                        "Wer will fleißige Handwerker sehn,"
			"ei, der muss zu uns hergehn."
                        "Stich, stich, stich - stich, stich, stich,"
			"der Schneider näht ein Kleid für mich."
			" "
          }
        }
        \hspace #0.1
        \line {
          \bold "  7. "
          \column {
                        "Wer will fleißige Handwerker sehn,"
			"ei, der muss zu uns hergehn."
                        "Rühre ein, rühre ein,"
			"der Kuchen wird bald fertig sein."
			" "
          }
        }
        \hspace #0.1
        \line {
          \bold "  8. "
          \column {
                        "Wer will fleißige Handwerker sehn,"
			"ei, der muss zu uns hergehn."
                        "Trapp, trapp, drein - trapp, trapp, drein,"
			"jetzt gehn wir von der Arbeit heim."
			" "
          }
        }
        \hspace #0.1
        \line {
          \bold "  9. "
          \column {
                        "Wer will fleißige Handwerker sehn,"
			"ei, der muss zu uns hergehn."
                        "Hopp, hopp, hopp - hopp, hopp, hopp,"
			"jetzt tanzen alle im Galopp."
			" "
          }
        }
   }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
        }
  }
}
