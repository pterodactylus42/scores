% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Häschen in der Grube"              % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = "volkstümliches Spiellied"       % weitere zentrierte Überschrift.
  poet = "Text: Friedrich Wilhelm August Fröbel (1840)" % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                  % Metrum, linksbündig unter dem Dichter.
  composer = "Melodie: Volkslied"              % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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
akkorde = \chordmode {
  \germanChords
    c1 f2 c f c
    g2:7 c g c c c g c
}

melodie = \transpose d c \relative c' {
  \clef "treble"
  \time 2/4
  \tempo 4 = 100
  \key d\major
  \autoBeamOff
	d8 e fis g a4 a b8( g) d'8 (b) a4 r b8( g) d'8 (b) a4 r \break
	a8 g g g g fis fis4 fis8 e fis e d fis a4 \breathe \break
	d,8 fis a4 d,8 fis a4 a a 
<< { d4 }
{ \parenthesize d,4 }
>>
	r4
  \bar "|."
}


text = \lyricmode {
%  \set stanza = "1."
	Häs -- chen in der Gru -- be saß und schlief, saß und schlief. Ar -- mes Häs -- chen,
	bist du krank, daß Du nicht mehr hüp -- fen kannst? 
	Häs -- chen, hüpf! Häs -- chen, hüpf! Häs -- chen, hüpf!
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

