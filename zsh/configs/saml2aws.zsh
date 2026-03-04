if command -v saml2aws >/dev/null 2>&1; then
	saml2aws --completion-script-zsh > "${fpath[1]}/_oauth2c"
	export SAML2AWS_SESSION_DURATION="36000"
fi