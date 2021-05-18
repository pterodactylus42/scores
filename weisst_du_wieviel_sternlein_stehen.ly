% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Weißt du, wieviel Sternlein stehen" 	  % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                                  % weitere zentrierte Überschrift.
  poet = "Text: Wilhelm Hey (1759 - 1854)"        % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                      % Metrum, linksbündig unter dem Dichter.
  composer = "Melodie: Volkslied um 1800"	  % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
  arranger = ""                                   % Name des Bearbeiters/Arrangeurs, rechtsbündig unter dem Komponisten.
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

akkorde = \chordmode {
  \partial 4
  s4 f2 c4:7 f2. c:7 f f2 c4:7 f2. c:7 f
  c f c f f2 c4:7 f2. c2 c4:7 f2 
}

melodie = \relative c' {
  \clef "treble"
  \time 3/4
  \tempo 4 = 100
  \key f\major
  \autoBeamOff
  \partial 4
	f8 g8 a4 a4 bes8 g8 d'8 [c8] c4 a8 c8 c8 [bes8] bes4 c8 bes8 a4 r4 f8 g8\break
	a4 a4 bes8 g8 d'8 [c8] c4 a8 c8 c8 [bes8] bes4 c8 bes8 a4 r4 c8 a8 \break
	a8 [g8] g4 d'8 bes8 bes8 [a8] a4 c8 a8 a8 [g8] g4 d'8 bes8 bes8 [a8] a4 \breathe f8 g8
	a4 a4 bes8 g8 d'4 (c4) a8 c8 c8 [bes8] bes4 c8 bes8 a2

 
  \bar "|."
}

text = \lyricmode {
  \set stanza = "1."
Weisst du wie -- viel Ster -- ne ste -- hen an dem blau -- en Him -- mels -- zelt?
Weißt du wie -- viel Wol -- ken ge -- hen weit -- hin ü -- ber al -- le Welt?
Gott, der Herr, hat sie ge -- zäh -- let, daß ihm auch nicht ei -- nes feh -- let,
an der gan -- zen gro -- ßen Zahl, an der gan -- zen gro -- ßen Zahl.
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
        \line { \bold "  2. "
          \column {
	  		"Weißt Du, wieviel Mücklein spielen"
			"in der heißen Sommerglut,"
			"wieviel Fischlein auch sich kühlen"
			"in der hellen Wasserflut?"
			"Gott der Herr rief sie mit Namen,"
			"daß sie all ins Leben kamen,"
			"daß sie nun so fröhlich sind,"
			"daß sie nun so fröhlich sind."
			" "
          }
        }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "  3. "
          \column {
                        "Weißt du wieviel Kinder schlafen,"
			"heute nacht im Bettelein?"
			"Weißt du wieviel Träume kommen"
			"zu den müden Kinderlein?"
			"Gott, der Herr, hat sie gezählet,"
			"daß ihm auch nicht eines fehlet,"
			"kennt auch dich und hat dich lieb,"
			"kennt auch dich und hat dich lieb!"
			" "
                  }
                }
      }
% { ab hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1    % horizontaler Abstand zwischen den Spalten
          \column {       % zweite Spalte rechts
        \line {
          \bold "  4. "
          \column {
                        "Weißt Du, wieviel Kinder frühe,"
			"stehn aus ihren Bettlein auf,"
                        "daß sie ohne Sorg und Mühe"
			"fröhlich sind im Tageslauf?"
                        "Gott im Himmel hat an allen"
			"seine Lust, sein Wohlgefallen"
                        "kennt auch dich und hat dich lieb,"
			"kennt auch dich und hat dich lieb!"
			" "
          }
        }
        \hspace #0.1
        \line {
          \bold "   "
          \column {
                        " "
          }
        }
        }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
        }
  }
}


