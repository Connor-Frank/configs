# Defined in /Users/connorfrank/sync/automations/auto_github/my_commands.fish @ line 1
function create
	cd
	source .env
	python create.py $1
	cd $FILEPATH$1
	git init
	git remote add origin git@github.com:$USERNAME/$1.git
	touch README.md
	git add --all
	git commit -m "initial commit"
	git push origin master
	code .
end
