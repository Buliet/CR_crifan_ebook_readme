echo -n > batch.vim
for i in assets/website/*
do
    val=$i:t
    echo $val
    echo "%substitute#assets/pdf/$val.pdf)#assets/website/$val/index.html)---[pdf](assets/pdf/$val.pdf)#g" >> batch.vim
done
