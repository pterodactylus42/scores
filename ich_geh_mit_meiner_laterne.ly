% Dieses Notenblatt wurde erstellt von David Göhler, basierend auf
% der Vorlage von Peter Crighton [http://www.petercrighton.de] 
%
% Kontakt: pirat@online.de, PeteCrighton@googlemail.com

\version "2.16.0"

\header {
  title = "Ich geh mit meiner Laterne"		  % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "		                  % weitere zentrierte Überschrift.
%  poet = "Text: "				  % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                      % Metrum, linksbündig unter dem Dichter.
%  composer = "Melodie: "			  % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
  composer = "Volkslied"
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
  \repeat volta 2 { s8 f1. c2. f4. s4 }
  \repeat volta 2 { s8 f2. d2.:m c2. f4. s4 }
}
melodie = \relative c' {
  \clef "treble"
  \time 3/4
  \tempo 4 = 100
  \key f\major
  \partial 8
  \repeat volta 2 { \autoBeamOff
    c8 f4 f8 a f a c4. a4 f8 g8. g16 g8 g( a) g f4. r4 }
  \break
  \repeat volta 2 {
    a8 c4 a8 f4 a8 c4 a8 f4 f8 g g g g a g f4. r4 }
%  \bar "|."
}
text = \lyricmode {
%  \set stanza = "1."
  Ich geh' mit mei -- ner La -- ter -- ne und mein -- ne La -- terne mit mir.
  Der Hund der bellt, die Katz mi -- aut. Ra -- bim -- mel, ra -- bam -- mel, ra -- bumm.
}
wdh = \lyricmode {
  Am Him -- mel leuch -- ten die Ster -- ne und un -- ten, da leuch -- ten wir.
}
\score {
  <<
    \new ChordNames { \akkorde }
    \new Voice = "Lied" { \melodie }
    \new Lyrics \lyricsto "Lied" { \text }
    \new Lyrics \lyricsto "Lied" { \wdh }
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
      \hspace #0.3
      \line {
 		\bold "  2. "
        \column {
	  		"Ich geh' mit meiner Laterne und meine Laterne mit mir."
	  		"Am Himmel leuchten die Sterne und unten, da leuchten wir."
    		\line { \bold "Mein Licht ist schön, könnt ihr es sehn?" "Rabimmel, rabammel, rabumm." }
	  		"Mein Licht ist schön, könnt ihr es sehn? Rabimmel, rabammel, rabumm."
			" "
		}
      }
	  \hspace #0.2
      \line {
 		\bold "  3. "
        \column {
	  		"Ich geh' mit meiner ... "
	  		" ... und unten, da leuchten wir."
            \line { \bold "Ich trag mein Licht und fürcht mich nicht." "Rabimmel, rabammel, rabumm." }
	  		"Ich trag mein ... , rabumm"
			" "
		}
      }
	  \hspace #0.2 
	  \line { \bold "  4. " 
	  \column{		"Laternenlicht, verlösch' mir nicht." 
			" "
		}}

	  \line { \bold "  5. " 
	  \column{	"Ein Lichtermehr zu Martins Ehr."
	  			" "}
		}
	  \line { \bold "  6. " 
	  \column{	"Der Martinsmann, der zieht voran."
	  			" "}
		}
	  \line { \bold "  7. " 
	  \column{	"Wie schön das klingt, wenn jeder singt."
	  			" "}
		}
	  \line { \bold "  8. " 
	  \column{	"Ein Kuchenduft liegt in der Luft."
	  			" "}
		}
	  \line { \bold "  9. " 
	  \column{"Beschenkt uns heut', ihr lieben Leut'."
	  			" "}
		}
	  \line { \bold "10. " 
	  \column{"Mein Licht ist aus, wir geh'n nach Haus."
	  			" "}
		}
	}
}

%{
\markuplines {
  \italic {
    \line {
      Gesetzt von David Göhler
      \general-align #Y #DOWN {
        \epsfile #X #3 #"publicdomain.eps"
      }
    }
  }
}
%}
