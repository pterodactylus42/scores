% Dieses Notenblatt wurde erstellt von David Göhler
% Kontakt: pirat@online.de

\version "2.16.0"

\header {
  title = "Hejo, spann den Wagen an" 		  % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = "3-stimmiger Kanon"                  % weitere zentrierte Überschrift.
  poet = ""       				  % Name des Dichters, linksbündig unter dem Unteruntertitel.
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
  after-title-space = 2\cm  % Die Größe des Abstands zwischen der Überschrift und dem ersten Notensystem.
  bottom-margin = 5\mm      % Der Rand zwischen der Fußzeile und dem unteren Rand der Seite.
  top-margin = 10\mm        % Der Rand zwischen der Kopfzeile und dem oberen Rand der Seite.

  left-margin = 22\mm       % Der Rand zwischen dem linken Seitenrand und dem Beginn der Systeme/Strophen.
  line-width = 175\mm       % Die Breite des Notensystems.
}

\layout {
  indent = #0
}

gitarren = { g2 d2 g d }

akkorde = \chordmode { \germanChords
  \gitarren \gitarren \gitarren
}

melodie = \relative c' {
  \clef "treble"
  \time 4/4
  \tempo 4 = 120
  \key d\minor
%  \partial 4  % kein Auftakt
  \autoBeamOff
    g'2^"1" f g8 g g g d2\fermata \break 
    g4^"2" g a a bes8 bes bes bes a2\fermata \break 
    d8^"3" d d d d4 d d8 d d d d( c) bes( a) \breathe 
  \bar "|."
}
text = \lyricmode {
%  \set stanza = "1."
  He -- jo, spann den Wa -- gen an, denn der Wind treibt Re -- gen ü -- bers Land!
  Hol die gold -- nen Gar -- ben, hol die gold -- nen Gar -- ben
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
%{
\markup {
    \column {
      \hspace #0.3
      \line {
        \column {
 		\bold "Französisch "
			"Frère Jacques, frère Jacques,"
			"Dormez-vous? Dormez-vous?"
			"Sonnez les matines! Sonnez les matines!"
			"Din, dan, don. Din, dan, don."
		}
      }
      \hspace #0.1
      \line {
        \column {
 		\bold "Englisch "
			"Are you sleeping? Are you sleeping?"
			"Brother John, Brother John,"
			"Morning bells are ringing! Morning bells are ringing!"
			"Ding, dang, dong. Ding, dang, dong."
		}
      }
	}
}
%}
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
