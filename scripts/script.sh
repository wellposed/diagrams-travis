#! /bin/bash

if [[ $GHCVER == "head" ]]
  then
    DOCBUILD="Skipping docs under GHC HEAD..."
  else
    DOCBUILD="$CABAL haddock"
fi

$CABAL configure --enable-tests --enable-benchmarks -v2\
  && $CABAL build --ghc-options='-Wall -Werror'\
  && $CABAL test\
  && $DOCBUILD\
  && $CABAL check\
  && $CABAL sdist
