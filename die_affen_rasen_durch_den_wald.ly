% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"
\header {
  title = "Die Affen rasen durch den Wald" % Die Überschrift der Noten wird zentriert gesetzt. 
%  poet = "Text: "                         % Name des Dichters, linksbündig unter dem Unteruntertitel. 
  meter = ""                               % Metrum, linksbündig unter dem Dichter. 
%  composer = "Melodie: "                  % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel. 
  composer = "Volkslied"
  arranger = ""                            %Name des Bearbeiters/Arrangeurs, rechtsbündig unter dem Komponisten. 
  tagline = "Diese Noten sind frei kopierbar für jedermann – erstellt für www.ebersberger-liedersammlung.de" 
	    % Zentriert unten auf der letzten Seite.
%  copyright = "Diese Noten sind frei kopierbar für jedermann – erstellt für www.ebersberger-liedersammlung.de"
	    % Zentriert unten auf der ersten Seite (sollten tatsächlich zwei Seiten benötigt werden"
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
  	s8 c2 f c f c f c f g1:7 c2 c:7
  \repeat volta 2 {  
	s4. f2 s8 s4. c2 s8 s4. g2:7 s8 s4. c2 s8 s4. f2 s8 s4. c2 s8 s4. g2:7 s8 s4. c2 s8 }
}

melodie = \relative c'' {
  \clef "treble"
  \time 4/4
  \tempo 4 = 150
  \key c\major
  \autoBeamOff
        \partial 8
        a8 g4 g a4. a8 g4 g a4.\breathe a8 g4 g a4. a8 \breathe \break g4 g a8 c, e f g4 g g g c,2 r2 \break
        \repeat volta 2 { c'8 c a c c c4. c8 c a c c c4. \breathe e,8 e f g4 g g8 (g) g4 c (a c8) \breathe
                          c8 c a c c c4. c8 c a c c c4. \breathe e,8 e f g4 g g8 (g) g4 c,2 r8
         }
  %\bar "|."
}

text = \lyricmode {
  \set stanza = "1."
        Die Af -- fen ra -- sen durch den Wald, der ei -- ne macht den an -- dern kalt,
        die gan -- ze Af -- fen -- ban -- de brüllt:
        {
        Wo ist die Ko -- kos -- nuss, wo ist die Ko -- kos -- nuss,
        wer hat die Ko -- kos -- nuss ge -- klaut?
        Wo ist die Ko -- kos -- nuss, wo ist die Ko -- kos -- nuss,
        wer hat die Ko -- kos -- nuss ge -- klaut?
        }
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
                   "Die Affenmama sitzt am Fluss"
		   "und angelt nach der Kokosnuss."
                   "Die ganze Affenbande brüllt ..."
		   " "
          }
        }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "  3. "
          \column {
                   "Der Affenonkel, welch ein Graus,"
		   "reißt ganze Urwaldbäume aus."
                   "Die ganze Affenbande brüllt ..."
		   " "
                  }
                }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "  4. "
          \column {
                   "Die Affentante kommt von fern,"
		   "sie isst die Kokosnuss so gern."
                   "Die ganze Affenbande brüllt ..."
		   " "
                  }
                }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "  5. "
          \column {
		   "Der Affenmilchmann, dieser Knilch,"
		   "der wartet auf die Kokosmilch."
                   "Die ganze Affenbande brüllt ..."
		   " " 
                  }
                }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "  6. "
          \column {
		   "Der Elefant im Urwald spricht:"
		   "Hier in dem Dickicht ist sie nicht!"
                   "Die ganze Affenbande brüllt ..."
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
		   "Die Affenbraut denkt selbst beim Kuß,"
		   "nur immer an die Kokosnuß"
                   "Die ganze Affenbande brüllt ..."
		   " " 
          }
        }
        \hspace #0.1
        \line {
          \bold "  8. "
          \column {
		   "Das Affenbaby voll Genuß"
		   "hält in der Hand die Kokosnuß."
                   "Die ganze Affenbande brüllt ..."
                   " "
          }
        }
        \hspace #0.1
        \line {
          \bold "  9. "
          \column {
		   "Die Affenoma schreit: Hurra,"
		   "die Kokosnuss ist weider da!"
                   "Die ganze Affenbande brüllt ..."
                   " "
          }
        }
        \hspace #0.1
        \line {
          \bold "  10. "
          \column {
		   "Und die Moral von der Geschicht',"
		   "klau keine Kokosnüsse nicht!"
                   "Weil sonst die ganze Bande brüllt ..."
                   " "
          }
        }

        }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
        }
  }
}

