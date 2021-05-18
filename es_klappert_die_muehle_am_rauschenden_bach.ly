% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Es klappert die Mühle am rauschenden Bach" % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                              % weitere zentrierte Überschrift.
  poet = "Text: Ernst Anschütz (1824)"        % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                  % Metrum, linksbündig unter dem Dichter.
  composer = "Melodie: Volkslied (Anfang 19. Jhd.)" % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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
  \partial 8
	s8 g2. c g8 s8 s2 g2. c g8 s8 s2 g2. c g c  g8 s4 c8 s4 g4 
}

melodie = \relative c' {
  \clef "treble"
  \time 6/8
  \tempo 4 = 100
  \key g\major
  \autoBeamOff
  \partial 8
	d8 d8 g8 g8 g8 a8 b8 b8 a8 a8 a4 \breathe d8 b8 r2 d,8
	d8 g8 g8 g8 a8 b8 b8 a8 a8 a4 \breathe d8 b8 r2 b16 ([c16])
	d8. d16 d8 d8 e8 d8 d8 c8 c8 c4 \breathe c8 b8. b16 b8 d8 c8 b8
	b8 a8 a8 a4 \breathe d8 b8 r8 b8 a8 r8 a8 g4 r8 r4
   \bar "|."
}

text = \lyricmode {
  \set stanza = "1."
	Es klap -- pert die Müh -- le am rau -- schen -- den Bach, klipp, klapp!
	Bei Tag und bei Nacht ist der Mül -- ler stets wach, klipp, klapp!
	Er mah -- let uns Korn zu dem kräf -- ti -- gen Brot, und ha -- ben wir sol -- ches,
	dann hat's kei -- ne Not. Klipp, klapp, klipp, klapp, klipp, klapp!
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
                        "Flink laufen die Räder"
                        "und drehen den Stein,"
                        "klipp, klapp!"
                        "Und mahlen den Weizen"
                        "zu Mehl uns so fein,"
                        "klipp, klapp!"
                        "Der Bäcker dann Zwieback"
                        "und Kuchen d'raus bäckt,"
                        "der immer den Kindern"
                        "besonders gut schmeckt."
                        "Klipp, klapp, klipp,"
                        "klapp, klipp, klapp!"
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
                        "Wenn reichliche Körner"
                        "das Ackerfeld trägt,"
                        "klipp, klapp!"
                        "Die Mühle dann flink"
                        "ihre Räder bewegt,"
                        "klipp, klapp!"
                        "Und schenkt uns der Himmel"
                        "nur immerdar Brot,"
                        "so sind wir geborgen"
                        "und leiden nicht Not!"
                        "Klipp, klapp, klipp,"
                        "klapp, klipp, klapp!"
			" "
          }
        }
        }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
        }
  }
}

