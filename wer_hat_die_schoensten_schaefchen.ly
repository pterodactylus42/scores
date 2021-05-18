% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"
\header {
  title = "Wer hat die schönsten Schäfchen" 	  % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                                  % weitere zentrierte Überschrift.
  poet = "Text: Hoffmann von Fallersleben 1850"   % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                      % Metrum, linksbündig unter dem Dichter.
  composer = "Melodie: Johann Friedrich Reichardt" % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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


akkorde = \chordmode {
  s4 d2 g4 a d2 a2. g4 a d a2 s2
  g2 d2 g d4 a d2 g4 a d2.
}

melodie = \relative c' {
  \clef "treble"
  \time 4/4
  \tempo 4 = 120
  \key d\major
  \partial 4
  \autoBeamOff
	d4 a' a g g fis2 e4 \breathe a \break a d, g fis e2 r4 e4 
	g g fis fis \break b2 a4 \breathe g fis fis e e d2 r4
  \bar "|."
}

text = \lyricmode {
 \set stanza = "1."
  Wer hat die schön -- sten Schäf -- chen? Die hat der gold -- ne Mond, der
  hin -- ter un -- sern Bäu -- men am Him -- mel dro -- ben wohnt.
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
			"Er kommt am späten Abend,"
			"wenn alles schlafen will,"
			"hervor aus seinem Hause"
			"zum Himmel leis' und still."
			" "
          }
        }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "  3. "
          \column {
			"Dann weidet er die Schäfchen"
			"auf seiner blauen Flur,"
			"denn all' die weißen Sterne"
			"sind seine Schäfchen nur."
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
			"Sie tun uns nichts zu Leide,"
			"hat eins das and're gern,"
			"und Schwestern sind und Brüder"
			"da droben Stern an Stern."
			" "
          }
        }
        \hspace #0.1
        \line {
          \bold "  5. "
          \column {
			"Und soll ich dir eins bringen,"
			"so darst du niemals schrei'n"
			"musst freundlich wie die Schäfchen"
			"und wie ihr Schäfer sein."
			" "
          }
        }
        }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
        }
  }
}

