% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Es war eine Mutter"		      % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                              % weitere zentrierte Überschrift.
%  poet = "Text: " % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                  % Metrum, linksbündig unter dem Dichter.
  composer = "Badisches Volkslied"	      % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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
  \partial 4
	s4 g2. a2.:m d2.:7 g2. s2. a2.:m d2.:7 g2 s4
}



melodie = \relative c' {
  \clef "treble"
  \time 3/4
  \tempo 4 = 120
  \key g\major
  %\autoBeamOff
  \partial 4
	d4 g4 g4 b4 a4 a4 c4 fis,4 fis4 a4 g4 g4 \breathe d4
	g4 g4 b4 a4 a4 c4 fis,4 fis4 a4 g4 g4 r4
  \bar "|."
}

text = \lyricmode {
	\set stanza = "1."
	Es war ei -- ne Mut -- ter, die hat -- te vier Kin -- der:
	Den Früh -- ling, den Som -- mer, den Herbst und den Win -- ter.
}

wdh = \lyricmode { }



\score {
  <<
    \new ChordNames { \akkorde }
    \new Voice = "Lied" { \melodie }
    \new Lyrics \lyricsto "Lied" { \text }
%    \new Lyrics \lyricsto "Lied" { \wdh }
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
                        "Der Frühling bringt Blumen,"
                        "der Sommer bringt Klee,"
                        "der Herbst bringt die Ernte,"
                        "der Winter den Schnee."
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
                        "Das Klatschen, das Klatschen,"
                        "das muß man verstehn."
                        "Da muß man sich dreimal"
                        "im Kreise umdrehn."
			" "
           }
        }
        }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
        }
  }
}


