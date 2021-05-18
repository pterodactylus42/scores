% Dieses Notenblatt wurde erstellt von David Göhler
% Kontakt: pirat@online.de

\version "2.16.0"

\header {
  title = "Der Kuckuck und der Esel"		  % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                                  % weitere zentrierte Überschrift.
  poet = "Text: Hoffmann von Fallersleben 1850"   % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                      % Metrum, linksbündig unter dem Dichter.
  composer = "Melodie: K. Fr. Zelter" 	  	 	  % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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
  after-title-space = 2\cm  % Die Größe des Abstands zwischen der Überschrift und dem ersten Notensystem.
  bottom-margin = 5\mm      % Der Rand zwischen der Fußzeile und dem unteren Rand der Seite.
  top-margin = 10\mm        % Der Rand zwischen der Kopfzeile und dem oberen Rand der Seite.

  left-margin = 22\mm       % Der Rand zwischen dem linken Seitenrand und dem Beginn der Systeme/Strophen.
  line-width = 175\mm       % Die Breite des Notensystems.
}

\layout {
  indent = #0
}

akkorde = \transpose g f \chordmode {
  s4 g1 d:7 s1 g1 s1 d:7 s1 g g4 d g c g2. c4 g2 d g
}

melodie = \transpose g f \relative c' {
  \clef "treble"
  \time 4/4
  \tempo 4 = 160
  \key g\major
  \partial 4
  \autoBeamOff
    d'4 b d b d c c r c a c a c b2 r4  
    d8( c) b4 b b b c c r c8( b) a4 a a a b b r g 
    g a b c d4.( e8 d4) \breathe c b b a a g2
%  \break
  \bar "|."
}
text = \lyricmode {
  \set stanza = "1."
  Der Ku -- chuck und der E -- sel, die hat -- ten gro -- ßen Streit, 
  wer wohl am bes -- ten sän -- ge, wer wohl am bes -- ten sän -- ge zur schö -- nen Mai -- en -- zeit, 
  zur schö -- nen Mai -- en -- zeit
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
			"Der Kuckuck sprach: Das kann ich!"
			"und hub gleich an zu schrein:"
  			"Ich aber kann es besser,"
			"ich aber kann es besser!"
			"Fiel gleich der Esel ein,"
			"fiel gleich der Esel ein."
			" "
          }
        }
      }
% { ab hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1    % horizontaler Abstand zwischen den Spalten
          \column {       % zweite Spalte rechts
        \line {
          \bold "  3. "
          \column {
	  		"Das klang so schön und lieblich,"
			"so schön von fern und nah,"
  			"sie sangen alle beide,"
			"sie sangen alle beide:"
			"Kuckuck, kuckuck, i-a"
			"kuckuck, kuckuck, i-a!"
			" "
          }
        }
        }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
        }
  }
}

