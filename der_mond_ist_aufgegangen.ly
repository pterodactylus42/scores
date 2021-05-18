% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Der Mond ist aufgegangen"          % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                              % weitere zentrierte Überschrift.
  poet = "Text: Matthias Claudius (1773)"     % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                  % Metrum, linksbündig unter dem Dichter.
  composer = "Melodie: Johann Abraham Peter Schulz (1790)" % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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

akkorde = \chordmode {
  \partial 4
  c:7 f4 g:m f4 c:7 s4 f4 s4 f4 s4 b4 f4
  c:7 s4 f4 s4 f4 s4 b4 f4 c2 s4 f4 c:7 f4 g:m f4
  c:7 s4 f4  s4 f4 s4 b4 f4 c:7 s4 f4 s4 f4 s4 b4 f4 c:7 s4 f
}

melodie = \relative c' {
  \clef "treble"
  \time 4/4
  \tempo 4 = 100
  \key f\major
  \autoBeamOff
  \partial 4
	f4 g4 f4 bes4 a4 g2 e4 \breathe a4 a4 a4 d4 c4 \break
	bes2 a4 a4 a4 a4 bes4 a4 g2 r4 f4 g4 f4 bes4 a4
	g2 f4 \breathe a4 a4 a4 d4 c4 bes2 a4 a4 a4 a4 bes4 a4 g4 g4 f4 r4 
  \bar "|."
}

text = \lyricmode {
  \set stanza = "1."
	Der Mond ist auf -- ge -- gan -- gen, die gold -- nen Stern -- lein pran -- gen
	am  Him -- mel hell und klar. Der Wald steht schwarz und schwei -- get,
	und aus den Wie -- sen stei -- get der wei -- ße Ne -- bel wun -- der -- bar.
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
                        "Wie ist die Welt so stille"
                        "und in der Dämmerung Hülle"
                        "so traulich und so hold"
                        "gleich einer stillen Kammer,"
                        "wo ihr des Tages Jammer"
                        "verschlafen und vergessen sollt."
			" " 
          }
        }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "  3. "
          \column {
                        "Seht ihr den Mond dort stehen?"
                        "Er ist nur halb zu sehen"
                        "und ist doch rund und schön."
                        "So sind wohl manche Sachen,"
                        "die wir getrost belachen,"
                        "weil unsre Augen sie nicht sehn."
			" "
                  }
                }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen
        \line { \bold "  4. "
          \column {
                        "Wir stolzen Menschenkinder"
                        "sind eitel arme Sünder"
                        "und wissen gar nicht viel."
                        "Wir spinnen Luftgespinste"
                        "und suchen viele Künste"
                        "und kommen weiter von dem Ziel."
			" "
                  }
                }
      }
% { ab hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1    % horizontaler Abstand zwischen den Spalten
          \column {       % zweite Spalte rechts
        \line {
          \bold "  5. "
          \column {
                        "Gott, lass dein Heil uns schauen,"
                        "auf nichts Vergänglichs trauen,"
                        "nicht Eitelkeit uns freun;"
                        "lass uns einfältig werden"
                        "und vor dir hier auf Erden"
                        "wie Kinder fromm und fröhlich sein."
			" "
          }
        }
        \hspace #0.1
        \line {
          \bold "  6. "
          \column {
                        "Wollst endlich sonder Grämen"
                        "aus dieser Welt uns nehmen"
                        "durch einen sanften Tod;"
                        "und wenn du uns genommen,"
                        "lass uns in’ Himmel kommen,"
                        "du unser Herr und unser Gott."
			" "
          }
        }
        \hspace #0.1
        \line {
          \bold "  7. "
          \column {
                        "So legt euch denn, ihr Brüder,"
                        "in Gottes Namen nieder;"
                        "kalt ist der Abendhauch."
                        "Verschon uns, Gott, mit Strafen"
                        "und lass uns ruhig schlafen"
                        "und unsern kranken Nachbarn auch!"
			" " 
          }
        }
        }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
        }
  }
}


