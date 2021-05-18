% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Brüderchen, komm, tanz mit mir"    % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                              % weitere zentrierte Überschrift.
  poet = "Text: aus der Oper »Hänsel und Gretel«" % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                  % Metrum, linksbündig unter dem Dichter.
  composer = "Melodie: Engelbert Humperdinck (1854 - 1921)" % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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

% Akkorde für die Gitarrenbegleitung
akkorde = \chordmode {
  \germanChords
	g2 d:7 s g g4:7 c d g e:m a:m d2:7
}


melodie = \relative c' {
  \clef "treble"
  \time 2/4
  \tempo 4 = 100
  \key g\major
  \autoBeamOff
	d8 g8 g8 g8 fis8 a8 d,4 d8 fis8 a8 c8 b8 d8 g,4 \breathe
	b8 b8 c4 a8 a8 b4 g8 g8 a8 a8 fis8 fis8 g4
  \bar "|."
}


text = \lyricmode {
  \set stanza = "1."
	Brü -- der -- chen, komm, tanz mit mir, bei -- de Hän -- de reich ich dir,
	ein -- mal hin, ein -- mal her, rund -- he -- rum, das ist nicht schwer.
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
                        "Mit den Händen klipp, klipp, klapp,"
                        "mit den Füßen tripp, tripp, trapp,"
                        "einmal hin, einmal her,"
                        "rundherum, das ist nicht schwer."
			" "
          }
        }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "  3. "
          \column {
                        "Mit dem Köpchen nick, nick, nick,"
                        "mit den Fingern tick, tick, tick,"
                        "einmal hin, einmal her,"
                        "rundherum, das ist nicht schwer."
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
                        "Ei, das hast du gut gemacht,"
                        "ei, das hätt ich nicht gedacht,"
                        "einmal hin, einmal her,"
                        "rundherum, das ist nicht schwer."
			" "
          }
        }
        \hspace #0.1
        \line {
          \bold "  5. "
          \column {
                        "Noch einmal das schöne Spiel,"
                        "weil es mir so gut gefiel,"
                        "einmal hin, einmal her,"
                        "rundherum, das ist nicht schwer."
			" "
          }
        }
        }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
        }
  }
}

