% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"
\header {
  title = "Eine Seefahrt, die ist lustig"     % Die Überschrift der Noten wird zentriert gesetzt. 
  subtitle = " "			      % weitere zentrierte Überschrift.
  poet = ""                 		      % Name des Dichters, linksbündig unter dem Unteruntertitel. 
  meter = "" 				      % Metrum, linksbündig unter dem Dichter. 
  composer = "Volkslied"  		      % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel. 
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
akkorde = \transpose f a \chordmode {
  \germanChords
	s4 f2 f f f c:7
	c:7 f4 bes f c:7
	\repeat "volta" 2 {
		f2 f f2. f4 c2:7
	}
	\alternative {
		{ c2:7 f2. c4:7 }
		{ c2:7 f4  c4:7 f2 }
	}
}


melodie= \transpose f a \relative c' {
        \clef "treble"
        \key f \major
        \time 2/4
        \tempo 4 = 110
        \autoBeamOff
 		\partial 4
		a8. bes16 c8 c a8. bes16 c8 c \breathe a8. bes16 c8 c f g \break 
		a4 g8. \breathe f16 e8 e e e e e d e f f e d c r a8. bes16 \break
		\repeat "volta" 2 {
			c2 ~ c4 \breathe f8. g16 a2 ~ a4 \breathe g8. f16 e8 c' c c \break
		}
		\alternative {
			{ c8 c bes c a2 ~ a8 r a,8. bes16 }
			{ c'8 bes a g f r r4 r }
		}
		\bar "|."
}


text = \lyricmode {
  \set stanza = "1."
	Ei -- ne See -- fahrt, die ist lus -- tig, ein -- ne See -- fahrt, die ist schön,
	ja da kann man man -- che Leu -- te an der Re -- ling spuc -- ken sehn. 
	Hol -- la -- hi, hol -- la -- ho, hol -- la -- hi -- a, hi -- a, -- hi -- a, hol -- la -- ho!
	Hol -- la -- hi -- a, hol -- la -- ho!
}


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
    \hspace #0.7     % schafft ein wenig Platz zur den Noten
    \fill-line {
      \hspace #0.1  % Spalte vom linken Rand, auskommentieren, wenn nur eine Spalte
	  \column {      % erste Spalte links
        \line {	\bold "  2. "
          \column {
			"Unser Käptn ist stets nüchtern,"
			"und er mag auch keinen Rum,"
			"bei den Frauen ist er schüchtern,"
			"na, das ist doch wirklich dumm."
			"Holahi, holaho, holahia, hia, hia, holaho! "
			"Holahi, holaho, holahia, hia, hia, holaho! "
			" "
		  }
        }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "  3. "
          \column {
			"Und die Möwen, froh und heiter,"
			"kleckern öfter was auf's Deck,"
			"doch der Moses nimmt den Schrubber"
			"und fegt alles wieder weg."
			"Holahi, holaho, holahia, hia, hia, holaho! "
			"Holahi, holaho, holahia, hia, hia, holaho! "
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
			"Kommt das Schiff mal in den Hafen,"
			"geht die Mannschaft schnell an Land,"
			"keiner will an Bord mehr schlafen,"
			"na, das ist doch wohlbekannt."
			"Holahi, holaho, holahia, hia, hia, holaho! "
			"Holahi, holaho, holahia, hia, hia, holaho! "
			" "
          }
        }
      }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
	}
  }
}

