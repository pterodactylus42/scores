% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Müde bin ich, geh zur Ruh"	      % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                              % weitere zentrierte Überschrift.
  poet = "Text: Luise Hensel (1817)"	      % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                  % Metrum, linksbündig unter dem Dichter.
  composer = "Melodie: Volkslied"	      % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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
  %\partial 8
	g1 d2 s2 d1:7 g2 s2 g1:7 c2 s2 d1:7 g2 s2
}


melodie = \relative c'' {
  \clef "treble"
  \time 4/4
  \tempo 4 = 100
  \key g\major
  \autoBeamOff
  %\partial 8
	g4. g8 g8 g8 fis8 g8 a2 r2 a4. a8 a8 a8 g8 a8 b2 r2
	b4. b8 b8 b8 a8 g8 e'2 r2 d4. e8 d8 c8 e,8 fis8 g2 r2
  \bar "|."
}


text = \lyricmode {
  \set stanza = "1."
	Mü -- de bin ich, geh zur Ruh, schlie -- ße bei -- de Äug -- lein zu.
	Va -- ter, lass die Au -- gen dein ü -- ber mei -- nem Bet -- te sein.
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
                        "Hab ich Unrecht heut getan,"
                        "sieh es, lieber Gott, nicht an!"
                        "Deine Gnad und Jesu Blut"
                        "machen allen Schaden gut."
			" "
          }
        }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "  3. "
          \column {
                        "Alle, die mir sind verwandt,"
                        "Gott, lass ruhn in deiner Hand."
                        "Alle Menschen groß und klein,"
                        "sollen dir befohlen sein."
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
                        "Kranken Herzen sende Ruh,"
                        "nasse Augen schließe zu;"
                        "lass den Mond am Himmel stehn"
                        "und die stille Welt besehn."
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


