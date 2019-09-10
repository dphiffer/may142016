all:
	python -m util.make_db $(db)
	python -m util.load_users $(db)
	python -m util.import_tweets $(db)
