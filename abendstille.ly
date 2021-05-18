% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"
\header {
  title = "Abendstille"                       % Die Überschrift der Noten wird zentriert gesetzt. 
  subtitle = "3-stimmiger Kanon"			      % weitere zentrierte Überschrift.
  poet = "Text: Fritz Jöde (geb. 1887)"       % Name des Dichters, linksbündig unter dem Unteruntertitel. 
  meter = "" 				      % Metrum, linksbündig unter dem Dichter. 
  composer = "Melodie: Otto Laub (1805 - 1887)" % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel. 
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


% Akkorde für die Gitarrenbegleitung
akkorde = \chordmode {
  \germanChords
	% leider keine vorhanden! :(
}


melodie= \relative c' {
        \clef "treble"
        \key f \major
        \time 3/4
        \tempo 4 = 120
        \autoBeamOff
	%\partial 4
	\repeat volta 2 {
			f2^"1. Stimme" d4 bes' (f) d c4. (d8) c4 bes2.\fermata \breathe \break 
			d'2^"2. Stimme" bes4 f (d) f ees4. (f8) ees4 d2. \fermata \breathe \break
			f4^"3. Stimme" f8 g f g f4 f8 g f bes bes2 a4 bes2. \fermata
			}
	%\bar "|."
}


text = \lyricmode {
  \set stanza = "1."
	A  --  bend -- stil  -- le ü -- ber -- all, nur am Bach_ die
	Nach -- ti -- gall singt ih -- re Wei -- se kla -- gend und lei -- se durch das Tal.
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
