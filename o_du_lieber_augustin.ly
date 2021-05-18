% Dieses Notenblatt wurde erstellt von David Göhler
% Kontakt: pirat@online.de

\version "2.16.0"
\header {
  title = "O du lieber Augustin"	 	  % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                                  % weitere zentrierte Überschrift.
  %  poet = "Text: "			          % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                      % Metrum, linksbündig unter dem Dichter.
  composer = "wahrscheinlich Marx Augustin 17. Jahrhundert" % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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

akkorde = \chordmode { \germanChords
  g1. d2. g2. g2. g2. d2.:7 g2. d2. g2. d2. g2. g1. d2.:7 g2.
}

melodie = \relative c' {
  \clef "treble"
  \time 3/4
  \tempo 4 = 150
  \key g\major
%  \partial 4  % kein Auftakt oder doch?
  \autoBeamOff
    d'4. e8 d c b4 g g a d, d b' g g \breathe \break
    d'4. e8 d c b4 g g a d, d g2 r4 \break
	a4 d, d b' g g a d, d b' g g  \breathe \break
	d'4. e8 d c b4 g g a d, d g2.
    \bar "|."
}
text = \lyricmode {
  \set stanza = "1."
    O du lie -- ber Au -- gu -- stin, Au -- gu -- stin, Au -- gu -- stin,
	o du lie -- ber Au -- gu -- stin, al -- les ist hin.
	Geld ist weg, Mäd'l ist weg, al -- les weg, al -- les weg.
	O du lie -- ber Au -- gu -- stin, al -- les ist hin.
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
                        "O du lieber Augustin,"
			"Augustin, Augustin,"
			"O du lieber Augustin,"
			"alles ist hin."
			"Rock ist weg, Stock ist weg,"
			"Augustin liegt im Dreck,"
			"O du lieber Augustin,"
			"alles ist hin."
			" "
          }
        }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "  3. "
          \column {
                        "O du lieber Augustin,"
			"Augustin, Augustin,"
			"O du lieber Augustin,"
			"alles ist hin."
			"Und selbst das reiche Wien,"
			"hin ist's wie Augustin,"
			"Weint mit mir im gleichen Sinn,"
			"alles ist hin!"
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
                        "O du lieber Augustin,"
			"Augustin, Augustin,"
			"O du lieber Augustin,"
			"alles ist hin."
			"Jeder Tag war ein Fest,"
			"und was jetzt? Pest, die Pest!"
			"Nur ein groß' Leichenfest,"
			"das ist der Rest."
			" "
          }
        }
        \hspace #0.1
        \line {
          \bold "  5. "
          \column {
                        "O du lieber Augustin,"
			"Augustin, Augustin,"
			"O du lieber Augustin,"
			"alles ist hin."
			"Augustin, Augustin,"
			"leg' nur ins Grab dich hin!"
			"O du lieber Augustin,"
			"alles ist hin!"
			" "
          }
        }
        }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
        }
  }
}

