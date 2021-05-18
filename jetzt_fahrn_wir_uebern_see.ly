% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"
\header {
  title = "Jetzt fahrn wir übern See"	 	  % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                                  % weitere zentrierte Überschrift.
  %  poet = "Text: "				  % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                      % Metrum, linksbündig unter dem Dichter.
  composer = "Melodie: Böhmisches Volkslied"	  % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
  arranger = ""                                   % Name des Bearbeiters/Arrangeurs, rechtsbündig unter dem Komponisten.
  tagline = "Diese Noten sind frei kopierbar für jedermann – erstellt für www.ebersberger-liedersammlung.de"
                                                  % Zentriert unten auf der letzten Seite.
%  copyright = "Diese Noten sind frei kopierbar für jedermann – erstellt für www.ebersberger-liedersammlung.de"
                                                  % Zentriert unten auf der ersten Seite (sollten tatsächlich zwei
                                                  % seiten benötigt werden"
}


\header {
  title = "Jetzt fahrn wir übern See"
  poet = ""
  composer = "Böhmische Volksweise"
  tagline = "Diese Noten sind frei kopierbar für jedermann – erstellt für www.ebersberger-liedersammlung.de"

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

akkorde = \chordmode { \germanChords
  \repeat volta 2 { s4 g1 s1 d:7 } 
  \alternative {
	{s1}
	{g2.}
  }
  \repeat volta 2 { s4 a1:m d s g a:m d s }
  \alternative {
	{s1}
	{g2.}
  }
}

melodie = \relative c' {
  \clef "treble"
  \time 4/4
  \tempo 4 = 120
  \key g\major
  \autoBeamOn
  \repeat "volta" 2 {
	\partial 4
	d4 b' b b c d e8 d d4 b c c d c
  }
  \alternative {
  	{ r2. s4}
  	{ b2 r4 }
  }\break 
  \repeat "volta" 2 {
  	d4 e d c b c2 a \breathe c4 a c a d( g) b,\breathe d\break
	e d c b c2 a4\breathe d d d d d
  }
  \alternative {
  	{ r2. s4 }
  	{ g,2 r4 }
  }
  \bar "|."
}

text = \lyricmode {
 \set stanza = "1."
	Jetzt fahrn wir ü -- bern See, ü -- bern See, jetzt fahrn wir ü -- bern See.
	mit ei -- ner höl -- zern Wur -- zel, Wur -- zel, Wur -- zel, Wur -- zel, mit 
	ei -- ner höl -- zern Wur -- zel, kein Ru -- der war nicht dran. 
}

\score {
  <<
    \new ChordNames { \akkorde }
    \new Voice = "Lied" { \melodie }
    \new Lyrics \lyricsto "Lied" { \text }
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




\markup {
    \column {
      \hspace #0.3
      \line {
 		\bold "  2. "
        \column {
			"Und als wir drüben warn, drüben warn, und als wir drüben "
			"Und als wir drüben warn, drüben warn, und als wir drüben warn"
			"da sangen alle Vöglein, Vöglein, Vöglein, Vöglein,"
			"da sangen alle Vöglein, der helle Tag brach "
			"da sangen alle Vöglein, Vöglein, Vöglein, Vöglein,"
			"da sangen alle Vöglein, der helle Tag brach an."
			" "
		}
      }
      \hspace #0.1
      \line {
        \bold "  3. "
        \column {
			"Der Jäger blies ins Horn, in das Horn, der Jäger blies ins "
			"Der Jäger blies ins Horn, in das Horn, der Jäger blies ins Horn"
			"Da bliesen alle Jäger, Jäger, Jäger, Jäger,"
			"da bliesen alle Jäger, ein jeder in sein "
			"Da bliesen alle Jäger, Jäger, Jäger, Jäger,"
			"da bliesen alle Jäger, ein jeder in sein Horn."
			" "
        }
      }
      \hspace #0.1
      \line {
        \bold "  4. "
        \column {
			"Das Liedlein, das ist aus, wieder aus, das Liedlein das ist "
			"Das Liedlein, das ist aus, wieder aus, das Liedlein das ist aus"
			"Und wer das Lied nicht singen kann, singen, singen,"
			"singen kann, der zahl ein halb Fass "
			"Und wer das Lied nicht singen kann, singen, singen,"
			"singen kann, der zahl ein halb Fass Wein."
			" "
        }
      }
	}
}

