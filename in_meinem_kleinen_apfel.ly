% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "In meinem kleinen Apfel"	      % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                              % weitere zentrierte Überschrift.
  poet = "Text: überliefert"		      % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                  % Metrum, linksbündig unter dem Dichter.
  composer = "Melodie: Wolfgang Amadeus Mozart" % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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
  after-title-space = 2\cm  % Die Größe des Abstands zwischen der Überschrift und dem ersten Notensystem.
  bottom-margin = 5\mm      % Der Rand zwischen der Fußzeile und dem unteren Rand der Seite.
  top-margin = 10\mm        % Der Rand zwischen der Kopfzeile und dem oberen Rand der Seite.

  left-margin = 22\mm       % Der Rand zwischen dem linken Seitenrand und dem Beginn der Systeme/Strophen.
  line-width = 175\mm       % Die Breite des Notensystems.
}

\layout {
  indent = #0
}

akkorde = \transpose d c \chordmode {
  s4 d1 g a d1. s2
  g1 d2 a d1
}


melodie = \transpose d c \relative c' {
  \clef "treble"
  \time 4/4
  \tempo 4 = 110
  \key d\major
  \autoBeamOn
  \partial 4
 	a'8 (g8)
	fis4 fis4 fis4 fis4
	g4 g4 r4 a8 (g8)
	e4 e4 e4 e4
	a4 r2 fis8 (g8)
	a4 a4 a4 a4
	b4. (cis8) d4 \breathe g,4
	fis4 a4 e4 a4
	d,4 r2 s4
  \bar "|."
}


text = \lyricmode {
  \set stanza = "1."
	In mei -- nem klei -- nen Ap -- fel, da sieht es lus -- tig aus:
	es sind da -- rin fünf Stüb -- chen grad wie in ei -- nem Haus.
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
                        "In jedem Stübchen wohnen"
                        "zwei Kernchen, schwarz und fein,"
                        "die liegen drin und träumen"
                        "vom lieben Sonnenschein."
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
                        "Sie träumen auch noch weiter"
                        "gar einen schönen Traum,"
                        "wie sie einst werden hängen"
                        "am lieben Weihnachtsbaum."
			" "
          }
        }
        }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
        }
  }
}


