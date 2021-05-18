% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Die Wissenschaft hat festgestellt"	  % Die Überschrift der Noten wird zentriert gesetzt.
%  subtitle = " "		                  % weitere zentrierte Überschrift.
%  poet = "Text: "				  % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                      % Metrum, linksbündig unter dem Dichter.
%  composer = "Melodie: "			  % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
  composer = "überliefertes Volkslied"
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
	s4 g1 d2:7 g g1 d2:7 g s1 d2:7 g g1 c4 d:7 g2 g1 s1 g d:7 g c g2 d:7 g2.  
  %\repeat "volta" 2 {   }
}


melodie = \relative c'' {
  \clef "treble"
  \time 4/4
  \tempo 4 = 110
  \key g\major
  \autoBeamOff
  \partial 4 % 1/4 Auftakt
	b4 b8 a g a b b b4 a8 a a4 b8 b b \breathe b b a g a b b b4 a b8 ([a]) g4 r8 b b a g a b b b b
	a a a a b b b b \breathe b a g a b b b b a a b ([a]) g2 \breathe b g d8 g2.. \breathe b2 g a8 a2.. 
	\breathe b2 g c8 c4. r4 c b8 b4 g8 a a4 fis8 g2.    
  %\repeat "volta" 2 {  }
  \bar "|."
}


text = \lyricmode {
  \set stanza = "1."
	Die Wis -- sen -- schaft hat fest -- ge -- stellt, fest -- ge -- stellt, fest -- ge -- stellt,
	daß Mar -- me -- la -- de Fett ent -- hält, Fett ent -- hält. D'rum es -- sen wir auf je -- der
	Rei -- se, je --  der Rei -- se, je -- der Rei -- se, Mar -- me -- la -- de ei -- mer -- wei -- se,
	ei -- mer -- wei -- se.  Mar -- me -- la  -- de, Mar -- me -- la  -- de, Mar -- me -- la  -- de,
	die es -- sen wir al -- le so gern.
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
%    \hspace #0.1     % schafft ein wenig Platz zur den Noten
    \fill-line {
      \hspace #0.1  % Spalte vom linken Rand, auskommentieren, wenn nur eine Spalte
          \column {      % erste Spalte links
        \line { \bold "  2. "
          \column {
                        "Die Wissenschaft hat festgestellt, ..."
			"daß Knackwurst Pferdefleisch enthält,"
			"Pferdefleisch enthält."
			"D'rum essen wir auf jeder Reise, ..."
			"heiße Knackwurst meterweise, meterweise."
			"Knackwurst, Knackwurst, Knackwurst,"
			"die essen wir alle so gern."
			" "
          }
        }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "  3. "
          \column {
			"Die Wissenschaft hat festgestellt, ..."
                        "daß Coca-Cola Schnaps enthält,"
			"Schnaps enthält."
			"D'rum trinken wir auf jede Reise, ..."
			"Coca-Cola fässerweise, fässerweise,"
			"Coca-Cola, Coca-Cola, Coca-Cola,"
			"die trinken wir fässerweise."
			" "
                  }
                }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen
        \line { \bold "  4. "
          \column {
                        "Die Wissenschaft hat festgestellt, ..."
			"daß Zigaretten Heu enthält,"
			"Heu enthält."
			"D'rum rauchen wir auf jeder Reise, ..." 
			"Zigaretten fuderweise, fuderweise."
			"Zigaretten, Zigaretten, Zigaretten,"
			"die rauchen wir alle so gern."
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
                        "Die Wissenschaft hat festgestellt, ..."
			"daß Stanniol Schokolade enthält,"
			"Schokolade enthält."
			"D'rum essen wir auf jeder Reise, ..."
			"Schokolade tonnenweise, tonnenweise."
			"Schokolade, Schokolade, Schokolade,"
			"die essen wir alle so gern."
			" "
          }
        }
        \hspace #0.1
        \line {
          \bold "  6. "
          \column {
                        "Die Wissenschaft hat festgestellt, ..."
			"daß Margarine Koks enthält,"
			"Koks enthält."
			"D'rum essen wir auf jeder Reise, ..."
			"Margarine säckeweise, säckeweise."
			"Margarine, Margarine, Margarine."
			"die essen wir alle so gern."
			" "
          }
        }
        \hspace #0.1
        \line {
          \bold "  7. "
          \column {
                        "Die Wissenschaft hat festgestellt, ..."
			"daß Ölsardinen Fisch enthält,"
			"Fisch enthält!"
			"D'rum schlürfen wir auf jeder Reise, ..."
			"Ölsardinen kistenweise, kistenweise."
			"Ölsardinen, Ölsardinen, Ölsardinen,"
			"die schlürfen wir alle so gern."
			" "
          }
        }
      }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
        }
  }
}


