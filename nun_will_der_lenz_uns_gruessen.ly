% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Nun will der Lenz uns grüßen"	  % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "		                  % weitere zentrierte Überschrift.
  poet = "Text:	August Fischer (1885)"		  % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                      % Metrum, linksbündig unter dem Dichter.
  composer = "Melodie: altes Reigenlied"          % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
  arranger = " "                                   % Name des Bearbeiters/Arrangeurs, rechtsbündig unter dem Komponisten.
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
  \germanChords
  \partial4  
  \repeat "volta" 2 { 
  		     	s4 g1 d c2 d4:4 d:3 g2. 
}
     g4 g2. c4 g2. d4 g2 g d s4 d g2 e:m d d c d g2.
}

melodie = \relative c' {
  \clef "treble"
  \time 4/4
  \tempo 4 = 100
  \key g\major
  \autoBeamOff
  \partial4
  \repeat "volta" 2 { 
		     d4 g a b b a4. (g8) fis4 \breathe d e8 ([fis]) g4 g fis g2 r4
		    }
	\break b8 ([c]) d4. e8 d4 c b2 b4 \breathe a b c d c8 ([b]) a2 r4 a 
	b4. b8 g4. g8 a2 fis4 \breathe d e8 ([fis]) g4 g fis g2.
  \bar "|."
}

text = \lyricmode {
  \set stanza = "1."
	Nun will der Lenz uns grü -- ßen, von Mit -- tag weht es lau;
	Draus wob die brau -- ne Hei -- de sich ein Ge -- wand gar fein_
	und läd im Fest -- tags -- klei -- de zum Mai -- en -- tan -- ze ein.
}

wdh = \lyricmode {
	aus al -- len Wie -- sen sprie -- ßen die Blu -- men rot und blau.
}

\score {
  <<
    \new ChordNames { \akkorde }
    \new Voice = "Lied" { \melodie }
    \new Lyrics \lyricsto "Lied" { \text }
    \new Lyrics \lyricsto "Lied" { \wdh }
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
      \hspace #0.1
      \line {
        \bold "  2. "
        \column {
                        "Waldvöglein Lieder singen,"
                        "wie ihr sie nur begehrt,"
                        "drum auf zum frohen Springen,"
                        "die Reis' ist Goldes wert."
                        "Hei, unter grünen Linden,"
                        "da leuchten weiße Kleid!"
                        "Heija, nun hat uns Kindern"
                        "ein End all Wintersleid."
			" "
                }
      }
        }
}
