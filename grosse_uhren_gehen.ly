% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Große Uhren gehen: tick tack"      % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = "Uhrenkanon"	              % weitere zentrierte Überschrift.
%  poet = "Text: "                            % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                  % Metrum, linksbündig unter dem Dichter.
  composer = "Text u. Melodie: Karl Karow (1790 - 1863)" % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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
akkorde = \transpose d c \chordmode {
  \germanChords
	d1 d1 d1 d1 d1 d1
}


melodie = \transpose d c \relative c' {
  \clef "treble"
  \time 4/4
  \tempo 4 = 100
  \key d\major
  \autoBeamOff
  \repeat volta 2 {
	d4^"1" d4 d8 d8 d8 d8 fis4 d4 fis4 d4  \fermata \breathe \break 
	fis8^"2" fis8 fis8 fis8 fis4 fis4 a8 a8 fis8 fis8 a8 a8 fis8 fis8 \fermata \breathe \break 
	a8^"3" a8 a8 a8 a8 a8 a8 a8 d16 d16 d16 d16 d16 d16 d16 d16 d8 \fermata r8 r4 }
  %\bar "|."
}


text = \lyricmode {
  %\set stanza = "1."
	Gro -- ße Uh -- ren ge -- hen: tick tack tick tack,
	klei -- ne Uh -- ren ge -- hen: ti -- ke tak -- ke tik -- ke tak -- ke,
	und die klei -- nen Ta -- schen -- uh -- ren: ti -- ke tak -- ke tik -- ke tak -- ke tick!
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
