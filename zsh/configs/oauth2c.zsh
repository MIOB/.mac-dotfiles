if command -v oauth2c >/dev/null 2>&1; then
  oauth2c completion zsh > "${fpath[1]}/_oauth2c"
fi