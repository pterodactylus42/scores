% Dieses Notenblatt wurde erstellt von David Göhler
% Kontakt: pirat@online.de

\version "2.16.0"
\header {
  title = "Kommt ein Vogel geflogen" 		  % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                                  % weitere zentrierte Überschrift.
  poet = "Text: Adolf Bäuerle"   		          % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                      % Metrum, linksbündig unter dem Dichter.
  composer = "Melodie: Wenzel Müller"		  % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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

akkorde = \chordmode {
  s4 g2. d2. d2.:7 g2 s4 g2. c2 a,4:m d2.:7 g2.
}

melodie = \relative c' {
  \clef "treble"
  \time 3/4
  \tempo 4 = 130
  \key g\major
 \partial 4  % kein Auftakt oder doch?
  \autoBeamOff
    b'8 c d4 b b b a a8 b c4 a a8 e' \break
    d2\breathe b8 c d4 b b b a a8 b c4 fis, fis g2 r4
    \bar "|."
}
text = \lyricmode {
  \set stanza = "1."
    Kommt ein Vo -- gel ge -- flo -- gen, setzt sich nie -- der auf mein'
    Fuß, hat ein' Zet -- tel im Schna -- bel, von der Mut -- ter ein' Gruß.
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
	"Lieber Vogel, fliege weiter,"
	"nimm ein' Gruß mit und ein' Kuss,"
	"denn ich kann dich nicht begleiten,"
	"weil ich hierbleiben muss."
		}
      }
	}
}

