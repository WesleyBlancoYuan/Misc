# ejecutar con Git bash
# cambiar los entornos de las lineas de buzon de de todos los XMLs en una carpeta
# de CR a CP, o al reves

for file in *.xml; do
	echo "Processing file: $file"
	sed -r 's:\/ENTORNO\/=CR:\/ENTORNO\/=CP:' -i "$file"
	# three characters to escape: 
    #   '/' as default delimiter; 
    #   '\' itself to escape others; 
    #   '&' to replace all
    # And, if you use other symbols as delimiter, you should escape them, too.
done