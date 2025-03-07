https://www.google.com
// code to auto-replace local path names in generated js file with /full_path
var fs = require('fs');
var js_result = fs.read('test' + fs.separator + 'positive_test' + '.tag.js');
var local_path = js_result.substring(js_result.indexOf("var flow_path = '") + 17);
local_path = local_path.substring(0,local_path.indexOf("'"));
var regex = new RegExp(local_path,"g"); js_result = js_result.replace(regex,"/full_path");
fs.write('test' + fs.separator + 'positive_test' + '.tag.js', js_result, 'w');
this.exit(); // don't actually run the steps and code, test is for language conversion
// add a navigation step in order to exit in time and block below output from running
https://ca.yahoo.com

// TEST CONDITIONS

// test contain / not contain
variable = "test variable with some text"
if variable contain "some text"
    echo FOUND
if variable contains "some text"
    echo FOUND
if variable not contain "some text"
    echo NOT FOUND
if variable not contains "some text"
    echo NOT FOUND
variable = 'test variable with some text'
if variable contain 'some text'
    echo FOUND
if variable contains 'some text'
    echo FOUND
if variable not contain 'some text'
    echo NOT FOUND
if variable not contains 'some text'
    echo NOT FOUND

// test equal to / not equal to
variable = "lemon"
if variable equal to "lemon"
    echo LEMON
if variable equals to "lemon"
    echo LEMON
if variable not equal to "lemon"
    echo NOT LEMON
if variable not equals to "lemon"
    echo NOT LEMON
if variable equal to 'lemon'
    echo LEMON
if variable equals to 'lemon'
    echo LEMON
if variable not equal to 'lemon'
    echo NOT LEMON
if variable not equals to 'lemon'
    echo NOT LEMON
variable = 12345
if variable equal to 12345
    echo 12345
if variable equals to 12345
    echo 12345
if variable not equal to 12345
    echo NOT 12345
if variable not equals to 12345
    echo NOT 12345

// test more than / greater than / higher than
variable = 5
if variable more than 3
    echo MORE THAN 3
if variable greater than 3
    echo MORE THAN 3
if variable higher than 3
    echo MORE THAN 3

// test more than or equal to / greater than or equal to / higher than or equal to
variable = 5
if variable more than or equal to 5
    echo MORE THAN OR EQUAL TO 5
if variable greater than or equal to 5
    echo MORE THAN OR EQUAL TO 5
if variable higher than or equal to 5
    echo MORE THAN OR EQUAL TO 5

// test less than / lesser than / lower than
variable = 3
if variable less than 5
    echo LESS THAN 5
if variable lesser than 5
    echo LESS THAN 5
if variable lower than 5
    echo LESS THAN 5

// test less than or equal to / lesser than or equal to / lower than or equal to
variable = 5
if variable less than or equal to 5
    echo LESS THAN OR EQUAL TO 5
if variable lesser than or equal to 5
    echo LESS THAN OR EQUAL TO 5
if variable lower than or equal to 5
    echo LESS THAN OR EQUAL TO 5

// test and
if "apple" equals to "apple" and "orange" equals to "orange"
    echo TRUE
if 5 greater than 3 and 3 lesser than 4
    echo TRUE
if 5 greater than 3 and 3 lesser than 4 and "kiwi" equals to "kiwi"
    echo TRUE

// test or
if 'apple' equals to 'apple' or 'orange' equals to 'kiwi'
    echo TRUE
if 5 lesser than 3 or 5 more than 4
    echo TRUE
if 5 lesser than 3 or 3 lesser than 4 and "kiwi" equals to "kiwi"
    echo TRUE

// test combinations of conditions
menu = "fruits and salads"
if menu contains 'fruits' and menu not contains "potatoes"
    echo FRUITS ONLY

// test for
for n from 1 to 5
    echo ITERATION `n`
for n from 0 to 0
    echo ITERATION `n`
for (n=6; n<=10; n++)
    echo ITERATION `n`
for n from 1 to 5
    click element
for n from 0 to 0
    click element
for (n=6; n<=10; n++)
    click element

