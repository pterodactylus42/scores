% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"
\header {
  title = "Hänsel und Gretel"		 	  % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                                  % weitere zentrierte Überschrift.
  %  poet = "Text: "			          % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                      % Metrum, linksbündig unter dem Dichter.
  composer = "Volkslied"			  % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
  arranger = ""                                   % Name des Bearbeiters/Arrangeurs, rechtsbündig unter dem Komponisten.
  tagline = "Diese Noten sind frei kopierbar für jedermann – erstellt für www.ebersberger-liedersammlung.de"
                                                  % Zentriert unten auf der letzten Seite.
%  copyright = "Diese Noten sind frei kopierbar für jedermann – erstellt für www.ebersberger-liedersammlung.de"
                                                  % Zentriert unten auf der ersten Seite (sollten tatsächlich zwei
                                                  % seiten benötigt werden"
}

\header {
  title = "Hänsel und Gretel"
  subtitle = " "
  poet = ""
  composer = "Volkslied"
  tagline = "Diese Noten sind frei kopierbar für jedermann – erstellt für www.ebersberger-liedersammlung.de"

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

akkorde = \transpose d c \chordmode { \germanChords
  \repeat volta 2 { d1 d1 a2 a:7 d2. } s4
  a1 a:7 d s d s a2 a:7 d1
}

melodie = \transpose d c \relative c' {
  \clef "treble"
  \time 2/2
  \tempo 2 = 90
  \key d\major
%  \partial 8
  \autoBeamOn
  \repeat volta 2 {
    a'2 fis4 g a2 fis4 d e d e fis d2 r4	
  } \break
    d4 e e e fis g2 e4 e fis e fis g a2. r4 \break
    a2 fis4 g a2 fis4 d e d e fis d2 r2
  \bar "|."
}

text = \lyricmode {
 \set stanza = "1."
  Hän -- sel und Gre -- tel ver -- irr -- ten sich im Wald.
  Sie ka -- men an ein Häus -- chen, von Pfef -- fer -- ku -- chen fein.
  Wer mag der Herr wohl von dies -- sem Häus -- chen sein?
}

wdh = \lyricmode {
  Es war so fin -- ster und auch so bit -- ter kalt.
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
			"Hu, hu, da schaut eine alte Hexe raus!"
			"Sie lockt die Kinder ins Pfefferkuchenhaus."
			"Sie stellte sich gar freundlich. O Hänsel, welche Not!"
			"Sie will dich braten im Ofen braun wie Brot."
			" "
		}
      }
      \hspace #0.1
      \line {
        \bold "  3. "
        \column {
			"Als nun die Hexe zum Ofen schaut hinein,"
			"wird sie gestoßen von unserem Gretelein."
			"Die Hexe, die muss braten, die Kinder gehn nach Haus."
			"Nun ist das Märchen von Hans und Gretel aus."
			" "
		}
      }
	}
}

