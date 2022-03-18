HELM ?= helm

gen-expected:
	${HELM} template --namespace=default --values=tests/values.yaml test . > tests/expected.yaml || \
		${HELM} template --debug --namespace=default --values=tests/values.yaml test .
	sed -i 's/[[:blank:]]\+$$//g'  tests/expected.yaml
	${HELM} template --namespace=default --values=tests/alt.yaml test . > tests/alt-expected.yaml || \
		${HELM} template --debug --namespace=default --values=tests/alt.yaml test .
	sed -i 's/[[:blank:]]\+$$//g'  tests/alt-expected.yaml
