% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Spannenlanger Hansel"   	      % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                              % weitere zentrierte Überschrift.
%  poet = "Text: " 			      % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                  % Metrum, linksbündig unter dem Dichter.
  composer = "alpenländisches Volkslied (19. Jhd)" % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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

akkorde = \chordmode {
  \germanChords
  %\partial 4
	f2 f2 c2:7 f4 s4 f2 f2 c2:7 f4 s4 f2 bes2 c2:7 f4 s4 f2 f2 c2:7 f4 s4
}

melodie = \relative c' {
  \clef "treble"
  \time 2/4
  \tempo 4 = 100
  \key f\major
  \autoBeamOff
	f8 f8 f8 g8 a4 a4 g8 g8 g8 a8 f4 r4 \break
        f8 f8 f8 g8 a4 a4 g8 g8 g8 a8 f4 r4 \break
	c'8 c8 c8 c8 d4 bes4
	bes8 bes8 bes8 d8 c4 r4 \break f,8 f8 f8 g8 a4 a4 g8 g8 g8 a8 f4 r4
  \bar "|."
}

text = \lyricmode {
  \set stanza = "1."
	Span -- nen -- lan -- ger Han -- sel, nu -- del -- di -- cke Dirn,
	gehn wir in den Gar -- ten, schüt -- teln wir die Birn.
	schüt -- tel ich die gro -- ßen, schüt -- telst du die klein'.
	Wenn das Sack -- erl voll ist, gehn wir wie -- der heim.
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
	  		"Lauf doch nicht so narrisch, Spannenlanger Hansel!"
			"Ich verlier' die Birnen und die Schuh' noch ganz."
			"Trägst ja nur die kleinen, nudeldicke Dirn,"
			"und ich schlepp den schweren Sack mit den großen Birn."
			" "
		}
      }
	}
}

