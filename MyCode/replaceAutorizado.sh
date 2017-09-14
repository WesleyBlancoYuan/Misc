# ejecutar con Git bash
# cambiar los autorizados de todos los XMLs en una carpeta a 00013069

for file in *.xml; do
	echo "Processing file: $file"
	sed -r 's:<Autorizado>([0-9]+)</Autorizado>:<Autorizado>00013069</Autorizado>:' -i "$file"
	# three characters to escape: 
    #   '/' as default delimiter; 
    #   '\' itself to escape others; 
    #   '&' to replace all
    # And, if you use other symbols as delimiter, you should escape them, too.
done