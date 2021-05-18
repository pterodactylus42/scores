% Dieses Notenblatt wurde erstellt von David Göhler
% Kontakt: pirat@online.de

\version "2.16.0"
\header {
  title = "Kuckuck, Kuckuck" 			  % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                                  % weitere zentrierte Überschrift.
  poet = "Text: Hoffmann von Fallersleben 1850"   % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                      % Metrum, linksbündig unter dem Dichter.
  composer = "Melodie: Niederösterreichisches Volkslied" % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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

akkorde = \transpose a f \chordmode {
  a1. e2.:7 a2. e1. a1. a1. e2.:7 a2
}

melodie = \transpose a f \relative c' {
  \clef "treble"
  \time 3/4
  \tempo 4 = 160
  \key a\major
%  \partial 4  % kein Auftakt oder doch?
  \autoBeamOn
    e'4 cis r4 e cis r4 b a b a2 r4 b b cis d2 b4\break
    cis cis d e2 cis4\breathe e2 cis4 e2 cis4 d cis b a2 r4
    \bar "|."
}
text = \lyricmode {
  \set stanza = "1."
    Kuc -- kuck, Kuc -- kuck, ruft's aus dem Wald. Las -- set uns sin -- gen,
    tan -- zen und sprin -- gen! Früh -- ling, Früh -- ling wird es nun bald!
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
	"Kuckuck, Kuckuck lässt nicht sein Schrei'n,"
	"komm' in die Felder, Wiesen und Wälder!"
	"Frühling, Frühling, stelle dich ein!"
          }
        }

      }
% { ab hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1    % horizontaler Abstand zwischen den Spalten
          \column {       % zweite Spalte rechts
        \line {
          \bold "  3. "
          \column {
	"Kuckuck, Kuckuck, trefflicher Held!"
 	"Was du gesungen, ist dir gelungen,"
	"Winter, Winter räumet das Feld."
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
