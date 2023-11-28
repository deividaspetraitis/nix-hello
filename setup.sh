unset PATH
for p in $buildInputs; do
  export PATH=$p/bin${PATH:+:}$PATH
done

for p in $baseInputs; do
  export PATH=$p/bin${PATH:+:}$PATH
done

function unpackPhase() {
  tar -xzf $src
  
  for d in *; do
    if [ -d "$d" ]; then
      cd "$d"
      break
    fi
  done
}

function configurePhase() {
  ./configure --prefix=$out
}

function buildPhase() {
  make
}

function installPhase() {
  make install
}

function genericBuild () {
  unpackPhase
  configurePhase
  buildPhase
  installPhase
}
