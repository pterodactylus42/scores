% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Lirum, larum, Löffelstiel"         % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                              % weitere zentrierte Überschrift.
%  poet = "Text: "                            % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                  % Metrum, linksbündig unter dem Dichter.
  composer = "Volkslied"		      % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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
  after-title-space = 2\cm  % Die Größe des Abstands zwischen der Überschrift und dem ersten Notensystem.
  bottom-margin = 5\mm      % Der Rand zwischen der Fußzeile und dem unteren Rand der Seite.
  top-margin = 10\mm        % Der Rand zwischen der Kopfzeile und dem oberen Rand der Seite.

  left-margin = 22\mm       % Der Rand zwischen dem linken Seitenrand und dem Beginn der Systeme/Strophen.
  line-width = 175\mm       % Die Breite des Notensystems.
}


\layout {
  indent = #0
}

% Akkorde für die Gitarrenbegleitung
akkorde = \transpose d c \chordmode {
  \germanChords
  %\partial 4
	d4 g4 d2 d4 g4 d2 d4 g4 d2 d4 g4 d2 d2 d2 a,2:7 d4. s8
}



melodie = \transpose d c \relative c'' {
  \clef "treble"
  \time 2/4
  \tempo 4 = 100
  \key d\major
  \autoBeamOff
	a8 a8 b8 b8 a8 a8 fis4 a8 a8 b8 b8 a8 a8 fis4 \breathe \break
	a8 a8 b8 b8 a4 fis4 a4 b8 b8 a4 fis4  \breathe \break d8 e8 fis8 g8
	a4 a8 b8 a8 g8 fis8 e8 d4 d8 r8
  \bar "|."
}

text = \lyricmode {
	\set stanza = "1."
	Li -- rum, la -- rum Löf -- fel -- stiel, al -- te Wei -- ber es -- sen viel,
	jun -- ge müs -- sen fas -- ten. 's_Brot liegt im Kas -- ten, 's_Mes -- ser liegt
	da -- ne -- ben, ei, welch ein lus -- tig Le -- ben!
}

wdh = \lyricmode { }



\score {
  <<
    \new ChordNames { \akkorde }
    \new Voice = "Lied" { \melodie }
    \new Lyrics \lyricsto "Lied" { \text }
%    \new Lyrics \lyricsto "Lied" { \wdh }
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
	  		"Lirum, larum, Löffelstiel,"
			"wer nichts lernt, der kann nicht viel."
			"Reiche Leute essen Speck,"
			"arme Leute hab'n Dreck."
			"Lirum, larum Leier,"
			"die Butter, die ist teuer."
		}
      }

	}
}




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
