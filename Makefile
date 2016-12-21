venv:
	if [ ! -d ".venv" ]; then python3 -m venv .venv; fi

install-%:venv
	.venv/bin/pip install -r requirements/$*
