% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Hänschen klein"		      % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                              % weitere zentrierte Überschrift.
%  poet = "Text: "                            % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                  % Metrum, linksbündig unter dem Dichter.
  composer = "Vokslied"                       % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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
akkorde = \chordmode {
  \germanChords
	f2 c:7 f f
	f c:7 f4 c4:7 f2
	c2:7 c:7 f f
	f c:7 f4 c:7 f2
}

melodie = \relative c' {
  \clef "treble"
  \time 2/4
  \tempo 4 = 100
  \key f\major
  \autoBeamOff
        c'8 a8 a4 bes8 g8 g4 \breathe f8 g8 a8 bes8 c8 c8 c4 \breathe \break
        c8 a8 a4 bes8 g8 g4 \breathe f8 a8 c8 c8 f,4 r4 \break
        g8 g8 g8 g8 g8 a8 bes4 \breathe a8 a8 a8 a8 a8 bes8 c4 \breathe \break
        c8 a8 a4 bes8 g8 g4 \breathe f8 a8 c8 c8 f,4 r4 
  \bar "|."
}


text = \lyricmode {
%  \set stanza = "1."
	Häns -- chen klein geht al -- lein in die wei -- te Welt hi -- nein.
	Stock und Hut steht ihm gut, er ist wohl -- ge -- mut.
	Doch die Mut -- ter wei -- net sehr, hat ja nun kein Häns -- chen mehr.
	Da be -- sinnt sich das Kind, keh -- ret heim ge -- schwind.
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
	  		"Lieb Mama, ich bin da,"
			"ich, dein Hänschen, hopsassa."
			"Glaube mir, ich bleib hier,"
			"geh nicht fort von dir."
			"Da freut sich die Mutter sehr"
			"und das Hänschen noch viel mehr."
			"Denn es ist, wie ihr wisst,"
			"gar so schön bei ihr."
		}
      }

	}
}

