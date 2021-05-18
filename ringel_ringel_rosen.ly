% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Ringel, Ringel, Rosen"	      % Die Überschrift der Noten wird zentriert gesetzt.
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

% Akkorde für die Gitarrenbegleitung
akkorde = \chordmode {
  \germanChords
  %\partial 8
	%c4 f4 c2 e4:m a4:m e2:m g4 c4
	%g4 c4 c4 c4 g4 c4 s16 c4
	c4 f c2 c4 f c2 c c c4 f c4. f8. c4
}



melodie = \relative c'' {
  \clef "treble"
  \time 2/4
  \tempo 4 = 90
  %\key g\major
  \autoBeamOff
  %\partial 8
	g8 g a a g4 e g8 g a a g4 e \breathe \break
	g8 f e c g' f e4 \breathe g8 g a a \break 
	g8 f e c'16 c c c4
  \bar "|."
}

text = \lyricmode {
	\set stanza = "1."
	Rin -- gel, Rin -- gel, Ro -- sen, schö -- ne A -- pri -- ko -- sen,
	Veil -- chen blau, Ver -- giss -- mein -- nicht, al -- le Kin -- der 
	set -- zen sich. Ki -- ke -- ri -- ki!
}

%wdh = \lyricmode { }


\score {
  <<
    \new ChordNames { \akkorde }
    \new Voice = "Lied" { \melodie }
    \new Lyrics \lyricsto "Lied" { \text }
%    \new Lyrics \lyricsto "Lied" { \wdh }
  >>
  \midi { }
  \layout { }
}


