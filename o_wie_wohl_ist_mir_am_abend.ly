% Dieses Notenblatt wurde erstellt von David Göhler
% Kontakt: pirat@online.de

\version "2.16.0"
\header {
  title = "O wie wohl ist mir am Abend" 	  % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = "3-stimmiger Kanon"                                  % weitere zentrierte Überschrift.
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
  %c2. f4 c2 f4 c2 c2. f4 c2 f4 c2 c2. c2. c2.
  c2. f4. c4. f4. c4. 
  c2. f4. c4. f4. c4. 
  c2. f2. c2.
}

melodie = \relative c' {
  \clef "treble"
  \time 6/8
  \tempo 4 = 100
  \key c\major
%  \partial 4  % kein Auftakt
  \autoBeamOff
    c4^"1. Stimme" d8 e4 c8 f4 e8 e( d) c f4 e8 e( d) c\fermata\breathe\break
	e4^"2. Stimme" f8 g4 e8 a4 g8 g( f) e a4 g8 g( f) e\fermata\breathe\break
	c4.^"3. Stimme" c4. c4. c4. c4. c4. \fermata\breathe\bar "|."
}
text = \lyricmode {
%  \set stanza = "1."
  O wie wohl ist mir am A -- bend, mir am A -- bend,
  wenn zur Ruh die Glo -- cken läu -- ten, Glo -- cken läu -- ten:
  Bim, bam, bim, bam, bim, bam.
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
