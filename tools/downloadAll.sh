wget -c -nc -r -np -nH --cut-dirs=1 -e robots=off -P source/docbook https://www.crifan.com/files/doc/docbook/ > docbook.log 2>&1 &
wget -c -nc -r -np -nH --cut-dirs=1 -e robots=off -P source/gitbook https://book.crifan.com/books/ > gitbook.log 2>&1 &

wait
echo "------抓取完成------"

find source -name 'index.html' -print|grep -v website|grep -v htmls|grep -v webhelp|xargs rm -f

cd source/

cd gitbook/
echo "------$(pwd)------"
for file in $(ls -d *)
do
    if [ ! -d $file ]
    then
        continue
    fi
    if [ ! -f $file/pdf/$file.pdf ]
    then
        echo "[$file] pdf missing !"
    fi
    if [ ! -f $file/website/index.html ]
    then
        echo "[$file] html missing !"
    fi
done
cd ..

cd docbook/doc/docbook/
echo "------$(pwd)------"
for file in $(ls -d *)
do
    if [ ! -d $file ]
    then
        continue
    fi
    if [ ! -f $file/release/pdf/$file.pdf ]
    then
        echo "[$file] pdf missing !"
    fi
    if [ ! -f $file/release/html/$file.html ]
    then
        echo "[$file] html missing !"
    fi
    if [ ! -f $file/release/htmls/index.html ]
    then
        echo "[$file] htmls missing !"
    fi
done
