for file in image_ori/*
do
    if test -f $file
    then
        arr=(${arr[*]} $file)
    fi
done
echo ${arr[@]}