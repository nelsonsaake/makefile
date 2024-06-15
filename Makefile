.PHONY: ncommit pull

ncommit:
	cls
	git add .
	git commit -m "ncommit"
	git push origin main

pull:
	cls
	git pull origin main 