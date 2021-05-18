% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Ein Vogel wollte Hochzeit machen"  % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                              % weitere zentrierte Überschrift.
  poet = "Text: Hoffmann von Fallersleben (1850)" % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                  % Metrum, linksbündig unter dem Dichter.
  composer = "Melodie: Schlesisches Volkslied" % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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
  \partial 8
	s8 f2 c:7 f
	c f c f4 c:7 f4. 
}

melodie = \relative c' {
  \clef "treble"
  \time 2/4
  \tempo 4 = 100
  \key f\major
  \autoBeamOff
  \partial 8
	a'8 c a c a
	bes g bes g \breathe
	a f c' a \break
	g ([c]) c \breathe c16 a
	f8 f f c'16 a
	g8 g g \breathe c16 bes
	a8 f g e f4. 
   \bar "|."
}

text = \lyricmode {
  \set stanza = "1."
	Ein Vo -- gel woll -- te Hoch -- zeit ma -- chen in dem grü -- nen
	Wal -- de. Fi -- de -- ra -- la -- la, fi -- de -- ra -- la -- la,
	fi -- de -- ra -- la -- la -- la -- la.
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
        \column {
	  		"Die Drossel ist der Bräutigam, die Amsel ist die Braute. Fideralala ..."
		}
      }
      \line {
                \bold "  3. "
        \column {
                        "Der Sperber, der Sperber, der ist der Hochzeitswerber. Fideralala ..."
                }
      }
      \line {
                \bold "  4. "
        \column {
                        "Der Stare, der Stare, der flicht der Braut die Haare. Fideralala ..."
                }
      }
      \line {
                \bold "  5. "
        \column {
                        "Der Seidenschwanz, der Seidenschwanz, der bringt der Braut den Hochzeitskranz."
			"Fideralala ..."
                        " "
                }
      }
      \line {
                \bold "  6. "
        \column {
                        "Die Lerche, die Lerche, die bringt die Braut zur Kerche. Fideralala ..."
                }
      }
      \line {
                \bold "  7. "
        \column {
                        "Der Auerhahn, der Auerhahn, der ist der würd'ge Kapellan. Fideralala ..."
                }
      }
      \line {
                \bold "  8. "
        \column {
                        "Die Meise, die Meise, die singt das Kyrieleise. Fideralala ..."
                }
      }
      \line {
                \bold "  9. "
        \column {
                        "Der Kuckuck kocht das Hochzeitsmahl, frisst selbst die besten Brocken all."
			"Fideralala ..."
                        " "
                }
      }
      \line {
                \bold " 10. "
        \column {
                        "Der Zeisig, der Zeisig, der futtert gar sehr fleißig. Fideralala ..."
                }
      }
      \line {
                \bold " 11. "
        \column {
                        "Die Puten, die Puten, die machen breite Schnuten. Fideralala ..."
                }
      }
      \line {
                \bold " 12. "
        \column {
                        "Die Gänse und die Anten, die sind die Musikanten. Fideralala ..."
                }
      }
      \line {
                \bold " 13. "
        \column {
                        "Der Wiedehopf, der Wiedehopf, bringt nach dem Amt den Kaffeetopf. Fideralala ..."
                }
      }
      \line {
                \bold " 14. "
        \column {
                        "Der Rabe, der Rabe, der bringt die erste Gabe. Fideralala ..."
                }
      }
      \line {
                \bold " 15. "
        \column {
                        "Der Pfau mit seinem bunten Schwanz, der führt die Braut zum Hochzeitstanz."
			"Fideralala ..."
			" "
                }
      }
      \line {
                \bold " 16. "
        \column {
                        "Das finkelein, das Finkelein, das führt das Paar ins Kämmerlein. Fideralala ..."
                }
      }
      \line {
                \bold " 17. "
        \column {
                        "Die Brautmutter, die Eule, nimmt Abschied mit Geheule. Fideralala ..."
                }
      }
      \line {
                \bold " 18. "
        \column {
                        "Der Uhu, der Uhu, der macht die Fensterläden zu. Fideralala ..."
                }
      }
      \line {
                \bold " 19. "
        \column {
                        "Die Taube, die Taube, die bringt der Braut die Haube. Fideralala ..."
                }
      }
      \line {
                \bold " 20. "
        \column {
                        "Die Fledermaus, die Fledermaus, die zieht der Braut die Strapse aus. Fideralala ..."
                }
      }
      \line {
                \bold " 21. "
        \column {
                        "Das Haselhuhn, das Haselhuhn, sagt fröhlich: Wünsche wohl zu ruhn! Fideralala ..."
                }
      }
      \line {
                \bold " 22. "
        \column {
                        "Frau Kratzefuß, Frau Kratzefuß, gibt allen einen Abeschiedskuss. Fideralala ..."
                }
      }
      \line {
                \bold " 23. "
        \column {
                        "Der Hahn, der Krähet: Gute Nacht! Dann wird die Kammer zugemacht. Fideralala ..."
                }
      }
      \line {
                \bold " 24. "
        \column {
                        "Nun ist die Vogelhochzeit aus, und alle ziehn vergnügt nach Haus. Fideralala ..."
                }
      }
	}
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
