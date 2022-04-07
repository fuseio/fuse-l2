

run:
	docker run -it --env-file seq.env  \
		-v $(pwd)/genesis.json:/usr/local/bin/genesis.json \
		-v $(pwd)/start.sh:/usr/local/bin/start.sh \
		--entrypoint="/usr/local/bin/start.sh" \
		ethereumoptimism/l2geth \
		/bin/sh -c "chmod 777 /usr/local/bin/start.sh"
