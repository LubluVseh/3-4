1. 
program grisha_2_1;
var b:real;
    a,i:integer;
Begin
  for a:=1 to 20 do begin
    b:=a*2.54;
    writeln(a, ' дюймов ','это ',b,' сантиметров');
    end
end.


2.
program grisha_2_2;
var i,j:integer;
Begin
  for j:=1 to 10 do begin
    i:=i+1;
    for i:=i to i+9 do 
    write(sqr(i):6);
    writeln();
  end;
end.
Получено:
     1     4     9    16    25    36    49    64    81   100
   121   144   169   196   225   256   289   324   361   400
   441   484   529   576   625   676   729   784   841   900
   961  1024  1089  1156  1225  1296  1369  1444  1521  1600
  1681  1764  1849  1936  2025  2116  2209  2304  2401  2500
  2601  2704  2809  2916  3025  3136  3249  3364  3481  3600
  3721  3844  3969  4096  4225  4356  4489  4624  4761  4900
  5041  5184  5329  5476  5625  5776  5929  6084  6241  6400
  6561  6724  6889  7056  7225  7396  7569  7744  7921  8100
  8281  8464  8649  8836  9025  9216  9409  9604  9801 10000
 
3.
program grisha_2_3;
var i:integer;
Begin
  for i:=2 to 99 do 
    if i mod 2 = 0 then
      write(i:3);
end.

Получено:
  2  4  6  8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40 42 44 46 48 50 52 54 56 58 60 62 64 66 68 70 72 74 76 78 80 82 84 86 88 90 92 94 96 98

4.
program grisha_2_4;
var i,a:integer;
Begin
  for i:=4 to 37 do 
    a:=a+sqr(i);
  writeln(a);
end.

Получено:
17561

5.
program grisha_2_5;
var i,a:integer;
Begin
  writeln('Введите число');
  readln(a);
  for i:=a downto 1 do 
    if a mod i = 0 then
      write(i:8);
end.
Введено: 32767
Получено    32767    4681    1057     217     151      31       7       1

6.
program grisha_2_6;
var i,a,b:integ
er;
Begin
  writeln('Введите число');
  readln(a);
  for i:=a downto 1 do 
    if a mod i = 0 then
      b:=b+1;
  writeln('Количество натуральных делителей равно ',b);
end.

Введено: 10
Получено    4



7.
program grisha_2_7;
var i,y,h,lgr,rgr:real;
Begin
  writeln('Задайте левую границу');
  readln(lgr);
  writeln('Задайте правую границу');
  readln(rgr);
  writeln('Задайте шаг');
  read(h);
  if h=0 then
    writeln('Шаг равен нулю');
  if h<>0 then begin
  if lgr<=rgr then begin //Проверка на дурака
    if h>0 then begin
    i:=lgr;
    while i <=rgr do begin
      y:=3*i*i-exp(i*(ln(2)));
      write(y:4);
      i:=i+h;
      end;
    if h<0 then begin
    i:=rgr;
    while i >=lgr do begin
      y:=3*i*i-exp(i*(ln(2)));
      write(y:4);
      i:=i+h;
      end;
      end;
  end;
  end
  else
    writeln('Левая граница больше правой');
  end;
end.

 
8.
program grisha_2_8;
var i,n:integer;
    a:real;
Begin
  a:=1;
  writeln('Введите число');
  readln(n);
  if n<5 then
    writeln('Значение числа не удовлетворяет условию')
  else 
    for i:=2 to n do
      a:=a+1/i;
  writeln(a);
end.
Введено: 5
Получено   2.28333333333333

9.
program grisha_2_9;
var i,n:integer;
    a:real;
Begin
  a:=1;
  writeln('Введите число');
  readln(n);
  if n<5 then
    writeln('Значение числа не удовлетворяет условию')
  else 
    for i:=2 to n do
      a:=a*(1/i);
  writeln(a);
end.
Введено: 5
Получено   0.00833333333333333


10.
program grisha_2_10;
var i,n,d,a,b:integer;
Begin
  for i:=013013 to 999999 do begin
    a:=i div 100000+(i div 10000) mod 10+((i div 1000) mod 10) mod 10;
    b:=(i mod 1000) div 100 +(i mod 100) div 10+i mod 10;
    if (a=b) and (a=13) then
      d:=d+1;
  end;
  writeln('Количество супер-счастливых чисел равно ',d);
end.
Количество супер-счастливых чисел равно 5625

