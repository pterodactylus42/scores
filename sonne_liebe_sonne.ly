% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Sonne, liebe Sonne"		      % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                              % weitere zentrierte Überschrift.
%  poet = "Text: "			      % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                  % Metrum, linksbündig unter dem Dichter.
  composer = "Volkslied"		      % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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
	c2. a,4:m c1 c2. a,4:m c1 c2. a,4:m
	c1 c2. a,4:m c1 c1:7 f1 g,1:7 c4 f4 c2
}

melodie = \relative c'' {
  \clef "treble"
  \time 4/4
  \tempo 4 = 120
  %\key f\major
  \autoBeamOff
	g4 g4 g4 a4 g2 e2 \breathe g4 g4 g4 a4 g2 e2 \breathe \break g4 g4 g4 a4
	g2 e4 \breathe e4 g4 g4 g4 a4 g2 e2 \breathe \break g4 g4 g4 g4 c4 c4 c2
	\breathe g4 f4 e4 d4 c4 c4 c2
  \bar "|."
}

text = \lyricmode {
  \set stanza = "1."
	Son -- ne, lie -- be Son -- ne, komm ein biss -- chen run -- ter!
	Lass den Re -- gen o -- ben, dann wol -- len wir dich lo -- ben.
	Ei -- ner schließt den Him -- mel auf,
	kommt die lie -- be Sonn' he -- raus.
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