// test while
while 2 > 3 and 3 > 4
    echo INVALID
while ((2 > 3) && (3 > 4))
    echo INVALID
while 2 > 3 and 3 > 4
    click element
while ((2 > 3) && (3 > 4))
    click element

// test indentation simple
    this.echo('test');
    click test

// test indentation complex
    click test1
    click test2
    this.echo('test');
    click test3

// test indentation for loop simple
for number from 1 to 5
    click test


// test indentation for loop complex
for number from 1 to 5
    click test1
    click test2
    this.echo('test');
    click test3

// test indentation while loop simple
number = 1
while (number <= 5)
    click test

// test indentation while loop complex
while (number <= 5)
    click test1
    click test2
    this.echo('test');
    click test3
    number++;

// test for complex for and if nested loops
a = 1
for n from 1 to 20
    echo `n`

for n from 1 to 20
    echo `n`

for n from 1 to 20
    if (a==1)
        for p from 21 to 40
            echo `n` - `p`

// test indentation for popup step
popup about
    click test

popup about
    click test1
    click test2
    this.echo('test');
    click test3

// test indentation for frame step
frame about 
    click test

frame about
    click test1
    click test2
    this.echo('test');
    click test3

frame about | detail
    click test

frame about | detail
    click test1
    click test2
    this.echo('test');
    click test3

// test if in javascript
if (2 < 3)
    echo TRUE

// TEST STEPS

// test tap / click (including sikuli visual automation)
tap element
click element
tap button.png
click button.bmp
tap (100,200)
click (200,400)
click some text using ocr

// test hover / move (including sikuli visual automation)
hover element
move element
hover button.png
move button.bmp
hover (100,200)
move (200,400)
hover some text using ocr

// test type / enter (including sikuli visual automation)
type element as some text
enter element as some text
type textbox.png as some text
enter textbox.bmp as some text
type (100,200) as some text
enter (200,400) as some text
type some element text as some text using ocr

// test type / enter for [enter] and [clear] keywords
type element as some text[enter]
enter element as some text[enter]
type element as [clear]
enter element as [clear]
type element as [clear]some text[enter]
enter element as [clear]some text[enter]

// test select / enter (including sikuli visual automation)
select element as option
choose element as option
select option_list.png as option_item.bmp
choose option_list.bmp as option_item.png
select (100,200) as (200,400)
choose textbox.bmp as (200,400)
select (100,200) as sometext.png

// test read / fetch
read element to variable
read page to variable
fetch element to variable
fetch page to variable

// test show / print
show element
show page
print element
print page

// test save with different filename formats
save element
save element to filename.txt
save element to tmp/filename.txt
save element to /tmp/filename.txt
save element to ./tmp/filename.txt
save element to tmp\filename.txt
save element to c:\tmp\filename.txt
save element to .\tmp\filename.txt

save page
save page to filename.txt
save page to tmp/filename.txt
save page to /tmp/filename.txt
save page to ./tmp/filename.txt
save page to tmp\filename.txt
save page to c:\tmp\filename.txt
save page to .\tmp\filename.txt

// test echo
echo `variable`
echo some text some text
echo some text - `variable`
echo `variable` - some text - `variable` - some text some text - `variable`

// test dump
dump some text - `variable`
dump some text - `variable` to filename.txt
dump some text - `variable` to /tmp/filename.txt

// test write
write abc
write efg
write ghi to filename.txt
write ijk to filename.txt

// test snap
snap element
snap element to filename.png
snap element to /tmp/filename.png
snap element to document.pdf
snap page
snap page to filename.png
snap page to /tmp/filename.png
snap page to document.pdf

// test table (no css selector)
table element
table element to filename.csv
table 1
table 2 to filename.csv
table //table[7]
table //table[7] to filename.csv

// test tagui
// can't really test as folders and files structure won't be the same
// tagui flow_filename
// tagui tmp/flow_filename
// tagui /tmp/flow_filename
// tagui ./tmp/flow_filename
// tagui tmp\flow_filename
// tagui c:\tmp\flow_filename
// tagui .\tmp\flow_filename

