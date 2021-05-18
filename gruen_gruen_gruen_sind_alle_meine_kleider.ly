% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Grün, grün, grün sind alle meine Kleider" % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                              % weitere zentrierte Überschrift.
%  poet = "Text: " 			      % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                  % Metrum, linksbündig unter dem Dichter.
  composer = "Vokslied"			      % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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
   g2 a:m d g1 a2:m d g
  \repeat volta 2 { g a:m d g g a:m d g } 
}

melodie = \relative c' {
  \clef "treble"
  \time 2/4
  \tempo 4 = 130
  \key g\major
  \autoBeamOff
	g'4 g a a fis8 fis e fis g4 d \breathe g g a a \break fis8 fis e fis g4 r
        \repeat volta 2 { b4 b8 ([d]) c4 c a8 \break a a c b4 b \breathe g g a a fis8 fis e fis g4 r}
%  \bar "|."
}

text = \lyricmode {
  \set stanza = "1."
	Grün, grün, grün, sind al -- le mei -- ne Klei -- der,
        grün, grün grün, ist al -- les, was ich hab.
        {
        Da -- rum lieb ich al -- les, was so grün ist,
        weil mein Schatz ein Jä -- ger, Jä -- ger ist.
        }
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

% Strophen passen nicht zweispaltig unter die Noten!

\markup {
    \column {
      \hspace #0.3
      \line {
                \bold "  2. "
        \column {
                        "Rot, rot, rot sind alle meine Kleider,"
                        "rot, rot, rot ist alles, was ich hab."
			"Darum lieb ich alles, was so rot ist,"
			"weil mein Schatz ein Reiter, Reiter ist."
			" "
                }
      }
      \hspace #0.3
      \line {
                \bold "  3. "
        \column {
                        "Weiß, weiß, weiß sind alle meine Kleider,"
                        "weiß, weiß, weiß ist alles, was ich hab."
			"Darum lieb ich alles was so weiß ist,"
			"weil mein Schatz ein Müller, Müller ist."
			" "
                }
      }
      \hspace #0.3
      \line {
                \bold "  4. "
        \column {
                        "Blau, blau, blau sind alle meine Kleider,"
                        "blau, blau, blau ist alles, was ich hab."
			"Darum lieb ich alles was so blau ist,"
			"weil mein Schatz ein Färber, Färber ist."
			" "
                }
      }
      \hspace #0.3
      \line {
                \bold "  5. "
        \column {
                        "Bunt, bunt, bunt sind alle meine Kleider,"
			"bunt, bunt, bunt ist alles, was ich hab."
			"Darum lieb ich alles was so bunt ist,"
			"weil mein Schatz ein Maler, Maler ist."
			" "
                }
      }
      \hspace #0.3
      \line {
                \bold "  6. "
        \column {
                        "Schwarz, schwarz, schwarz sind alle meine Kleider,"
                        "schwarz, schwarz, schwarz ist alles, was ich hab."
			"Darum lieb ich alles was so schwarz ist,"
			"weil mein Schatz ein Rauchfangkehrer ist."
			" "
                }
      }

        }
}



