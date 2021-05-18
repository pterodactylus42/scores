% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Ein Männlein steht im Walde *"     % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = "(* Das Rätsel von der Hagebutte)" % weitere zentrierte Überschrift.
  poet = "Text: Hoffmann von Fallersleben (1860)" % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                  % Metrum, linksbündig unter dem Dichter.
  composer = "Melodie: Volkslied vom Niederrhein um 1860" % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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
  \partial 8
  s8 f2 s4 bes f/c c:7 f2 f
  s4 bes f/c c:7 f s4 f2
  c:7 f c:7 f s4 bes f/c c:7 f
}

melodie = \relative c' {
  \clef "treble"
  \time 2/4
  \tempo 4 = 100
  \key f\major
  \autoBeamOff
  \partial 8
	c8 
	f8 g8 a8 bes8
	c4 d8 bes8
	a4 g4
	f4 r8 c8

	f8 g8 a8 bes8
	c4 d8 bes8
	a4 g4
	f4 r4
	c'8. bes16 a8 c8

	bes8 a8 g4 \breathe
	c8. bes16 a8 c8
	bes8 a8 g4 \breathe
	f8 g8 a8 bes8
	c4 d8 ([bes8])
	a4 g4
	f4 r8
  \bar "|."
}

text = \lyricmode {
%  \set stanza = "1."
	Ein Männ -- lein steht im Wal -- de ganz still und stumm.
	Es hat vor lau -- ter Pur -- pur ein Mänt -- lein um.
	Sagt, wer mag das Männ -- lein sein, das da steht im Wald al -- lein
	mit dem pur -- pur -- ro -- ten Män -- te -- lein?
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
    \hspace #0.1     % schafft ein wenig Platz zur den Noten
    \fill-line {
      \hspace #0.1  % Spalte vom linken Rand, auskommentieren, wenn nur eine Spalte
          \column {      % erste Spalte links
        \line { \bold "  2. "
          \column {
                        "Das Männlein steht im Walde"
			"auf einem Bein."
			"Es hat auf seinem Haupt schwarz"
			"ein Käpplein klein."
			"Sag, wer mag das Männlein sein,"
			"das da steht im Wald allein,"
			"mit dem kleinen schwarzen Käppelein?"
			" "
          }
        }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "   "
          \column {
			" "
                  }
                }

      }
% { ab hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1    % horizontaler Abstand zwischen den Spalten
          \column {       % zweite Spalte rechts
        \line {
          \bold "  3. "
          \column {   \italic { "(Lösung gesprochen:)"} 
			"Das Männlein dort auf einem Bein"
			"mit seinem roten Mäntelein"
			"und seinem schwarzen Käppelein"
			"kann nur die Hagebutte sein."
			" "
          }
        }
        \hspace #0.1
        \line {
          \bold "   "
          \column {
			" "
          }
        }
      }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
        }
  }
}

