% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Morgens früh um sechs"		  % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "		                  % weitere zentrierte Überschrift.
%  poet = "Text: "				  % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                      % Metrum, linksbündig unter dem Dichter.
%  composer = "Melodie: "			  % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
  composer = "altes Kinderlied"
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
  \germanChords
	c2 f g c
  %\repeat "volta" 2 {   }
}

akkords = \chordmode {
  \germanChords
       r1 r1 r1 r1 c2 f g c
  %\repeat "volta" 2 {   }
}

melodie = \relative c' {
  \clef "treble"
  \time 2/4
  \tempo 4 = 100
  \key c\major
  \autoBeamOff
  %\partial 4 % 1/4 Auftakt
	e8 e e e f4 r d8 d d d e4 r
  %\repeat "volta" 2 {  }
  \bar "|."
}

melody = \relative c'' {
  \clef "treble"
  \time 2/4
  %\tempo 4 = 100
  \key c\major
  \autoBeamOff
  %\partial 4 % 1/4 Auftakt
        g8 g g e a a a4 g8 g a b c c c4
  %\repeat "volta" 2 {  }
  \bar "|."
}


text = \lyricmode {
  \set stanza = "1."
	Mor -- gens früh um sechs kommt die klei -- ne Hex.
}

endtext = \lyricmode {
  \set stanza = "7."
        Frö -- sche -- bein und Krebs und Fisch, hur -- tig, Kin -- der, kommt zu Tisch!
}


wdh = \lyricmode {
	
}

\score {
  <<
    \new ChordNames { \akkorde }
    \new Voice = "Lied" { \melodie }
    \new Lyrics \lyricsto "Lied" { \text }
%    \new Lyrics \lyricsto "Lied" { \wdh }
  >>
  \layout { ragged-right = ##f }
}

\score {
  \unfoldRepeats
  <<
        \new ChordNames { \akkorde }
        \new Voice = "Lied" { \melodie }
        % \new Voice = "Lied" { \melody }
  >>
  \midi { }
}

\markup {
        \column {
    \hspace #0.1     % schafft ein wenig Platz zur den Noten
    \fill-line {
      \hspace #0.1  % Spalte vom linken Rand, auskommentieren, wenn nur eine Spalte
          \column {      % erste Spalte links
        \line { \bold "  2. "
          \column {
                        "Morgens früh um sieb'n"
                        "schabt sie gelbe Rüb'n."
          }
        }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "  3. "
          \column {
                        "Morgens früh um acht"
                        "wird Kaffee gemacht."
                  }
                }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen
        \line { \bold "  4. "
          \column {
                        "Morgens früh um neun"
                        "geht sie in die Scheun."
                  }
                }
		        \hspace #0.1  % vertikaler Abstand zwischen den Strophen
		        \line { 
		          \column {
		                        "  "
		                  }
		                }
      }
% { ab hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1    % horizontaler Abstand zwischen den Spalten
          \column {       % zweite Spalte rechts
        \line {
          \bold "  5. "
          \column {
                        "Morgens früh um zehn"
                        "holt sie Holz und Spän."
          }
        }
        \hspace #0.1
        \line {
          \bold "  6. "
          \column {
                        "Feuer an um elf"
                        "kocht dann bis um zwölf."
          }
        }
        \hspace #0.1
        \line {
          \bold "   "
          \column {
                        " "
          }
        }
      }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
        }
  }
}

\score {
  <<
    \new ChordNames { \akkorde }
    \new Voice = "Lied" { \melody }
    \new Lyrics \lyricsto "Lied" { \endtext }
%    \new Lyrics \lyricsto "Lied" { \wdh }
  >>
  \layout { ragged-right = ##f }
}



