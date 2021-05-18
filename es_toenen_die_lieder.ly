% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Es tönen die Lieder"		      % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = "3 stimmiger Kanon"              % weitere zentrierte Überschrift.
  poet = "Text: überliefert"		      % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                  % Metrum, linksbündig unter dem Dichter.
  composer = "Melodie: Volkslied (19. Jhd)" % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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
  \partial 4
	s4 f2. c2. s2. f2. s2. c2.:7 s2. f2. s2. c2.:7 s2. f2
}



melodie = \relative c' {
  \clef "treble"
  \time 3/4
  \tempo 4 = 120
  \key f\major
  \autoBeamOff
  \partial 4
  \repeat volta 2 {
			c4^"1. Stimme" f4 f4 f4 g4 c4 c4 g4 g4 g4 a4 \fermata 
			f4^"2. Stimme" c'4 c4 a8 ([c8]) a8 ([c8]) bes4 g4 bes4 bes4 g8 ([bes8]) g8 ([bes8]) a2 \fermata 
			c4^"3. Stimme" f8 e8 d8 c8 bes8 a8 c4 (bes4) g4 e8 f8 g8 a8 bes8 g8 f2 \fermata
	          }
  %\bar "|."
}

text = \lyricmode {
	\set stanza = "1."
	Es tö -- nen die Lie -- der, der Früh -- ling kehrt wie -- der,
	es spie -- let der Hir -- te auf sein -- ner Schal -- mei:
	La la la la la la la la -- la la la la la la la la.
}

wdh = \lyricmode { }



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

