% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Die Blümelein, sie schlafen"       % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                              % weitere zentrierte Überschrift.
  poet = "Text: August Wilhelm von Zuccalmaglio" % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                  % Metrum, linksbündig unter dem Dichter.
  composer = "Melodie: Heinrich Isaak (um 1490)" % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
  arranger = ""                               % Name des Bearbeiters/Arrangeurs, rechtsbündig unter dem Komponisten.
  tagline = "Diese Noten sind frei kopierbar für jedermann – erstellt für www.ebersberger-liedersammlung.de"
                                              % Zentriert unten auf der letzten Seite.
%  copyright = "Diese Noten sind frei kopierbar für jedermann – erstellt für www.ebersberger-liedersammlung.de"
                                              % Zentriert unten auf der ersten Seite (sollten tatsächlich zwei
                                              % seiten benötigt werden"
}

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
  \repeat volta 2 { s4 g1. d4 g d2 g4 e4:m d2. }
    g4 g1 c2 d1:7 g2 d1 d4. g8 d2 g4. d8 e2:m d4 e4:m g4 d4:7 g2. s4
}


melodie = \relative c' {
  \clef "treble"
  \time 4/4
  \tempo 4 = 100
  \key g\major
  \partial 4
  \autoBeamOff
  \repeat volta 2 { d4 g4. a8 b4 a4 g2 fis4 \breathe g4 a8 ([b8]) c4 b8 ([a8]) g4 a2 r4 } \break
	b8 ([c8]) d4 b c d e4. d8 c4 \breathe a8 ([b]) c4 c b d
	a2 r2 d4. (b8) a2 b4. (a8) g ([a]) \breathe b ([c]) d4 g,8 ([a]) b4 a g2. r4
  \bar "|."
}


text = \lyricmode {
  \set stanza = "1."
	Die Blü -- me -- lein, sie schla -- fen schon längst im Mon -- den -- schein,
	Es rüt -- telt sich der Blü -- ten -- baum, er säu -- selt wie im Traum.
	Schla -- fe, schla -- fe, schlaf du mein Kin -- de -- lein!
}

wdh = \lyricmode {
	sie nik -- ken mit den Köpf -- chen auf ih -- ren Stän -- ge -- lein.
}

\score {
  <<
    \new ChordNames { \akkorde }
    \new Voice = "Lied" { \melodie }
    \new Lyrics \lyricsto "Lied" { \text }
    \new Lyrics \lyricsto "Lied" { \wdh }
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
    \hspace #0.1     % schafft ein wenig Platz zur den Noten
    \fill-line {
      \hspace #0.1  % Spalte vom linken Rand, auskommentieren, wenn nur eine Spalte
          \column {      % erste Spalte links
        \line { \bold "  2. "
          \column {
                        "Die Vögelein, sie sangen"
                        "so süß im Sonnenschein,"
                        "sie sind zur Ruh gegangen"
                        "in ihrer Nestchen klein."
                        "Das Heimchen in dem Ährengrund,"
                        "es tut allein sich kund."
                        "Schlafe, schlafe, schlaf du,"
                        "mein Kindelein!"
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
                        "Sandmännchen kommt geschlichen"
                        "und guckt durchs Fensterlein,"
                        "ob irgend noch ein Liebchen"
                        "nicht mag zu Bette sein."
                        "Und wo es nur ein Kindlein fand,"
                        "streut er ins Aug' ihm Sand."
                        "Schlafe, schlafe, schlaf du,"
                        "mein Kindelein!"
			" "
          }
        }
        }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
        }
  }
}

