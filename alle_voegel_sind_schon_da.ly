% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Alle Vögel sind schon da"	      % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                              % weitere zentrierte Überschrift.
  poet = "Text: Hoffmann von Fallersleben (1850)" % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                  % Metrum, linksbündig unter dem Dichter.
  composer = "Melodie: Volkslied aus Schlesien" % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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
  c1 f2 c2 g:7 c g:7 c4 s c2 g c g c g c g c1 f2 c g:7 c g:7 c4 s
}



melodie = \relative c' {
  \clef "treble"
  \time 4/4
  \tempo 4 = 110
  \autoBeamOff
	c4. e8 g4 c a c8 ([a]) g2 f4. g8 e4 c d2 e4 r 
	g g f f e g8 ([e]) d2 g4 g f f e g8 ([e]) d2 \breathe
	c4. e8 g4 c a c8 ([a]) g2 f4. g8 e4 c d2 e4 r	
  \bar "|."
}

text = \lyricmode {
  \set stanza = "1."
	Al -- le Vö -- gel sind schon da, al -- le Vö -- gel, al -- le!
	welch ein Sin -- gen, Mu -- si -- ziern, Pfei -- fen, Zwit -- schern, Ti -- ri -- liern!
	Früh -- ling will nun ein -- mar -- schiern, kommt mit Sang und Schal -- le.	
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
                        "Wie sie alle lustig sind"
                        "flink und froh sich regen!"
                        "Amsel, Drossel, Fink und Star"
                        "und die ganze Vogelschar"
                        "wünschen uns ein frohes Jahr,"
                        "lauter Heil und Segen."
			" "
          }
        }
      }
% { ab hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1    % horizontaler Abstand zwischen den Spalten
          \column {       % zweite Spalte rechts
        \line {
          \bold "  3. "
          \column {
                        "Was sie uns verkünden nun,"
                        "nehmen wir zu Herzen:"
                        "Wir auch wollen lustig sein,"
                        "lustig wie die Vögelein,"
                        "hier und dort, feldaus, feldein,"
                        "singen, springen, scherzen."
			" "
          }
        }
        }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
        }
  }
}


