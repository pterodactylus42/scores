% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"
\header {
  title = "Kling, Glöckchen, klingelingeling" % Die Überschrift der Noten wird zentriert gesetzt. 
  subtitle = " "
  poet = "Text: Carl Enslin 1875"             % Name des Dichters, linksbündig unter dem Unteruntertitel. 
  meter = " " 				      % Metrum, linksbündig unter dem Dichter. 
  composer = "Melodie: Benedikt Widmann 1910" % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel. 
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
akkorde = \transpose d c \chordmode {
  \germanChords
	d2 s2 a2:7 d2 a4 d4 d4 a4 e4:m a4 a4:7 d4 a4 e4:7 a2 d4 e4 e4:7 a4 d2 s2 a2:7 d2
}


melodie= \transpose d c \relative c'' {
        \clef "treble"
        \key d \major
        \time 2/4
        \tempo 4 = 90
        \autoBeamOff
        a4 fis8 g8 a16 b16 a16 b16 a4 g4 e8 a8 fis2 \breathe \break
        e8 e8 fis8 d8 fis4 e4 g8 g8 g8 e8 g4 fis4 \breathe 
        e8 e8 fis8 gis8 a4 e4 fis8 b8 a8 gis8 b4 a4 \breathe \break
        a4 fis8 g8 a16 b16 a16 b16 a4 g4 e8 a8 fis2
	\bar "|."
}

text = \lyricmode {
  \set stanza = "1."
	Kling, Glöck -- chen, klin -- ge -- lin -- ge -- ling, kling, Glöck -- chen, kling!
        Lasst mich ein, ihr Kin -- der, ist so kalt der Win -- ter,
        öff -- net mir die Tü -- ren, lasst mich nicht er -- frie -- ren.
        Kling, Glöck -- chen, klin -- ge -- lin -- ge -- ling, kling, Glöck -- chen, kling!
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
                        "Kling, Glöckchen, klingelingeling,"
                        "kling Glöckchen, kling!"
                        "Mädchen hört und Bübchen,"
                        "macht mir auf das Stübchen,"
                        "bring euch viele Gaben,"
                        "sollt euch d'ran erlaben"
                        "Kling, Glöckchen, klingelingeling,"
                        "kling Glöckchen, kling!"
          }
        }
      }
% { ab hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1    % horizontaler Abstand zwischen den Spalten
          \column {       % zweite Spalte rechts
        \line {
          \bold "  3. "
          \column {
                        "Kling, Glöckchen, klingelingeling,"
                        "kling Glöckchen, kling!"
                        "Hell erglühn die Kerzen,"
                        "öffnet eure Herzen,"
                        "will drin wohnen fröhlich,"
                        "frommes Kind, wie selig!"
          }
        }
        }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
        }
  }
}

