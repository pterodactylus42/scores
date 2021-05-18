% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"
\header {
  title = "Dona nobis pacem"                  % Die Überschrift der Noten wird zentriert gesetzt. 
  subtitle = "3-stimmiger Kanon "	      % weitere zentrierte Überschrift.
  poet = ""				      % Name des Dichters, linksbündig unter dem Unteruntertitel. 
  meter = "" 				      % Metrum, linksbündig unter dem Dichter. 
  composer = "Volkslied" % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel. 
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
  after-title-space = 1\cm  % Die Größe des Abstands zwischen der Überschrift und dem ersten Notensystem.
  bottom-margin = 5\mm      % Der Rand zwischen der Fußzeile und dem unteren Rand der Seite.
  top-margin = 10\mm        % Der Rand zwischen der Kopfzeile und dem oberen Rand der Seite.

  left-margin = 22\mm       % Der Rand zwischen dem linken Seitenrand und dem Beginn der Systeme/Strophen.
  line-width = 175\mm       % Die Breite des Notensystems.
}


\layout {
  indent = #0
} 

sequenz = \chordmode { f2. c2. f2. c2. bes2. f2. c2. f2. }

% Akkorde für die Gitarrenbegleitung
akkorde = \chordmode {
  \germanChords \sequenz \sequenz \sequenz 
}


melodie= \relative c' {
        \clef "treble"
        \key f \major
        \time 3/4
        \tempo 4 = 120
        \autoBeamOff
	%\partial 4
	\repeat volta 2 {
			f8^"1. Stimme" [(c8)] a'2 g8 [(c,8)] bes'2 a4 (g) f f e2 \breathe d'4 (c8 [bes8]) a8 [(g8)] c4.  
			(bes8) a4 a8 ([g8] f4 e4) f2. \fermata \breathe c'2.^"2. Stimme" c c4 (bes) a a g2 \breathe 
			d'4 d2 c4 c2 c8 ([bes8] a4) g (f2.) \fermata \breathe 
			f2.^"3. Stimme" e  f4. (g8) a8 [(bes8)] c4 c,2 \breathe bes'4 bes2 a4 a2 e8 ([g8] c4) c,4 (f2.) \fermata  
			}
	%\bar "|."
}


text = \lyricmode {
  \set stanza = "1."
	Do -- na no -- bis pa -- cem, pa -- cem, do -- na no -- bis pa -- cem.
	Do -- na no -- bis pa -- cem, pa -- cem, do -- na nobis pacem.
	Do -- na no -- bis pa -- cem, pa -- cem, do -- na nobis pacem.
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

