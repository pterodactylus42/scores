% Dieses Notenblatt wurde erstellt von David Göhler
% Kontakt: pirat@online.de

\version "2.16.0"
\header {
  title = "Schneeflöckchen, Weißröckchen" 	  % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                                  % weitere zentrierte Überschrift.
  poet = "Text: H. Haberkorn"		          % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                      % Metrum, linksbündig unter dem Dichter.
  composer = "Altes Volkslied"			  % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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


akkorde = \transpose d c \chordmode { \germanChords
  s4 d2. a2. a2.:7 d2. d2. g2. d2 a4:7 d2
}

melodie = \transpose d c \relative c' {
  \clef "treble"
  \time 3/4
  \tempo 4 = 110
  \key d\major
  \partial 4
  \autoBeamOn
	fis8( g) a4 a b e, e e8( fis) g4 g a \break
	fis2\breathe fis8( g) a4 a d cis b a8(g) fis4 g e d2
  \bar "|."
}

text = \lyricmode {
 \set stanza = "1."
	Schnee -- flöck -- chen, Weiß -- röck -- chen, da kommst du ge --
	schneit. Du kommst aus den Wol -- ken, dein Weg ist so weit. 
}

%{
wdh = \lyricmode {
  Es war so fin -- ster und auch so bit -- ter kalt.
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
			"Komm, setz dich ans Fenster,"
			"du lieblicher Stern."
			"Malst Blumen und Blätter,"
			"wir haben dich gern."
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
			"Schneeflöckchen, du deckst uns"
			"die Blümelein zu."
			"Dann schlafen sie sicher"
			"in himmlischer Ruh."
			" "
          }
        }
        }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
        }
  }
}

