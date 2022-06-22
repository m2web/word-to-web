# loop through each markdown file in the dir
for file in *; do
    if [ "${file: -3}" == ".md" ] 
    then
        # echo $file;
        # change image folder path
        sed -i 's/(.\/images/(\/images/' $file
        
        # remove the image width and height settings created by pandoc
        sed -i 's/{width=.*//' $file
        sed -i 's/height=.*//' $file

        # remove image caption
        sed -i "s/\[[^]]*\]/\[\]/g" $file
    fi
done;

