% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Fuchs, du hast die Gans gestohlen" % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                              % weitere zentrierte Überschrift.
  poet = "Text: Ernst Anschütz um 1824"       % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                  % Metrum, linksbündig unter dem Dichter.
  composer = "Melodie: Volkslied (19. Jhd)"   % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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

%{
akkorde = \chordmode {
  c s4 c s4 f s4 c s4
  f s4 c s4 g:7 s4 c s4
  g:7 s4 c s4 g:7 s4 c s4 g:7 s4 c
}
%}
akkorde = \transpose g c \chordmode {
  g1 c2 g c g d:7 g a4:m d:7 g2 c4 d:7 g2 a4:m d:7 g2
}

melodie = \relative c' {
  \clef "treble"
  \time 2/4
  \tempo 4 = 90
  \autoBeamOff
  c8 d e f g g g g a f c' a g4. r8 a8 f c' a g4. r8 \break
  g8 f f f f e e e e d e d \break 
  c ([e8] g4) \breathe g8 f f f f e e e e d e d c4 r4
  \bar "|."
}

text = \lyricmode {
%  \set stanza = "1."
  Fuchs, du hast die Gans ge -- stoh -- len, 
  gib sie wie -- der her,   gib sie wie -- der her!
  Sonst wird dich der Jä -- ger ho -- len,
  mit dem Schieß -- ge -- wehr,  
  sonst wird dich der Jä -- ger ho -- len
  mit dem Schieß -- ge -- wehr!  
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
                        "Seine große, lange Flinte"
                        "schießt auf Dich das Schrot,"
                        "schießt auf Dich das Schrot,"
                        "dass dich färbt die rote Tinte,"
                        "und dann bist Du tot;"
                        "dass dich färbt die rote Tinte,"
                        "und dann bist Du tot."
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
                        "Liebes Füchslein, lass dir raten"
                        "sei doch nur kein Dieb,"
                        "sei doch nur kein Dieb,"
                        "nimm, Du brauchst nicht Gänsebraten,"
                        "mit der Maus vorlieb,"
                        "nimm, Du brauchst nicht Gänsebraten,"
                        "mit der Maus vorlieb!"
			" "
          }
        }
        }
% } % bis hier auskommentieren, wenn es nur eine Spalte sein soll
      \hspace #0.1  % Spalte vom linken Rand
        }
  }
}

