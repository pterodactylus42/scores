% Dieses Notenblatt wurde erstellt von Michael Nausch
% Kontakt: michael@nausch.org (PGP public-key 0x2384C849) 

\version "2.16.0"

\header {
  title = "Lustig ist das Zigeunerleben"          % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                                  % weitere zentrierte Überschrift.
%  poet = "Text: "  			          % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                      % Metrum, linksbündig unter dem Dichter.
  composer = "schlesisches Volkslied"		  % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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

% Akkorde für die Gitarrenbegleitung
akkorde = \chordmode {
  \germanChords
	d4. d8 g d d4 d8 d8 a8 d8 a2. d2 s4	d4. d8 g8 d8 d4 d8 d8 a8 d8 a2. d2 s4
	g2 s4 g4 d8 d4. g2 s4 a,4.:7 d4.	d2 g8 a,8:7 d2 a,8:7 d8 a,2:7 s4 d2 s4
}


melodie = \relative c'' {
  \clef "treble"
  \time 6/8
  \tempo 4 = 110
  \key d\major
  \autoBeamOff
	a4 a8 a8 b8 a8 fis4 fis8 fis8 ([e8]) fis8 g8. g16 g8 a8. a16 a8 fis2 r4 \break
	a4 a8 a8 b8 a8 fis4 fis8 fis8 ([e8]) fis8 g8. g16 g8 a8. a16 a8 fis2 r4 \break
	d'4 d8 d8 cis8 b8 b4 a8 a4. b8. b16 b8 b8 ([a8]) g8 g4 fis8 fis4. \breathe \break
	a8. a16 a8 a8 b8 cis8 d8. d16 d8 d8 cis8 d8 e8. e16 e8 cis8 b8 cis8 d2 r4
  \bar "|."
}


text = \lyricmode {
  \set stanza = "1."
	Lus -- tig ist das Zi -- geu -- ner -- le -- ben, fa -- ri -- a, fa -- ri -- a -- ho.
	Brauch'n dem Kai -- ser kein Zins zu ge -- ben, fa -- ri -- a, fa -- ri -- a -- ho.
	Lus -- tig ist es im grü -- nen Wald, wo des Zi -- geu -- ners Auf -- ent -- halt.
	Fa -- ri -- a, fa -- ri -- a, fa -- ri -- a, fa -- ri -- a, fa -- ri -- a, fa -- ri -- a -- ho.
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
                        "Sollt uns einmal der Hunger plagen,"
                        "faria, fariaho,"
                        "tun wir uns ein Hirschlein jagen,"
                        "faria, fariaho,"
                        "Hirschlein nimm dich wohl in Acht,"
                        "wenn des Jägers Büchse kracht!"
                        "Faria, faria, faria, faria, faria, fariaho."
			" "
          }
        }
        \hspace #0.1  % vertikaler Abstand zwischen den Strophen 
        \line { \bold "  3. "
          \column {
                       "Sollt uns einmal der Durst sehr plagen,"
                        "faria, fariaho,"
                        "gehn wir hin zu Waldesquellen,"
                        "faria, fariaho,"
                        "trinken das Wasser wie Moselwein,"
                        "meinen, es müsste Campagner sein."
                        "Faria, faria, faria, faria, faria, fariaho."
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
                        "Wenn wir auch kein Federbett haben,"
                        "faria, fariaho,"
                        "tun wir uns ein Loch ausgraben,"
                        "faria, fariaho,"
                        "legen Moos und Reisig 'nein,"
                        "das soll uns ein Federbett sein."
                        "Faria, faria, faria, faria, faria, fariaho."
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


