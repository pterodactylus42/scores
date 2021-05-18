% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Auf der Mauer, auf der Lauer"      % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                              % weitere zentrierte Überschrift.
%  poet = "Text: " 			      % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                  % Metrum, linksbündig unter dem Dichter.
%  composer = "Melodie: "		      % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
  composer = "Volkslied"
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
	d2 s a2 d s1 a2 d s g8 s4. a2 d s b:m g4 a d2
}


melodie = \relative c' {
  \clef "treble"
  \time 2/4
  \tempo 4 = 100
  \key d\major
  \autoBeamOff
	d8 d8 d8 e8 fis8 fis8 fis8 fis8 e8 d8 e8 fis8 d4 d4 \breathe \break
	fis8 fis8 fis8 g8 a8 a8 a8 a8 g8 fis8 g8 a8 fis4 fis4 \breathe \break
	a8 a8 a8 a8 b8 b8 b4 g8 g8 g8 b8 a8 a8 a4 \breathe \break
	d,8 d8 d8 e8 fis8 fis8 fis8 fis8 e8 d8 e8 fis8 d4 d4	
  \bar "|."
}


text = \lyricmode {
  \set stanza = "1."
	Auf der Mau -- er, auf der Lau -- er sitzt ne klei -- ne Wan -- ze,
	auf der Mau -- er, auf der Lau -- er sitzt ne klei -- ne Wan -- ze.
	Seht euch mal die Wan -- ze an, wie die Wan -- ze tan -- zen kann!
	Auf der Mau -- er, auf der Lau -- er sitzt ne klei -- ne Wan -- ze.
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
	  		"Auf der Mauer, auf der Lauer sitzt ne kleine Wanz,"
			"auf der Mauer, auf der Lauer sitzt ne kleine Wanz."
			"Schau dir mal die Wanz an,"
			"wie die Wanz tanz kann!"
			"Auf der Mauer, auf der Lauer sitzt ne kleine Wanz."
			" "
		}
      }
      \hspace #0.3
      \line {
                \bold "  ! "
        \column {
                \italic   "Bei jeder weiteren Strophe wird ein weiterer Buchstabe bei Wanz und tanz weggelassen,"
                \italic   "bis nur noch »hm« übrig bleibt. Dann wieder immer einen Buchstaben dazufügen,"
		\italic	  "bis zum Schluß wieder das Lied komplett ist."
                }
      }

	}
}