11.
program grisha_2_11;
var i,d,n:integer;
Begin
  d:=1;
  writeln('Введите число');
  readln(n);
  for i:=1 to n do
    d:=d*i;
  writeln('Факториал числа равен ',d);
end.
Введено: 5
Получено   Факториал числа равен 120

12.

program grisha_2_12;
var i,d1,d2,lgr,rgr:integer;
Begin
  d1:=1;
  writeln('Задайте левую границу');
  readln(lgr);
  writeln('Задайте правую границу');
  readln(rgr);
  for i:=lgr to rgr do begin
    if i mod 2 = 0 then 
      d1:=d1*i;
    if i mod 2 <> 0 then 
      d2:=d2+i;
  end;
  writeln('Сумма нечетных в заданном промежутке равна ',d2);
  writeln('Произведение четных в заданном промежутке равно ',d1);
end.
Введено: 5 10
Получено   Сумма нечетных в заданном промежутке равна 21
Произведение четных в заданном промежутке равно 480

13.
program grisha_2_13;
var i,n:integer;
    s:real;
Begin
  n:=3;
  s:=3;
  for i:=1 to 9 do begin 
    n:=n+6;
    s:=s+n;
    end;
  writeln('Среднее арифметическое равно ',s/10);
end.
Получено 30

14.
program grisha_2_14;
var i,n,a:integer;
    s:real;
Begin
  writeln('Введите количество вводимых цифр');
  readln(n);
  if n>0 then begin
  writeln('Введите число');
  for i:=1 to n do begin
    readln(a);
    s:=s+a;
  end;
  writeln('Среднее арифметическое равно ', s/n); 
end
else
writeln('Мало чисел, капитан ');
end.
Введено: 5 1 2 3 4 5
Получено 3

15. 
program grisha_2_15;
var i,n,a,sum,c,pr:integer;
Begin
  pr:=1;
  writeln('Введите число');
  readln(a);
  n:=abs(a);
  while n<>0 do begin
    i:=n mod 10;
    c:=c+1;
    sum:=sum+i;
    pr:=pr*i;
    n:=n div 10;
  end;
  writeln('В числе ',c,' цифр(а/ы)');
  writeln('Произведение цифр числа равно ',pr);
  writeln('Сумма цифр числа равна ',sum);
end.
Введено: 123  
Получено 3 6 6

16. 
var n,i:integer;
begin
repeat
write('Введите натуральное число >0 n=');
read(n);
until n>0;
if n=1 then write('Простых множителей нет')
else
begin
write(n,'=');
i:=2;
while i<=n do
begin
while n mod i=0 do
begin
if i<n then write(i,'*')
else write(i);
n:=n div i;
end;
i:=i+1;
end;
end;
end.
Введено: 123  
Получено 123=3*41

 
17.
program grisha_2_17;
var n,i,b:integer;
Begin
  b:=2;
  writeln('Введите количество минут');
  readln(n);
  for i:=2 to n do
    b:=sqr(b);
  writeln('Количество бактерий будЭ ',b);
end.
 
Введено: 3
Получено 16


18.
program grisha_2_18;
var n,i:integer;
    x,y,z:real;
Begin
  writeln('Введите x');
  readln(x);
  writeln('Введите y');
  readln(y);
  for i:=1 to 10 do 
    z:=z+i*exp(ln(x*y)/i);
  writeln('Результат ',z);
end.

Введено: 3 3
Получено Результат 88.6369103002062

19.
program grisha_2_19;
var n,i:integer;
Begin
  writeln('Введите число');
  readln(i);
  while i<>0 do begin
    write(i mod 10);
    i:= i div 10;
  end;
end.
Введено: 228
Получено 822

20.
program grisha_2_20;
var n,i,k:integer;
    s:string;
Begin
  writeln('Введите число');
  readln(i);
  writeln('Задайте систему счисления');
  readln(n);
  while i <> 0 do begin
    s:=i mod n+s;
    i:=i div n;
  end;
  writeln('Число в заданной системе счисления ',s);
end.
Введено: 46 2
Получено 101110

21.
program grisha_2_20;
var n,i,k,c:integer;
    s,o:real;
Begin
  writeln('Введите число');
  readln(n);
  writeln('Введите изначальную систему счисления');
  readln(o);
  k:=n;
  while n<>0 do begin
    c:=c+1;
    n:=n div 10;
   end;
   for i:=0 to c-1 do begin
     n:=k mod 10;
     s:=s+n*exp(i*ln(o));
     k:=k div 10;
   end;
   writeln(s);
end.
Введено: 1201 3 
Получено
