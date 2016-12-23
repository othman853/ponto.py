create-venv:
	if [ ! -d ".venv" ]; then python3 -m venv .venv; fi

install-%:create-venv
	.venv/bin/pip install -r requirements/$*

ponto:
	@.venv/bin/python lib/main.py
