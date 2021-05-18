% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"
\header {
  title = "Alle meine Entchen"		          % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                                  % weitere zentrierte Überschrift.
%  poet = "Text: "                                % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                      % Metrum, linksbündig unter dem Dichter.
%  composer = "Melodie: "                         % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
  composer = "Volkslied"
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

% Akkorde für die Gitarrenbegleitung
akkorde = \transpose d c \chordmode {
  \germanChords
	d8 s4. d4 s4 g8 s4. d4 s4 g8 s4. d4 s4 g8 s4. d4 s4 a8:7 s4. d4 s4
}


melodie = \transpose d c \relative c' {
  \clef "treble"
  \time 2/4
  \tempo 4 = 100
  \key d\major
  \autoBeamOff
	d8 e8 fis8 g8 a4 a4 b8 b8 b8 b8 a4 r4 b8 b8 b8 b8 a4 r4
	g8 g8 g8 g8 fis4 fis4 a8 a8 a8 a8 d,4 r4
  \bar "|."
}


text = \lyricmode {
  \set stanza = "1."
	Al -- le mei -- ne Ent -- chen schwim -- men auf dem See,
	schwim -- men auf dem See, Köpf -- chen un -- term Was -- ser,
	Schwänz -- chen in die Höh.
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
                        "Wenn sie dann gebadet sind"
                        "watscheln sie nach Haus,"
                        "watscheln sie nach Haus,"
                        "und die Mutter Ente,"
                        "schüttelts tüchtig aus."
			" "
          }
        }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "  3. "
          \column {
                        "Alle meine Täubchen"
			"gurren auf dem Dach,"
			"gurren auf dem Dach,"
			"fliegt eins in die Lüfte,"
			"fliegen die andren nach."
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
                       "Alle meine Hühner"
		       "scharren in dem Stroh,"
		       "scharren in dem Stroh,"
		       "finden sie ein Körnchen,"
		       "sind sie alle froh."
		       " "
          }
        }
        \hspace #0.1
        \line {
          \bold "  5. "
          \column {
                        "Alle meine Gänschen"
			"watscheln durch den Grund,"
			"watscheln durch den Grund,"
			"gründen in dem Tümpel,"
			"werden kugelrund."
			" "
          }
        }
        }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
        }
  }
}

