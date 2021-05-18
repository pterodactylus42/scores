% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Geh aus, mein Herz, und suche Freud" % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                              % weitere zentrierte Überschrift.
  poet = "Text: Paul Gerhard (1656)" 	      % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                  % Metrum, linksbündig unter dem Dichter.
  composer = "Melodie: August Harder (1775 - 1813)" % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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
	d4 a2 d a:7 d2 b:m d2 a d 
	a2. e2.:7 a2 a4.:7 d8 a2 d4 a d2 a4.:7 d8 a2 
	d4 a:7 d1. s2. a4 b2:m a4 d a2 d4
}


melodie = \relative c'' {
  \clef "treble"
  \time 4/4
  \tempo 4 = 120
  \key d\major
  \autoBeamOff
  %\repeat volta 2 { } %Wiederholung
  \partial 4 % 1/4 Auftakt
	a4 a4. g8 fis4 fis4 fis8 ([g8]) fis8 ([e8]) d4 \breathe a'4
	d4 cis8 [(b8)] a4 fis4 e8 ([fis8]) g8 ([a8]) fis4 \breathe fis
	e4. a8 cis ([b]) a ([gis]) b2 a4 \breathe a, g'4. fis8 e4 e
	a8 ([b]) a ([g]) fis4 \breathe a, g'4. fis8 e4 e
	a8 ([b]) a ([g]) fis4 \breathe fis8 ([g]) a4 fis8 ([g]) a4 fis8 ([g])
	a2 fis4 \breathe a4 d4. b8 a ([g]) fis ([e]) e2 d4 
  \bar "|."
}


text = \lyricmode {
  %\set stanza = "1."
	Geh aus, mein Herz, und su -- che Freud in die -- ser lie -- ben
	Som -- mers -- zeit an dei -- nes Got -- tes Ga -- ben!
	Schau an der schö -- nen Gär -- ten Zier, und sie -- he, wie sie
	dir und mir sich aus -- ge -- schmü -- cket ha -- ben, 
	sich aus -- ge -- schmü -- cket ha -- ben.
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
    \hspace #0.1     % schafft ein wenig Platz zur den Noten
    \fill-line {
      \hspace #0.1  % Spalte vom linken Rand, auskommentieren, wenn nur eine Spalte
	  \column {      % erste Spalte links
        \line {	\bold "  2. "
          \column {
	  		"Die Bäume stehen voller Laub,"
			"das Erdreich decket seinen Staub"
			"mit einem grünen Kleide."
			"Narzissus und die Tulipan"
			"die ziehen sich viel schöner an"
            		"als Salomonis Seide."
			" "
          }
        }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "  3. "
          \column {
            		"Die Lerche schwingt sich in die Luft,"
            		"das Täubchen fleucht aus seiner Kluft"
            		"und macht sich in die Wälder;"
			"die hochbegabte Nachtigall"
			"ergötzet und füllt mit ihrem Schall"
			"Berg, Hügel, Tal und Felder."
			" "
		  }
		}
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "  4. "
          \column {
			"Die Glucke führt ihr Völklein aus,"
			"der Storch baut und bewohnt sein Haus,"
			"das Schwälblein speist ihr’ Jungen,"
			"Der schnelle Hirsch, das leichte Reh"
			"ist froh, und kommt aus seiner Höh"
			"ins tiefe Gras gesprungen."
			" "
		  }
		}
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line {  \bold "  5. "
          \column {
			"Die Bächlein rauschen in dem Sand,"
			"und mahlen sich und ihren Rand"
			"mit schattenreichen Myrthen,"
			"Die Wiesen liegen hart dabei,"
			"und klingen ganz von Lustgeschrei"
			"der Schaf und ihrer Hirten."
			" "
          }
        }
      }
% { ab hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1    % horizontaler Abstand zwischen den Spalten
	  \column {       % zweite Spalte rechts
        \line {
          \bold "  6. "
          \column {
              		"Die unverdroß'ne Bienenschar"
              		"fleucht hin und her, sucht hie und da"
              		"ihr' edle Honigspeise."
              		"Des süßen Weinstocks starker Saft"
              		"bringt täglich neue Stärk' und Kraft"
              		"in seinem schwachen Reise."
			" "
          }
        }
        \hspace #0.1
        \line {
          \bold "  7. "
          \column {
			"Der Weizen wächset mit Gewalt,"
			"darüber jauchzet jung und alt,"
			"und rühmt die große Güte"
			"Des, der so überflüssig labt,"
			"und mit so manchem Gut begabt"
			"das menschliche Gemüte."
			" "
		  }
        }
        \hspace #0.1
        \line {
          \bold "  8. "
          \column {
              		"Ich selbst kann und mag nicht ruhn;"
              		"des großen Gottes großes Tun"
              		"erweckt mir alle Sinnen;"
              		"ich singe mit, wenn alles singt,"
              		"und lasse, was dem Höchsten klingt,"
              		"aus meinem Herzen rinnen."
			" "
          }
        }
        \hspace #0.1
        \line {
          \bold "  9. "
          \column {
			"Ach, denk ich, bist du hie so schön,"
			"und lässt du's uns so lieblich gehn"
			"auf dieser armen Erden,"
			"Was will doch wohl nach dieser Welt"
			"dort in dem reichen Himmelszelt"
			"und güldnem Schlosse werden?"
			" "
          }
        }
      }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
	}
  }
}

