% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"
\header {
  title = "Himmel und Erde müssen vergehn"    % Die Überschrift der Noten wird zentriert gesetzt. 
  subtitle = "Kanon (3-stimmig)"	      % weitere zentrierte Überschrift.
%  poet = "Text: "		              % Name des Dichters, linksbündig unter dem Unteruntertitel. 
  meter = "" 				      % Metrum, linksbündig unter dem Dichter. 
  composer = "Volkslied"                      % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel. 
  arranger = "" 			      % Name des Bearbeiters/Arrangeurs, rechtsbündig unter dem Komponisten. 
  tagline = "Diese Noten sind frei kopierbar für jedermann – erstellt für ebersberger-liedersammlung.de" 
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


% Akkorde für die Gitarrenbegleitung
akkorde = \chordmode {
  \germanChords
	f2. c2. c2.:7 f2.
	f2. c2. c2.:7 f2.
	f2. c2. c2.:7 f2.
}


melodie= \relative c'' {
        \clef "treble"
        \key f \major
        \time 3/4
        \tempo 4 = 140
        \autoBeamOff
	%\partial 4
	\repeat volta 2 {
			a4^"1" a a g4. (a8) bes4 c,4 d e f2 \fermata r4 \break
			c'4^"2" c c bes4. c8 d4 bes bes bes a4. bes8 c4 \fermata \breathe \break
			a^"3" a a g4. a8 bes4 c, d e f2 \fermata r4
			}
	%\bar "|."
}


text = \lyricmode {
  \set stanza = "1."
	Him -- mel und Er -- de müs -- sen ver -- gehn, a -- ber die Mu -- si -- ci,
	a -- ber die Mu -- si -- ci, a -- ber die Mu -- si -- ci blei -- ben be -- stehn.
}


\score {
  <<
    \new ChordNames { \akkorde }
    \new Voice = "Lied" { \melodie }
    \new Lyrics \lyricsto "Lied" { \text }
  >>
  \layout { }
  \midi { }
}


