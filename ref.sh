# home
https://www.crifan.com/files/doc/docbook/
https://book.crifan.com/books/
https://crifan.github.io

# homepage
<a href="http://www.crifan.com" target="_blank" class="custom-link">主页</a>
<a class="link" href="http://crifan.com" target="_top">http://crifan.com</a>

find . -name '*.html' -type f -exec sed -E -i '' -e 's#<a href="http://www.crifan.com" target="_blank" class="custom-link">主页</a>#<a href="https://crifan.local" target="_blank" class="custom-link">主页</a>#g' {} \;
find . -name '*.html' -type f -exec sed -E -i '' -e 's#<a class="link" href="http://crifan.com" target="_top">http://crifan.com</a>#<a class="link" href="https://crifan.local" target="_top">https://crifan.local</a>#g' {} \;

# ref
http://crifan.com/files/doc/docbook/xxx/release/html/xxx.html
http://crifan.org/files/doc/docbook/xxx/release/html/xxx.html
http://www.crifan.com/files/doc/docbook/xxx/release/html/xxx.html
http://www.crifan.org/files/doc/docbook/xxx/release/html/xxx.html
https://book.crifan.org/books/xxx/website/
https://book.crifan.com/books/xxx/website/
https://crifan.github.io/xxx/website

/assets/website/xxx/

sed -E -i -e 's#https?://(book|www)?.?crifan.(com|org|github.io)/(files/doc/docbook/xxx/release/html/xxx.html|(books/)?xxx/website)/?#/assets/website/xxx/#g' file.txt

# source

http://crifan.com/files/doc/docbook/xxx/release/html/xxx.html
http://www.crifan.com/files/doc/docbook/xxx/release/html/xxx.html

https://www.crifan.com/files/doc/docbook/xxx/release/html/xxx.html.7z
https://www.crifan.com/files/doc/docbook/xxx/release/pdf/xxx.pdf.7z

## index
https://www.crifan.com/files/doc/docbook/xxx/release/html
https://www.crifan.com/files/doc/docbook/xxx/release/htmls
https://www.crifan.com/files/doc/docbook/xxx/release/html/pdf


# -----

https://book.crifan.org/books/xxx/website/
https://book.crifan.com/books/xxx/website/
https://crifan.github.io/xxx/website

https://book.crifan.org/books/xxx/pdf/xxx.pdf
https://book.crifan.com/books/xxx/pdf/xxx.pdf

## Rep
https://github.com/crifan/crifan.github.io/tree/master/xxx/website
https://github.com/crifan/crifan.github.io/tree/master/xxx/pdf

## index
https://book.crifan.com/books/xxx/website
https://book.crifan.org/books/xxx/website
https://book.crifan.com/books/xxx/pdf
https://book.crifan.org/books/xxx/pdf

# css
http://www.crifan.com/files/res/docbook/css/docbook_crl.css

/assets/css/docbook_crl.css

find . -name '*.html' -type f -exec sed -E -i '' -e "s#http://www.crifan.com/files/res/docbook/css/docbook_crl.css#/assets/css/docbook_crl.css#g" {} \;
