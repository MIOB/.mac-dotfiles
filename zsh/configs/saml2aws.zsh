if command -v saml2aws >/dev/null 2>&1; then
	add_completion saml2aws --completion-script-zsh
	export SAML2AWS_SESSION_DURATION="36000"
fi