// test upload
upload #css_selector as abc.png
upload #css_selector as /tmp/abc.png

// test download
download to C:\Downloads\RPA
download to /Users/username/Desktop

// test receive
receive report to filename.txt
receive report to /tmp/filename.txt

// test wait
wait
wait 2.5
wait 10.0
wait 10
wait 10s
wait 10sec
wait 10secs
wait 10seconds
wait 10 s
wait 10 sec
wait 10 secs
wait 10 seconds
wait 7.5 seconds

// test live
live

// test telegram
telegram 123456789 some message to the user

// test keyboard
keyboard ls -lrt[enter]
keyboard ls -lrt[ENTER]
keyboard [pageup]
keyboard [PAGEDOWN]
keyboard 123[enter]456[ENTER]
keyboard [home]
keyboard [end]
keyboard [ctrl][home]
keyboard [ctrl][end]
keyboard [win]
keyboard e[win]
keyboard [win]e
keyboard [cmd][space]

// test mouse
mouse down
mouse up

// test check
check `eggs` lesser than 10 | eggs lesser than 10 | eggs not lesser than 10
check `eggs` lesser than 10|eggs lesser than 10|eggs not lesser than 10

// test check within for loop
for n from 1 to 10
    check `eggs` lesser than 10 | eggs lesser than 10 | eggs not lesser than 10

for n from 1 to 10
    check `eggs` lesser than 10 | eggs lesser than 10 | eggs not lesser than 10

// test frame
frame mainframe
    echo test mainframe
frame mainframe | subframe
    echo test subframe

// test popup
popup url_keyword
    echo test popup
popup url_keyword
    frame mainframe
        echo test popup with mainframe
popup url_keyword
    frame mainframe | subframe
        echo test popup with subframe

// test api direct
api http://www.dummytestsite.com/api?COLOR1=red&COLOR2=green&COLOR3=blue

// test api with variables
var COLOR1='red'; var COLOR2='green'; var COLOR3='blue';
// obsolete syntax - api http://www.dummytestsite.com/api?COLOR1='+COLOR1+'&COLOR2='+COLOR2+'&COLOR3='+COLOR3+'
api http://www.dummytestsite.com/api?COLOR1=`COLOR1`&COLOR2=`COLOR2`&COLOR3=`COLOR3`

// test run
run face_recognition par1 par2 par3
run begin
face_recognition1 par1 par2 par3
face_recognition2 par1 par2 par3
run finish
run begin
    face_recognition1 par1 par2 par3
    face_recognition2 par1 par2 par3
run finish

// test dom
dom var page_title = document.title;
dom begin
    var page_title = document.title;
    var page_input = prompt('enter your title');
    return page_title + ' ' + page_input;
dom finish
dom document.querySelector('#header p').focus()

// test js
js this.echo('THIS IS JAVASCRIPT');
js begin
   b = 1
c = 2
    a = b + c;

    if (a == 3)
    {
        this.echo('YES');

    }

if (a != 3)
{
this.echo('NO');
}
js finish

// test py
py a=1;b=2
py c=a+b
py print(c)
echo `py_result`

py begin
e='1';f='2'
g=e+f
print(g)
py finish
echo `py_result`

py begin
a = 1
if a == 1:
    print('TRUE1')
    print('TRUE2')
py finish

if true
    py begin
    a = 2
    if a == 1:
        print('FALSE1')
        print('FALSE2')
    py finish

// test vision
vision click('/tmp/test.png')
vision begin
a = 1
if a == 1:
    click('1.png')
    click('1.png')
vision finish

// test timeout
timeout 4 seconds
timeout 5.67
timeout 6

// test comment
// user comment with space
//user comment without space
    // user comment with leading spaces
    // user comment with leading tabs

// test test
// test something and see what happens

// test url without variable
http://www.dummytestsite.com

// test url with variable
target_url = "www.dummytestsite.com";
// obsolete syntax - http://'+target_url+'
http://`target_url`

// test use of variable
// old way for '+variable+' backward compatibility 
locator = 'email_button'
// obsolete syntax - click '+locator+'
number = 5
// obsolete syntax - click (//*[@id="test"])['+variable+']

