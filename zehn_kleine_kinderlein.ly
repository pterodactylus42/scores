% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Zehn kleine Kinderlein"		  % Die Überschrift der Noten wird zentriert gesetzt.
%%%%%  subtitle = " "		                  % weitere zentrierte Überschrift.
%  poet = "Text: "			  	  % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                      % Metrum, linksbündig unter dem Dichter.
%  composer = "Melodie: " 			  % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
  composer = "volkstümliches Spiellied"
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
    f2 f f4 c f2 c:7 f c:7 f f d:m bes f c:7 f4 a:m c2:7 f
    % \repeat "volta" 2 { s1 }
}

melodie = \relative c' {
  \clef "treble"
  \time 2/4
  \tempo 4 = 100
  \key f\major
  \autoBeamOff
  %\partial 4 % 1/4 Auftakt
	f4 f8. f16 f8 c c c f f g g a4. \breathe a8
	bes bes  g g a a f f g g e e f4 r %\break
	f8 f f f f f f f d' d d d c4 r
	bes 8 bes bes bes a a a a c c c c f,2
  %\repeat "volta" 2 {   }
  \bar "|."
}

text = \lyricmode {
  \set stanza = "1."
	Zehn klei -- ne Kin -- der -- lein, die schlie -- fen in der Scheun,
	das ei -- ne ging im Heu ver -- lorn, da wa -- ren's  nur noch neun.
	Ein klein, zwei klein, drei klein, vier klein fünf klein Kin -- der -- lein
	sechs klein, sieb'n klein, acht klein, neun klein, zehn klein Kin -- der -- lein.
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
  \layout { }
}

\score {
  \unfoldRepeats
  <<
        \new ChordNames { \akkorde }
        \new Voice = "Lied" { \melodie }
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
                        "Neun kleine Kinderlein,"
                        "die gingen auf die Jagd,"
                        "da hat sich eines totgeschoss'n,"
                        "da waren's nur noch acht."
                        "Ein klein ..."
			" "
          }
        }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "  3. "
          \column {
                        "Acht kleine Kinderlein,"
                        "die aßen gerne Rüben,"
                        "da hat sich eines totgegess'n,"
                        "da waren's nur noch sieben."
                        "Ein klein ..."
			" "
                  }
                }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen
        \line { \bold "  4. "
          \column {
                        "Sieb'n kleine Kinderlein,"
                        "die gingen zu 'ner Hex',"
                        "da hat sie eines aufgefress'n,"
                        "da waren's nur noch sechs."
                        "Ein klein ..."
			" "
                  }
                }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen
        \line { \bold "  5. "
          \column {
                        "Sechs kleine Kinderlein,"
                        "die liefen in die Sümpf',"
                        "das eine ist drin stecken 'blieben,"
                        "da waren's nur noch fünf."
                        "Ein klein ..."
			" "
                  }
                }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen
        \line { \bold "  6. "
          \column {
                        "Fünf kleine Kinderlein,"
                        "die tranken gerne Bier,"
                        "da hat sich eines totgetrunk'n,"
                        "da waren's nur noch vier."
                        "Ein klein ..."
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
                        "Vier kleine Kinderlein,"
                        "die aßen gerne Brei,"
                        "das eine hat zuviel gegess'n"
                        "da waren's nur noch drei."
                        "Ein klein ..."
			" "
          }
        }
        \hspace #0.1
        \line {
          \bold "  8. "
          \column {
              		"Drei kleine Kinderlein,"
			"die tanzten Ringelreih',"
			"da hat sich eines totgetanzt,"
			"da waren's nur noch zwei."
			"Ein klein ..."
			" "
          }
        }
        \hspace #0.1
        \line {
          \bold "  9. "
          \column {
                        "Zwei kleine Kinderlein,"
                        "die gingen zu 'nem Schreiner,"
                        "das eine wurd' in 'n Sarg gelegt,"
                        "da waren's nur noch eins."
                        "Ein klein ..."
			" "
          }
        }
        \hspace #0.1
        \line {
          \bold "  10. "
          \column {
                        "Ein kleines Kindelein,"
                        "das war entsetzlich schlau,"
                        "das ging zurück zu seinem Dorf,"
                        "und nahm sich eine Frau."
                        "Ein klein ..."
			" "
          }
        }
        \hspace #0.1
        \line {
          \bold "   "
          \column {
                        \italic
			"   (dann wieder von vorne)"
          }
        }
      }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
        }
  }
}

