% Dieses Notenblatt wurde erstellt von David Göhler
% Kontakt: pirat@online.de

\version "2.16.0"
\header {
  title = "Wenn ich ein Vöglein wär"	 	  % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                                  % weitere zentrierte Überschrift.
%  poet = "Text: "      			  % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                      % Metrum, linksbündig unter dem Dichter.
  composer = "Volkslied"			  % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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


akkorde = \chordmode { \germanChords
  g2. g2. g2. g4. d8 g4 g2. d2. d2. g4 d g d2. g4 d g d g d g2. 
}

melodie = \relative c' {
  \clef "treble"
  \time 3/4
  \tempo 4 = 120
  \key g\major
%  \partial 4
  \autoBeamOn
	g'4 g g b4. a8 g4 \breathe b b b d4. c8 b4\breathe \break
	d c b a2 r4 a2 g8 fis g4 a b \breathe \break
	c2 b8 a b4 c d\breathe d8( c) b4 a g2 r4
  \bar "|."
}

text = \lyricmode {
 \set stanza = "1."
	Wenn ich ein Vög -- lein wär und auch zwei Flü -- gel hätt,
	flög ich zu dir. Weil's a -- ber nicht kann sein,
	weil's a -- ber nicht kann sein, bleib ich all -- hier. 
}

%{
wdh = \lyricmode {
  Es war so fin -- ster und auch so bit -- ter kalt.
}
%}

\score {
  <<
    \new ChordNames { \akkorde }
    \new Voice = "Lied" { \melodie }
    \new Lyrics \lyricsto "Lied" { \text }
    %\new Lyrics \lyricsto "Lied" { \wdh }
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
			"Bin ich gleich weit von dir,"
			"bin doch im Schlaf bei dir"
			"und red' mit dir: Wenn ich erwachsen tu,"
			"wenn ich erwachsen tu, bin ich allein."
			" "
		}
	   "   "
%      }
%     \hspace #0.1
%      \line {
        \bold "  3. "
        \column {
			"Es gibt kein' Stund' zur Nacht,"
			"da nicht mein Herz erwacht"
			"und an dich denkt, wie du mir tausendmal,"
			"wie du mir tausendmal dein Herz geschenkt."
			" "
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
