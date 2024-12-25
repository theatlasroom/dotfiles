# Only include these paths when using GL mode

if $GL_MODE; then 
	echo "GL MODE - setting path vars"
	# Gitlab things
	export PATH="/usr/local/opt/postgresql@11/bin:/usr/local/opt/node@12/bin:$PATH"

	# Fixes path issues for icu-i18n
	export PKG_CONFIG_PATH="/usr/local/opt/icu4c/lib/pkgconfig:$PKG_CONFIG_PATH"

	# source bash completions for gitlab
	source ~/glab/gdk/support/completions/gdk.bash
fi
