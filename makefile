all:
	pandoc -t revealjs \
      -s \
      -o index.html --slide-level=2 \
      --metadata pagetitle="Shell basics" \
	  --highlight-style "./gruvbox.theme" \
	  presentation.md \
	  -V revealjs-url=./reveal.js \
      -V theme=my_moon
	sed -i 's/<span class="ex">curl/<span class="fu">curl/' index.html
show:
	xdg-open index.html
auto:
	touch index.html
	make show
	echo index.html | entr ./bin/refresh_firefox.sh &
	find *md ./reveal.js/ | entr make


