
for x in *.xml; do
	xmllint --pretty 1 "$x" >"$x.temp" && mv "$x.temp" "$x"
done
