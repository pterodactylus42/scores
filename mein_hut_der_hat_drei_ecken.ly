% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Mein Hut, der hat drei Ecken"	  % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "		                  % weitere zentrierte Überschrift.
%  poet = "Text: "	  			  % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                      % Metrum, linksbündig unter dem Dichter.
%  composer = "Melodie: " 			  % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
  composer = "Neapolitanische Canzonetta »O cara mamma mia«"
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
  \germanChords
	s8 d2. a a d d a a d d a a d d a a d

    % \repeat "volta" 2 { r1 }
}

melodie = \relative c'' {
  \clef "treble"
  \time 6/8
  \tempo 4 = 100
  \key d\major
  \autoBeamOff
  \partial 8 % 1/8 Auftakt
  %\repeat "volta" 2 {
	a8 b4 a8 g4 fis8 g e4 r fis8 g4 a8 b4 a8 fis4 r8 r4 a8 \break
	b4 a8 g4 fis8 g e4 r8 e8 (fis) g4 a8 b4 a8 d,4 r8 r4 a'8 \break
	a (g) fis fis (e) d d cis4 r8 e (fis) g4 a8 b4 a8 fis4 r8 r4 a8 \break
	d4 a8 a (g) fis g e4 r d'8 cis8. a16 a8 a (b) cis d4 r8 r4 s8
  %		    }
  \bar "|."
}

text = \lyricmode {
  \set stanza = "1."
	Mein Hut, der hat drei Ek -- ken, drei Ek -- ken hat mein Hut,
	und hat er nicht drei Ek -- ken, dann ist es nicht mein Hut.
	Mein Hut, der hat drei Ek -- ken, drei Ek -- ken hat mein Hut,
	und hat er nicht drei Ek -- ken, dann ist es auch nicht mein Hut.
}

wdh = \lyricmode {
	
}

\score {
  <<
    \new ChordNames { \akkorde }
    \new Voice = "Lied" { \melodie }
    \new Lyrics \lyricsto "Lied" { \text }
%    \new Lyrics \lyricsto "Lied" { \wdh }
  >>
  \layout { }
}

\score {
  \unfoldRepeats
  <<
        \new ChordNames { \akkorde }
        \new Voice = "Lied" { \melodie }
  >>    
  \midi { }
}


