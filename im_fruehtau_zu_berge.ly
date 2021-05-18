% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"
\header {
  title = "Im Frühtau zu Berge" 		  % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = "Schwedisches Volkslied"             % weitere zentrierte Überschrift.
  poet = "Text: Walther Hensel"			          % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                      % Metrum, linksbündig unter dem Dichter.
  composer = "Melodie: Edwin Ericson"   		  % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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
  s8 g1 d1 d:7 g2. s8 
  \repeat volta 2 { s8 c1 g d2 d:7 g2. s8 }
}

melodie = \relative c' {
  \clef "treble"
  \time 4/4
  \tempo 4 = 110
  \key g\major
  \partial 8
  \autoBeamOff
  d8 g4 b8 d, g4 b8 g a4 a8. a16 a4 r8 b \break
  c4 c8 c d c b a b4 g8. g16 g4 r8 
  \repeat volta 2 { g8 c8. c16 c8 c e4 c \break
	b8. b16 g8 b d4 b8 g d4 fis8 a c4 a8 fis g4 g g r8 }
%  \bar "|."
}

text = \lyricmode {
 \set stanza = "1."
  Im Früh -- tau zu Ber -- ge wir ziehn, fal -- le -- ra, so
  grün wie Sma -- rag -- de sind die Höhn, fal -- le -- ra. Wir wan -- dern oh -- ne Sor -- gen 
  sin -- gend in den Mor -- gen, be -- vor noch im Ta -- le die Häh -- ne krähn.
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
			"Ihr alten und so klugen Leut, fallera,"
			"ihr denkt wohl, wir wären nicht gescheit, fallera?"
			"Wer sollte aber singen, wenn wir schon Grillen fingen,"
			"in dieser so herrlichen Frühlingszeit."
			" "
		}
      }
      \hspace #0.1
      \line {
        \bold "  3. "
        \column {
			"Werft ab alle Sorge und Qual, fallera,"
			"kommt mit auf die Höhen aus dem Tal, fallera!"
			"Wir sind hinausgegangen, den Sonnenschein zu fangen,"
			"kommt mit uns, versucht es auch selbst einmal."
			" "
        }
      }
	}
}

