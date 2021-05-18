% Dieses Notenblatt wurde erstellt von David Göhler
% Kontakt: pirat@online.de

\version "2.16.0"

\header {
  title = "Alles neu macht der Mai"		  % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                                  % weitere zentrierte Überschrift.
%  poet = "Text: " 			          % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                      % Metrum, linksbündig unter dem Dichter.
  composer = "Volkslied"	 	  	  % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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


akkorde = \transpose a c \chordmode { \germanChords
  a2 e:7 a e a e:7 a4 e:7 a2 e1 a1. e2:7 a4 e:7 a2
}

melodie = \transpose a c \relative c' {
  \clef "treble"
  \time 2/4
  \tempo 4 = 100
  \key a\major
%  \partial 4
  \autoBeamOff
	e'8 cis cis4 d8 b b4 a8 b cis d e e e4\breathe\break
	e8  cis cis4 d8 b b4 a8 cis e e a,4 r\break
	b8 b b b b cis d4 cis8 cis cis cis cis d e4\breathe\break
	e8  cis cis4 d8 b b4 a8 cis e e a,4 r\break
  \bar "|."
}

text = \lyricmode {
 \set stanza = "1."
	Al -- les neu macht der Mai, macht die See -- le frisch und frei.
	Lasst das Haus, kommt he -- raus! Bin -- det ei -- nen Strauß!
	Rings er glän -- zet Son -- nen -- schein, duf -- tend pran -- gen Flur und Hain:
	Vo -- gel -- sang, Hör -- ner -- klang, tönt den Wald ent -- lang.
}

%{
wdh = \lyricmode {
  Ich weiß wohl, es geht erst um Mit -- ter -- nacht \skip 2 rum.
}
%}

\score {
  <<
    \new ChordNames { \akkorde }
    \new Voice = "Lied" { \melodie }
    \new Lyrics \lyricsto "Lied" { \text }
    %\new Lyrics \lyricsto "Lied" { \wdh }
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
  			"Wir durchziehen Saaten grün,"
			"Haine, die ergötzend blüh'n,"
			"Waldespracht, neu gemacht"
			"nach des Winters Nacht."
			"Dort im Schatten an dem Quell"
			"rieseln munter silberhell"
			"Klein und Groß ruht im Moos,"
			"wie im weichen Schoß"
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
			"Hier und dort, fort und fort,"
			"wo wir ziehen, Ort für Ort,"
			"alles freut sich der Zeit,"
			"die verschönt erneut."
			"Widerschein der Schöpfung blüht"
			"uns erneuend im Gemüt."
			"Alles neu, frisch und frei"
			"macht der holde Mai."
			" "
          }
        }
        }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
        }
  }
}

