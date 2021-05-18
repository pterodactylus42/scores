% Dieses Notenblatt wurde erstellt von David Göhler, basierend auf
% der Vorlage von Peter Crighton [http://www.petercrighton.de] 
%
% Kontakt: pirat@online.de

\version "2.16.0"

\header {
  title = "Es tanzt ein Bi-Ba-Butzemann" 	  % Die Überschrift der Noten wird zentriert gesetzt.
  subtitle = " "                                  % weitere zentrierte Überschrift.
  %  poet = "Text: "			          % Name des Dichters, linksbündig unter dem Unteruntertitel.
  meter = ""                                      % Metrum, linksbündig unter dem Dichter.
  composer = "Volkslied"			  % Name des Komponisten, rechtsbüngig unter dem Unteruntertitel.
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

akkorde = \chordmode {
  \germanChords
  s8 \repeat volta 2 { f1 c2 }
  \alternative {
  { f2 }
  { f2 }
  } c2:7 f2 c2:7 f2 f s4 d4:m g:m c f
}

melodie = \relative c' {
  \clef "treble"
  \time 2/4
  \tempo 4 = 80
  \key f\major
  \partial 8
  c8
  \repeat volta 2 { \autoBeamOff
    f8 f c' c a a f f g g c, c \break }
  \alternative {
    { f f16 a c8 \breathe c, }
    { f4 r8 a8 }
  } g8. a16 bes8 g a8. bes16 c8 \breathe a 
  g8. a16 bes8 g a8. bes16 c8 \breathe c, f f c' c a a f f g g c, c f4 r8
  \bar "|"
}
text = \lyricmode {
%  \set stanza = "1."
  Es tanzt ein Bi -- Ba -- But -- ze -- mann in un -- serm Kreis her -- um, di -- del -- dum, es um.
  Er rüt -- telt sich, er schüt -- telt sich, er wirft sein Säck -- chen hin -- ter sich: es tanzt 
  ein Bi -- Ba -- But -- ze -- mann in uns -- serm Kreis her -- um.
}

\score {
  <<
    \new ChordNames { \akkorde }
    \new Voice = "Lied" { \melodie }
    \new Lyrics \lyricsto "Lied" { \text }
    % \new Lyrics \lyricsto "Lied" { \wdh } % auskommentieren, wenn Text zweizeilig gesetzt wird
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



