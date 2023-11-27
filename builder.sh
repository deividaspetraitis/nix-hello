set -e
unset PATH
for p in $buildInputs; do
  export PATH=$p/bin${PATH:+:}$PATH
done
for p in $baseInputs; do
  export PATH=$p/bin${PATH:+:}$PATH
done

echo "buildInputs: $buildInputs"
echo "PATH: $PATH"

tar -xzf $src

for d in *; do
  if [ -d "$d" ]; then
    cd "$d"
    break
  fi
done

./configure --prefix=$out
make
make install
