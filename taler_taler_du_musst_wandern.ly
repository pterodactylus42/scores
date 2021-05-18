% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"
\header {
  title = "Taler, Taler, du musst wandern" 	  % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                                  % weitere zentrierte Überschrift.
  %  poet = "Text: "    		          % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                      % Metrum, linksbündig unter dem Dichter.
  composer = "volkstümliches Singspiel" 	  % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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
  \germanChords
  f1 c2 f2 f1 c2:7 f2 f2 bes c:7 f2 f2 g2:m c f
}

melodie = \relative c' {
  \clef "treble"
  \time 4/4
  \tempo 4 = 120
  \key f\major
  \autoBeamOff
	f4 f a a g g f c \breathe a' a c c bes bes a f \breathe \break
	c' c d2 bes4 bes c2 \breathe a4 a bes bes g g f2
  \bar "|."
}

text = \lyricmode {
%  \set stanza = "1."
  Ta -- ler, Ta -- ler, du musst wan -- dern, von dem ei -- nem Ort zum an -- dern.
  Bist nicht hier, bist nicht dort, bist an ein -- nem an -- der'n Ort. 
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

%{
\markup {
    \column {
      \hspace #0.3
      \line {
 		\bold "  1. "
        \column {
	  		"Ri, ra, rusch, wir fahren mit der Kutsch,"
			"wir fahren über Stock und Stein."
			"Da bricht das Pferdchen sich ein Bein!"
			"Ri, ra, rutsch, wir fahren mit der Kutsch!"
		}
      }
      \hspace #0.3
      \line {
 		\bold "  2. "
        \column {
	  		"Ri, ra, ritten, wir fahren mit dem Schlittn,"
			"wir fahren übern tiefen See,"
			"da bricht der Schlitten ein, o weh!"
			"Ri, ra, ritten, wir fahren mit dem Schlittn,"
		}
      }
      \hspace #0.3
      \line {
                \bold "  3. "
        \column {
                        "Ri, ra, ruß, jetzt gehn wir hald zu Fuß!"
                        "Da bricht auch kein Pferdebein,"
                        "da bricht uns auch kein Schlitten ein!"
                        "Ri, ra, ruß, jetzt gehn wir hald zu Fuß!"
                }
      }

      \hspace #0.3
      \line {
                \bold "  4. "
        \column {
                        "Ri, ra, rutsch, wir fahren mit der Kutsch,"
                        "wir fahren mit der Schneckenpost,"
                        "wo es keinen Pfennig kost!"
                        "Ri, ra, rutsch, wir fahren mit der Kutsch!"
                }
      }

	}
}
%}
%{
\markuplines {
  \italic {
    \line {
      Gesetzt von Michael Nausch aka Django
      \general-align #Y #DOWN {
        \epsfile #X #3 #"publicdomain.eps"
      }
    }
  }
}
%}
