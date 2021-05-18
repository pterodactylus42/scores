% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Dörnröschen war ein schönes Kind"  % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                              % weitere zentrierte Überschrift.
%  poet = "Text: "			      % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                  % Metrum, linksbündig unter dem Dichter.
%  composer = "Melodie: sächsische Volksweise" % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
  composer = "Hessisches Volkslied"
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
	s8 c2:7 f c:7 f s8 c4.:7 f2 c:7 f4 s 
}

melodie = \relative c'' {
  \clef "treble"
  \time 2/4
  \tempo 4 = 100
  \key f\major
  \autoBeamOff
  \partial 8
	c8  d8 c8 bes8 g8  f8 a8 a4  g8 bes8 bes4 \break
	a8 c8 c8 \breathe c8  d8 c8 bes8 g8  f8 a8 a4  c4 c4 f,4 r4
   \bar "|."
}

text = \lyricmode {
  \set stanza = "1."
	Dorn -- rös -- chen war ein schö -- nes Kind, schö -- nes Kind,
	schö -- nes Kind, Dorn -- rös -- chen war ein schö -- nes Kind, schö -- nes Kind.
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
                        "Dornröschen, nimm dich ja in acht,"
                        "ja in acht, ja in acht!"
                        "Dornröschen, nimm dich ja in acht,"
                        "ja in acht!"
			" "
          }
        }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "  3. "
          \column {
                        "Da kam die böse Fee herein,"
                        "Fee herein, Fee herein."
                        "Da kam die böse Fee herein,"
                        "Fee herein."
			" "
                  }
                }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen
        \line { \bold "  4. "
          \column {
                        "Dornröschen, du sollst sterben,"
                        "sterben, sterben!"
                        "Dornröschen, du sollst sterben,"
                        "sterben!"
			" "
                  }
                }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen
        \line { \bold "  5. "
          \column {
                        "Da kam die gute Fee herein,"
                        "Fee herein, Fee herein."
                        "Da kam die gute Fee herein,"
                        "Fee herein."
			" "
                  }
                }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen
        \line { \bold "  6. "
          \column {
                        "Dornröschen, schlafe hundert Jahr,"
                        "hundert Jahr, hundert Jahr,"
                        "Dornröschen, schlafe huntert Jahr,"
                        "hundert Jahr."
			" "
                  }
                }
      }
% { ab hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1    % horizontaler Abstand zwischen den Spalten
          \column {       % zweite Spalte rechts
        \line {
          \bold "  7. "
          \column {
                        "Da wuchs die Hecke rießengroß,"
                        "rießengroß, rießengroß,"
                        "da wuchs die Hecke rießengroß,"
                        "rießengroß."
			" "
          }
        }
        \hspace #0.1
        \line {
          \bold "  8. "
          \column {
                        "Da kam der junge Königssohn,"
                        "Königssohn, Königssohn,"
                        "da kam der junge Königssohn,"
                        "Königssohn."
			" "
          }
        }
        \hspace #0.1
        \line {
          \bold "  9. "
          \column {
                        "Dornröschen, wache wieder auf,"
                        "wieder auf, wieder auf,"
                        "Dornröschen, wache wieder auf,"
                        "wieder auf!"
			" "
          }
        }
        \hspace #0.1
        \line {
          \bold "  10. "
          \column {
                        "Da feierten sie das Hochzeitsfest,"
                        "Hochzeitsfest, Hochzeitsfest,"
                        "da feierten sie das Hochzeitsfest,"
                        "Hochzeitsfest."
			" "
          }
        }
        \hspace #0.1
        \line {
          \bold "  11. "
          \column {
                        "Da jubelte das ganze Volk,"
                        "ganze Volk, ganze Volk,"
                        "da jubelte das ganze Volk,"
                        "ganze Volk"
			" "
          }
        }
        }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
        }
  }
}

