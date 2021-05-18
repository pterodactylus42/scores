% Dieses Notenblatt wurde erstellt von David Göhler
% Kontakt: pirat@online.de

\version "2.16.0"
\header {
  title = "Laterne, Laterne" 			  % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                                  % weitere zentrierte Überschrift.
  %  poet = "Text:"     			  % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                      % Metrum, linksbündig unter dem Dichter.
  composer = "Volkslied"			  % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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

akkorde = \chordmode {
  s4 f1 d:m f d:m c2 d:m c d:m f d:m c f4
}
melodie = \relative c' {
  \clef "treble"
  \time 4/4
  \tempo 4 = 110
  \key f\major
  \partial 4
  \autoBeamOn
    d'4 c2 a4 d c2 a \breathe c4 c a d c2 a4 \breathe f8 a c4 c a f8 a c4 c a \breathe f8 a c4 c8 c d d d4 c c a
%  \break
  \bar "|."
}
text = \lyricmode {
%  \set stanza = "1."
  La -- ter -- ne, La -- ter -- ne, Son -- ne, Mond und Ster -- ne, bren -- ne auf, mein Licht, bren -- ne auf, mein Licht, a -- ber nur mei -- ne lie -- be La -- ter -- ne nicht.
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
      \hspace #0.3
      \line {
 		\bold "  2. "
        \column {
	  		"Laterne, Laterne, Sonne, Mond und Sterne,"
			"sperr' ihn ein den Wind, sperr' ihn ein den Wind,"
			"er soll warten, bis wir zu Hause sind."
			" "
		}
      }
      \hspace #0.3
      \line {
 		\bold "  3. "
        \column {
	  		"Laterne, Laterne, Sonne, Mond und Sterne,"
			"bleibe hell mein Licht, bleibe hell mein Licht,"
			"denn sonst strahlt meine liebe Laterne nicht."
		}
      }
	}
}

