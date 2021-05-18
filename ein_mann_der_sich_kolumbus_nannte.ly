% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Ein Mann, der sich Kolumbus nannte"   % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                              % weitere zentrierte Überschrift.
%  poet = "Text: "			      % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                  % Metrum, linksbündig unter dem Dichter.
%  composer = "Melodie: "		      % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
  composer = "Volkslied"
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
 % \partial 8
	s8 g2 c4 g c4 d:7 g2 g c4 g c d:7 g2 d4 a:7 d2 a:7 
	d8 a d4:7 g2 d:7 s g8 g4. g2 d:7 s4. d8.:7 g2 
}

melodie = \relative c' {
  \clef "treble"
  \time 2/4
  \tempo 4 = 100
  \key g\major
  \autoBeamOff
  \partial 8
	d8
	g g d d 
	e e d4 \breathe 
	e16 e e e fis8 fis 
	g4 r8 d 
	g8 g d d 
	e e d4 \breathe 
	e16 e e e fis8 fis 
	g4 r8 b 
	%\break
	a8. b16 a8 g 
	fis8 a d \breathe fis, 
	a8. b16 a8 g
	fis e d4 \breathe 
	g8. g16 g8 g 
	a8. a16 a4 \breathe 
	fis16 fis fis fis e8 fis
	g b d4 \breathe 
	g,8. g16 g8 g 
	a8. a16 a4 \breathe 
	fis16 fis fis fis e8 fis 
	g2
   \bar "|."
}

text = \lyricmode {
  \set stanza = "1."
	Ein Mann, der sich Ko -- lum -- bus nannt, wi -- de -- wi -- de -- witt bum bum,
	war in der Schiff -- fahrt wohl -- be -- kannt, wi -- de -- wi -- de -- witt bum bum.
 	Es drück -- ten ihn die Sor -- gen schwer, er such -- te neu -- es Land im Meer.
	Glo -- ri -- a, Vik -- to -- ri -- a, wi -- de -- wi -- de -- witt -- juch -- hei -- ra -- sa,
	Glo -- ri -- a, Vik -- to -- ri -- a, wi -- de -- wi -- de -- witt, bum, bum!
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
                        "Als er den Morgenkaffee trank,"
                        "da rief er fröhlich: »Gott sei Dank!«"
                        "Denn schnell kam mit der ersten Tram"
                        "der span'sche König bei ihm an. Gloria  ..."
			" "
          }
        }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "  3. "
          \column {
                        "»Kolumbus«, sprach er, »lieber Mann,"
                        "du hast schon manche Tat getan."
                        "Ein's fehlt noch unserer Gloria:"
                        "Entdecke mir Amerika!« Gloria ..."
			" "
                  }
                }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen
        \line { \bold "  4. "
          \column {
                        "Gesagt, getan, ein Mann, ein Wort,"
                        "am selben Tag fuhr er noch fort."
                        "Und eines Morgen schrie er: »Land!«"
                        "Wie deucht mir alles so bekannt. Gloria ..."
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
                        "Das Volk an Land stand stumm und zag."
                        "Da sagt Kolumbus: »Guten Tag!"
                        "Ist hier vielleicht Amerika?«"
                        "Da schrien alle Wilden: »Ja!« Gloria ..."
			" "
          }
        }
        \hspace #0.1
        \line {
          \bold "  6. "
          \column {
                        "Die Wilden waren sehr erschreckt"
                        "und schrien all: »Wir sind entdeckt!«"
                        "Der Häuptling rief ihm: »Lieber Mann,"
                        "als dann bist du kolumbus dann!« Gloria ..."
			" "
          }
        }
        }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
        }
  }
}

