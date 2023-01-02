# File content
read -r -d '' comments << EOM
# Counts the number of lines in the given directory and sorts them by extension type.
EOM

read -r -d '' comments << EOM
if [ -z "\$1" ]; then
    cargo run --release --manifest-path $1/Cargo.toml --bin tally
else
    cargo run --release --manifest-path $1/Cargo.toml --bin tally -- \$1
fi
EOM

# Adding content to function file
path_to_function=$ZDOTDIR/.zsh_functions/tally
echo "$comments" > $path_to_function
echo "$commands" >> $path_to_function
