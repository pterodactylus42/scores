% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"
\header {
  title = "Meine Oma fährt im Hühnerstall Motorrad" % Die Überschrift der Noten wird zentriert gesetzt. 
  subtitle = " "			      % weitere zentrierte Überschrift.
%  poet = "Text: "			      % Name des Dichters, linksbündig unter dem Unteruntertitel. 
  meter = "" 				      % Metrum, linksbündig unter dem Dichter. 
  composer = "Text u. Melodie: Robert Steidl (*1865 †1927)" % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel. 
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
akkorde = \transpose a c \chordmode {
  \germanChords
	s4 a2 d2 a1 e1:7 a1 a2 d2 a1 d2 e2:7 a2 s2
}


melodie= \transpose a c \relative c'' {
        \clef "treble"
        \key a \major
        \time 4/4
        \tempo 4 = 110
        \autoBeamOff
	\partial 4
	e8 e8 a8 a a a b a gis fis e2 cis4 e d2 b4 fis'
	e2 cis4 \breathe e8 e a a a a b a gis fis e2 cis4 e8 e
	fis fis fis fis gis gis fis gis a2 r2
	\bar "|."
}

text = \lyricmode {
  \set stanza = "1."
	Mei -- ne O -- ma fährt im Hüh -- ner -- stall Mo -- tor -- rad, Mo -- tor -- rad,
	Mo -- tor -- rad. Mei -- ne O -- ma fährt im Hüh -- ner -- stall Mo -- tor -- rad,
	mei -- ne O -- ma ist 'ne ganz fa -- mo -- se Frau!	
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


\markup {
    \column {
      \line {
                \bold "  2. "
        \column { "Meine Oma hat im Backenzahn ein Radio ..." }
      }
      \line {
                \bold "  3. "
        \column { "Meine Oma hat 'nen Bandwurm, der gibt Pfötchen ..." }
      }
      \line {
                \bold "  4. "
        \column { "Meine Oma hat 'ne Brille mit Gardinen ..." }
      }
      \line {
                \bold "  5. "
        \column { "Meine Oma hat 'nen Dackel, der trägt Höschen ..." }
      }
      \line {
                \bold "  6. "
        \column { "Meine Oma tötet Fliegen mit Kanonen ..." }
      }
      \line {
                \bold "  7. "
        \column { "Meine Oma hat 'ne Glatze mit Geländer ..." }
      }
      \line {
                \bold "  8. "
        \column { "Meine Oma hat 'nen Goldfisch, der raucht Pfeife ..." }
      }
      \line {
                \bold "  9. "
        \column { "Meine Oma lernt im Gurkenglasl tauchen..." }
      }
      \line {
                \bold "  10. "
        \column { "Meine Oma hat ein Himmelbett mit Brause ..." }
      }
      \line {
                \bold "  11. "
        \column { "Meine Oma spielt in Hollywood 'nen Cowboy ..." }
      }
      \line {
                \bold "  12. "
        \column { "Meine Oma mahlt den Kaffee mit Atomkraft ..." }
      }
      \line {
                \bold "  13. "
        \column { "Meine Oma hat Klosettpapier mit Blümchen ..." }
      }
      \line {
                \bold "  14. "
        \column { "Meine Oma hat 'nen Kochtopf mit 'nem Lenkrad ..." }
      }
      \line {
                \bold "  15. "
        \column { "Meine Oma hat 'nen Krückstock mit 'nem Rücklicht ..." }
      }
      \line {
                \bold "  16. "
        \column { "Meine Oma hat im Küchenschrank Kaninchen ..." }
      }
      \line {
                \bold "  17. "
        \column { "Meine Oma bäckt im Kühlschrank eine Torte ..." }
      }
      \line {
                \bold "  18. "
        \column { "Meine Oma hat 'nen Löffel mit Propeller ..." }
      }
      \line {
                \bold "  19. "
        \column { "Meine Oma hat 'nen Nachttopf mit Beleuchtung ..." }
      }
      \line {
                \bold "  20. "
        \column { "Meine Oma fährt im Panzer zum Finanzamt ..." }
      }
      \line {
                \bold "  21. "
        \column { "Meine Oma hat 'nen Papagei mit Bluejeans ..." }
      }
      \line {
                \bold "  22. "
        \column { "Meine Oma hat 'nen Petticoat aus Wellblech ..." }
      }
      \line {
                \bold "  23. "
        \column { "Meine Oma hat 'nen Schlüsselbund mit Kompass ..." }
      }
      \line {
                \bold "  24. "
        \column { "Meine Oma lernt im Suppenteller schwimmen ..." }
      }
      \line {
                \bold "  25. "
        \column { "Meine Oma fährt im Suppenteller U-Boot ..." }
      }
      \line {
                \bold "  26. "
        \column { "Meine Oma hat im Strumpfband 'nen Revolver ..." }
      }
      \line {
                \bold "  27. "
        \column { "Meine Oma hat nen Sturzhelm mit Antenne ..." }
      }
      \line {
                \bold "  28. "
        \column { "Meine Oma guckt die Tagesschau mit 'm Fernrohr ..." }
      }
      \line {
                \bold "  29. "
        \column { "Meine Oma hat 'ne Teekanne mit Schutzblech ..." }
      }
      \line {
                \bold "  30. "
        \column { "Meine Oma hat 'ne Unterhos' mit Auspuff ..." }
      }
      \line {
                \bold "  31. "
        \column { "Meine Oma hat ein Waschbecken mit Sprungbrett ..." }
      }

        }
}

