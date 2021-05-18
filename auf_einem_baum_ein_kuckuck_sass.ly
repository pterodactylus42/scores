% Dieses Notenblatt wurde erstellt von David Göhler
% Kontakt: pirat@online.de

\version "2.16.0"

\header {
  title = "Auf einem Baum ein Kuckuck saß"	  % Die Überschrift der Noten wird zentriert gesetzt.
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
  after-title-space = 1\cm  % Die Größe des Abstands zwischen der Überschrift und dem ersten Notensystem.
  bottom-margin = 5\mm      % Der Rand zwischen der Fußzeile und dem unteren Rand der Seite.
  top-margin = 10\mm        % Der Rand zwischen der Kopfzeile und dem oberen Rand der Seite.

  left-margin = 22\mm       % Der Rand zwischen dem linken Seitenrand und dem Beginn der Systeme/Strophen.
  line-width = 175\mm       % Die Breite des Notensystems.
}


\layout {
  indent = #0
}


akkorde = \chordmode { \germanChords
  s4 f2 c f2. c2 c4:7 f2 c f4
}

melodie = \relative c' {
  \clef "treble"
  \time 2/4
  \tempo 4 = 100
  \key f\major
  \partial 4
  \autoBeamOff
	c' a8 f a c c( bes) g4 \breathe f8 f16 f f8 f\break
	f8 f16 f g8 e16 e c8 r8 c'4 a8 f a c c( bes) g4 f
  \bar "|."
}

text = \lyricmode {
 \set stanza = "1."
	Auf ei -- nem Baum ein Ku -- ckuck sim -- sa -- la -- dim -- bam
	ba -- sa -- la -- du -- sa -- la -- dim, auf ei -- nem Baum ein Ku -- ckuck saß. 
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
        \line {	\bold "  2. "
          \column {
  			"Da kam ein junger Jägers-, "
			"simsaladimbam basaladusaladim,"
			"da kam ein junger Jägersmann."
			" "
          }
        }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "  3. "
          \column {
			"Der schoss den armen Kuckuck,"
			"simsaladimbam basaladusaladim,"
			"der schoss den armen Kuckuck tot."
			" "
		  }
		}
      }
% { ab hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1    % horizontaler Abstand zwischen den Spalten
	  \column {       % zweite Spalte rechts
		\line { \bold "  4. "
          \column {
			"Und als ein Jahr vergangen,"
			"simsaladimbam basaladusaladim,"
			"und als ein Jahr vergangen war."
			" "
          }
        }
        \hspace #0.1
       	\line { \bold "  5. "
          \column {
			"Da war der Kuckuck wieder,"
			"simsaladimbam basaladusaladim,"
			"da war der Kuckuck wieder da."
			" "
	      }
        }
      }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
	}
  }
}

