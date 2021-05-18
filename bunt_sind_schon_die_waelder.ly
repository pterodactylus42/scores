% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Bunt sind schon die Wälder"        % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                              % weitere zentrierte Überschrift.
  poet = "Text: Johann G. von Salis-Seewis (1762 - 1834)" % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                  % Metrum, linksbündig unter dem Dichter.
  composer = "Melodie: Johann F. Reichardt (1752 - 1814)" % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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

akkorde = \transpose a g \chordmode {
  a2. d4. a1 s8 d4. a4. 
  e4. b4.:7 e2. a2. d2. 
  b4.:m b4.:7 e2. a4. e4. a2.
}

melodie = \relative c' {
  \clef "treble"
  \time 6/8
  \tempo 4 = 100
  \key g\major
  \autoBeamOff
	g'4 g8 g (fis) g a4. g \breathe b4 b8 b (a) b c4. b \break
	a4 a8 g (b) cis, d4. r4 r8 b'4 a8 g4 fis8 e4. e \break
	c'4 b8 a (b) g fis4. fis \breathe g8 (b) d d, (e) fis g4. r4 r8
  \bar "|."
}

text = \lyricmode {
  \set stanza = "1."
	Bunt sind schon die Wäl -- der, gelb die Stop -- pel -- feld -- der
	und der Herbst be -- ginnt. Ro -- te Blät -- ter fal -- len,
	grau -- e Ne -- bel wal -- len, küh -- ler weht der Wind.
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
                        "Wie die volle Traube"
                        "aus der Rebenlaube"
                        "purpurfarbig strahlt!"
                        "Am Geländer reifen"
                        "Pfirsiche, mit Streifen"
                        "rot und weiß bemalt."
			" "
          }
        }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "  3. "
          \column {
                        "Flinke Träger springen,"
                        "und die Mädchen singen,"
                        "alles jubelt froh."
                        "Bunte Bänder schweben"
                        "zwischen hohen Reben"
                        "auf dem Hut von Stroh."
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
                        "Geige tönt und Flöte"
                        "bei der Abendröte"
                        "und im Morgenglanz."
                        "Junge Winzerinnen"
                        "winken und beginnen"
                        "frohen Erntetanz."
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


