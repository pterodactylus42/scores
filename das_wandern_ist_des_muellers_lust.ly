% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Das Wandern ist des Müllers Lust"  % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                              % weitere zentrierte Überschrift.
  poet = "Text: Wilhelm Müller (1818)"        % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                  % Metrum, linksbündig unter dem Dichter.
  composer = "Melodie: Karl F. Zöllner (1844)" % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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
	s8 g1 g1 s4 d4:7 g4 s4 d1:7 d:7 c8 d8:7 g8 d8:7 g8. s16 s4 s4 d4:7 g4 s4
}


melodie = \relative c' {
  \clef "treble"
  \time 2/4
  \tempo 4 = 90
  \key g\major
  \autoBeamOff
  \partial 8
	d8 g8. d16 b8 c8 d8. e16 d8 g8 b8. a16 g8 a8
	b8. c16 b8 g8 b4 (a4) g4 r8 d16 ([fis16]) a8 a8 b16 ([a16]) gis16 ([a16])
	fis8 a8 d,8 d16 ([fis16]) a8 a8 b16 ([a16]) gis16 ([a16]) fis8 a8 d,8 \breathe d8
	e8 fis8 g8 a8 b8. a16 g8 b8 d4 (fis,4) g4 r4
  \bar "|."
}


text = \lyricmode {
  \set stanza = "1."
	Das Wan -- dern ist des Mül -- lers Lust, das Wan -- dern ist des Mül -- lers Lust,
	das Wan -- dern. Das muss ein schlech -- ter Mül -- ler sein, dem nie -- mals fiel
	das Wan -- dern ein, dem nie -- mals fiel das Wan -- dern ein, das Wan -- dern.
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
                        "Vom Wasser haben wir's gelernt,"
                        "vom Wasser haben wir's gelernt,"
			"vom Wasser."
                        "Das hat nicht Ruh' bei Tag und Nacht,"
                        "ist stets auf Wanderschaft bedacht,"
                        "ist stets auf Wanderschaft bedacht,"
			"das Wasser."
			" "
          }
        }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "  3. "
          \column {
                        "Das sehn wir auch den Rädern ab,"
                        "das sehn wir auch den Rädern ab,"
			"den Rädern."
                        "Die gar nicht gerne still stehn"
                        "und sich am Tag nicht müde drehn,"
                        "und sich am Tag nicht müde drehn,"
			"die Räder."
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
                        "Die Steine selbst, so schwer sie sind,"
                        "die Steine selbst, so schwer sie sind,"
			"die Steine."
                        "Sie tanzen mit den muntern Reih'n"
                        "und wollen gar noch schneller sein,"
                        "und wollen gar noch schneller sein,"
			"die Steine."
			" "
          }
        }
        \hspace #0.1
        \line {
          \bold "  5. "
          \column {
                        "Oh Wandern, Wandern meine Lust,"
                        "oh Wandern, Wandern meine Lust,"
			"oh Wandern!"
                        "Herr Meister und Frau Meisterin,"
                        "lass mich in Frieden weiter ziehn,"
                        "lasst mich in Frieden weiter ziehn"
			"und wandern!"
			" "
          }
        }
        }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
        }
  }
}


