% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Drei Chinesen"		      % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                              % weitere zentrierte Überschrift.
%  poet = "Text: "			      % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                  % Metrum, linksbündig unter dem Dichter.
%  composer = "Melodie: "		      % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
  composer = "Volkslied"
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
	f1 g:m c:7 f f:7 bes c:7 f
}

melodie = \relative c' {
  \clef "treble"
  \time 4/4
  \tempo 4 = 120
  \key f\major
  \autoBeamOff
        f4. f8 f8 f8 e8 f8 g4 g4 g2 \breathe g8 g8 g8 g8 g8 g8 f8 g8
        a4 a8 a8 a4 r8 f8 c'8 c8 c8 c8 c4 a8 f8 d'4 d4 d2 \breathe
        c4. d8 c8 bes8 a8 g8 f4 f4 f2	
   \bar "|."
}

text = \lyricmode {
  \set stanza = "1."
	Drei Chi -- ne --sen mit dem Kon -- tra -- bass sa -- ßen auf der Stra -- ße und 
	er -- zähl -- ten sich was. Da kam die Po -- li -- zei: Ja, was ist denn das?
	Drei Chi -- ne -- sen mit dem Kon -- tra -- bass. 
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
      \hspace #0.3
      \line {
 		\bold "  2. "
        \column {
	  		"Dra Chanasan mat dam Kantrabass"
			"saßan af dar Straßa and arzahltan sach was,"
			"da kam da Palaza, ja, was ast dann das?"
			"Dra Chanasan mat dam Kantrabass."
			" "
		}
      }
      \hspace #0.3
      \line {
                \bold "  ! "
	\column {  \italic "Bei jeder weiteren Strophe wird ein neuer Vokal (e, i, o, u) eingefügt,"
		   \italic "danach auch noch alle Umlaute (ä, ö, ü, äu)."
                }
      }
	}
}

