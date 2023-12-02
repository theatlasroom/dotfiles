# Gitlab things
export PATH="${HOMEBREW_PATH}/postgresql@11/bin:${HOMEBREW_PATH}/node@12/bin:$PATH"

# Fixes path issues for icu-i18n
export PKG_CONFIG_PATH="${HOMEBREW_PATH}/icu4c/lib/pkgconfig:$PKG_CONFIG_PATH"

# source bash completions for gitlab
# source ~/glab/gdk/support/completions/gdk.bash