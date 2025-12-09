# Rust(up) (see https://rustup.rs/)
if [[ -d "$HOME/.cargo" ]]; then
	if [ -f "$HOME/.cargo/env" ]; then
		. "$HOME/.cargo/env"
	fi
	export PATH="$HOME/.cargo/bin:$PATH"
fi