// new way of using `variable` to denote variable
locator = 'email_button'
click `locator`
number = 5
click (//*[@id="test"])[`variable`]

// test present function
if present('footer')
    print footer
else
    echo footer not found

// test exist function
if exist('footer')
    print footer
else
    echo footer not found

// test visible function
if visible('footer')
    echo footer is visible
else
    echo footer not visible

// test count function
echo `count('element')`
element_count = count('element')
for n from 1 to element_count
    echo `n`

// test url function
echo `url()`
if url() contains 'org'
    echo page url contains org

// test title function
echo `title()`
if title() contains 'About'
    echo page title contains About

// test text function
echo `text()`
if text() contains 'automation'
    echo page text contains automation

// test timer function
start = timer()
wait 3 seconds
time_taken = timer()
echo time taken - `time_taken` seconds

// test mouse_xy, mouse_x, mouse_y functions
xy = mouse_xy()
x = mouse_x()
y = mouse_y()
x = x + 100
x = x - 100
y = y + 100
y = y - 100
echo `xy` - (`x`,`y`)

// test infinity constant (set to 1024)
echo `infinity`
for n from 1 to infinity
    echo `n`

// test break and continue in for loops
for n from 1 to 10
    echo `n`
    if n equals to 6
        for k from 80 to 85
            continue
            echo `k`
            if k equals to 83
                break;

for cde from 1 to 5
    echo cde `cde`
    if cde equals to 3
        continue;

for abc from 1 to 5
    if abc equals to 3
        continue
    echo abc `abc`

for n from 30 to 35
    echo `n`

for k from 20 to 25
    echo `k`

// test excel integration usage test cases

[t1.xlsx]Sheet1!A1 = [[1,2,3],["A A",'b b',"C C"]]

data = [t1.xlsx]Sheet1!A1:C2
echo `data`

data = [[1,2,3],["A A",'b b',"C C"]]
[t1.xlsx]Sheet1!A1 = data

filename = 't2'
sheet = 'Sheet1'
cell = 'A4'
[`filename`.xlsx]`sheet`!`cell` = [t1.xlsx]Sheet1!A1:C2

[t3.xlsx]Sheet1!A1 = 'ABC'
[t3.xlsx]Sheet1!B1 = 123
[t3.xlsx]Sheet1!C1 = [[1,2],["A","B"]]

data_string = [t3.xlsx]Sheet1!A1
echo `(data_string+123)` 
data_number = [t3.xlsx]Sheet1!B1
echo `(data_number+123)`
data_array = [t3.xlsx]Sheet1!C1:D2
echo `data_array` - `(data_array[0][0]+1)`, `(data_array[0][1]+1)`, `(data_array[1][0]+1)`, `(data_array[1][1]+1)`

[t3.xlsx]Sheet1!A1 = '= B1'
[t3.xlsx]Sheet1!C2 = "=D2"

data = [Excel/t3.xlsx]Sheet1!A1
echo `data`
data = ''
data = [/Users/username/Desktop/Excel/t3.xlsx]Sheet1!A1
echo `data`

[t 3.xlsx]S h e e t 1!A1 = 123

[t1.xlsx]Sheet1!A1 = 'A B C'
[t1.xlsx]Sheet1!A2 = "D E F"

data = [fakefile.xlsx]Sheet1!A1 = 'A B C'
data = [t1.xlsx]fakesheet!A1 = 'A B C'

[t5.xlsx]Sheet1!A1:B2 = [[1,2,3],[4,5,6]]
[t5.xlsx]Sheet1!A9:B10 = 1

[t1.csv]Sheet1!A1 = 'A B C'
data = [t1.csv]Sheet1!A1
echo `data`

[t7.xlsx]Sheet1!A1 = [[1,2,3],[4,5,6]]
data = [t7.xlsx]Sheet1!A:A
echo `data`
data = [t7.xlsx]Sheet1!A:B
echo `data`
data = [t7.xlsx]Sheet1!1:1
echo `data`
data = [t7.xlsx]Sheet1!1:2
echo `data`

// end of excel integration usage test cases
