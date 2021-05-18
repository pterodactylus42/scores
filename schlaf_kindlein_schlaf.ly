% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Schlaf, Kindlein, Schlaf"          % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = "volkstümliches Wiegenlied"      % weitere zentrierte Überschrift.
  poet = "Text: aus »Des Knaben Wunderhorn«"  % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                  % Metrum, linksbündig unter dem Dichter.
  composer = "Melodie: Johann Friedrich Reichardt (1751)" % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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

akkorde = \chordmode {
  f c:7 f s f c:7 f s bes, c f s bes, c f s c:7 s f
}

melodie = \relative c' {
  \clef "treble"
  \time 2/4
  \tempo 4 = 90
  \key f\major
  \autoBeamOff
	a'4 g8 g8 f4 r8 c8 a'8 a8 g8 g8 f4 r8 f8\break 
	bes8 bes8 g8 g8 c8 c8 a8 a8 bes8 bes8 g8 g8 c8 c8 a4 \breathe \break
	bes4 g8 g8 f4 r4 
  \bar "|."
}

text = \lyricmode {
%  \set stanza = "1."
  Schlaf, Kind -- lein, schlaf! Der Va -- ter hüt' die Schaf,
  die Mut -- ter schüt -- telts Bäu -- me -- lein, 
  da fällt her -- ab ein Träu -- me -- lein,
  Schlaf, Kind -- lein, schlaf!
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
                        "Schlaf, Kindlein, schlaf!"
                        "Der Vater hüt die Schaf,"
                        "die Mutter hütets Lämmelein,"
                        "drum Schlaf du goldigs Engelein"
                        "Schlaf, Kindlein, schlaf!"
			" "
          }
        }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "  3. "
          \column {
                        "Schlaf, Kindlein, schlaf!"
                        "Der Vater hüt die Schaf,"
                        "die Mutter hütets Böckelein,"
                        "da krieg wir schöne Röckelein"
                        "Schlaf, Kindlein, schlaf!"
			" "
                  }
                }
        \hspace #0.1
        \line {
          \bold "  4. "
          \column {
                        "Schlaf, Kindlein, schlaf!"
                        "Am Himmel ziehn die Schaf."
                        "Die Sternlein sind die Lämmerlein,"
                        "der Mond, der ist das Schäferlein."
                        "Schlaf, Kindlein, schlaf!"
			" "
          }
        }
      }
% { ab hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1    % horizontaler Abstand zwischen den Spalten
          \column {       % zweite Spalte rechts
        \line {
          \bold "  5. "
          \column {
                        "Schlaf, Kindlein, schlaf!"
                        "So schenk ich dir ein Schaf"
                        "mit einer goldnen Schelle fein,"
                        "das soll dein Spielgeselle sein."
                        "Schlaf, Kindlein, schlaf!"
			" "
          }
        }
        \hspace #0.1
        \line {
          \bold "  6. "
          \column {
                        "Schlaf, Kindlein, schlaf"
                        "und blök nicht wie ein Schaf!"
                        "Sonst kommt des Schäfers Hündelein"
                        "und beißt mein böses Kindelein."
                        "Schlaf, Kindlein, schlaf!"
			" "
          }
        }
        \hspace #0.1
        \line {
          \bold "  7. "
          \column {
                        "Schlaf, Kindlein, schlaf,"
                        "da draußen steht ein Schaf."
                        "Ein Schaf und eine bunte Kuh,"
                        "mein Kindlein mach die Äuglein zu."
                        "Schlaf, Kindlein, schlaf!"
			" "
          }
        }
        }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
        }
  }
}

