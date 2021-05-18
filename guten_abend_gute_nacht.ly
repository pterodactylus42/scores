% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"
\header {
  title = "Guten Abend, gute Nacht"
  subtitle = " "
  poet = "Text: 1. Strophe aus »Des Knaben Wunderhorn«"
  meter = "         2. Strophe: Georg Scherer (1849)"
  composer = "Melodie: Johannes Brahms (1835 - 1897)"
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

% Akkorde für die Gitarrenbegleitung
akkorde = \chordmode {
  \germanChords
	s4 c2 e4:m a2.:m7 c2. g2.:7 
	g2.:7 g2.:7 g2.:7 c2 c4:7
	f2. c2. g2.:7 c2 c4:7
	f2. c2. g2.:7 c2. 
}



melodie = \relative c' {
  \clef "treble"
  \time 3/4
  \tempo 4 = 110
  \partial 4
  \autoBeamOff
	e8 e8 g4. e8 e4 g4 r4 e8 ([g8]) c4 b4. a8 a4 (g4) \breathe d8 ([e8])
	f4 d4 d8 ([e8]) f4 r4 d8 ([f8]) b8 ([a8]) g4 b4 c4 r4 c,8 c8
	c'2 a8 f8 g2 \breathe e8 c8 f4 g4 a4 g2 \breathe c,8 c8
	c'2 a8 f8 g2 e8 c8 f4 e4 d4 c2 r4 
  \bar "|."
}

text = \lyricmode {
  \set stanza = "1."
	Gu -- ten A  -- bend, gut Nacht, mit Ro -- sen be -- dacht,
	mit Näg -- lein be -- steckt, schlupf un -- ter die Deck,
	Mor -- gen früh, wenn Gott will, wirst du wie -- der ge -- weckt;
	mor -- gen früh, wenn Gott will, wirst du wie -- der ge -- weckt.
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
	  		"Guten Abend, gute Nacht,"
			"von Englein bewacht,"
			"die zeigen im Traum"
			"dir Christkindleins Baum."
			"Schlaf nun selig und süß,"
			"schau in Traum 's Paradies!"
			"Schlaf nun selig und süß,"
			"schau in Traum 's Paradies!"
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
