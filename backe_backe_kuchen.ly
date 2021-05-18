% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Backe, backe Kuchen"		      % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                              % weitere zentrierte Überschrift.
%  poet = "Text: " 			      % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                  % Metrum, linksbündig unter dem Dichter.
%  composer = "Melodie: "		      % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
  composer = "altes Kinderlied"
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
	d4 g d2 s4 g d2 s4 g d2 s4 g d2 a4 d a d a d s g d2 s a4:7 d
}


melodie = \relative c'' {
  \clef "treble"
  \time 2/4
  \tempo 4 = 100
  \key d\major
  \autoBeamOff
	a8 a b b a4 fis8 d a' a b b a4 fis8 r a a b b a a fis fis a a b b a a fis fis \breathe a16 a a8 fis4
	a16 a a8 fis4 a8 a fis4 a8 a b b a a fis4 \breathe d' a8 fis e e d4
  \bar "|."
}


text = \lyricmode {
  \set stanza = "1."
	Ba -- cke, ba -- cke Ku -- chen, der Bä -- cker hat ge -- ru -- fen:
	Wer will gu -- ten Ku -- chen ba -- cken, der muss ha -- ben sie -- ben Sa -- chen:
	Ei -- er und Schmalz, Zuk -- ker und Salz, Milch und Mehl, Saf -- ran macht den Ku -- chen gehl.
	Schieb in den O -- fen rein.
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


