% Dieses Notenblatt wurde erstellt von David Göhler
% Kontakt: pirat@online.de

\version "2.16.0"
\header {
  title = "Bruder Jakob"                      % Die Überschrift der Noten wird zentriert gesetzt. 
  subtitle = "4-stimmiger Kanon"	      % weitere zentrierte Überschrift.
  poet = ""      			      % Name des Dichters, linksbündig unter dem Unteruntertitel. 
  meter = "" 				      % Metrum, linksbündig unter dem Dichter. 
  composer = "Volkslied"		      % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel. 
  arranger = "" 			      % Name des Bearbeiters/Arrangeurs, rechtsbündig unter dem Komponisten. 
  tagline = "Diese Noten sind frei kopierbar für jedermann – erstellt für www.ebersberger-liedersammlung.de" 
	    				      % Zentriert unten auf der letzten Seite.
%  copyright = "Diese Noten sind frei kopierbar für jedermann – erstellt für www.ebersberger-liedersammlung.de"
	    				      % Zentriert unten auf der ersten Seite (sollten tatsächlich zwei 
					      %	seiten benötigt werden"
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

akkorde = \transpose d f \chordmode { \germanChords
  d1 d1 d1 d1 d1 d1 d1 d1
}

melodie = \transpose d f \relative c' {
  \clef "treble"
  \time 2/4
  \tempo 4 = 110
  \key d\major
%  \partial 4  % kein Auftakt
  \autoBeamOff
    d4^"1. Stimme" e fis d d e fis\fermata d \breathe \break fis^"2. Stimme" g 
    a2 fis4 g a2\fermata \breathe \break a8^"3. Stimme" b a g fis4 d  
    a'8 b a g fis4\fermata d \breathe \break d^"4. Stimme" a d2 d4 a d2\fermata
%  \break
  \bar "|."
}
text = \lyricmode {
%  \set stanza = "1."
  Bru -- der Ja -- kob, Bru -- der Ja -- kob, schläfst du noch? Schläfst du noch? Hörst du nicht die Glo -- cken? Hörst du nicht die Glo -- cken? Ding, ding, dong. Ding, ding dong
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
        \column {
 		\bold "Französisch "
			"Frère Jacques, frère Jacques,"
			"Dormez-vous? Dormez-vous?"
			"Sonnez les matines! Sonnez les matines!"
			"Din, dan, don. Din, dan, don."
			" "
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
			" "
		}
      }
	}
}

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
