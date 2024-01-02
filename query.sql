{\rtf1\ansi\ansicpg1252\cocoartf2513
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 --\uc0\u1079 \u1072 \u1087 \u1080 \u1090  1\
--select b.name as "Book name", a.name as "Author name", a.birthday_date  from book b\
--inner join book_author ba on b.book_id = ba.book_id\
--inner join author a on a.author_id = ba.author_id\
--where a.birthday_date > date('12/31/1972')\
\
--\uc0\u1079 \u1072 \u1087 \u1080 \u1090  2\
--select a.name, b.rating from book b\
--inner join book_author ba on b.book_id = ba.book_id\
--inner join author a on a.author_id = ba.author_id\
--where b.rating = (select max(rating) from book)\
\
--\uc0\u1079 \u1072 \u1087 \u1080 \u1090  3\
--select b.name from book b\
--inner join category c on b.category_id  = c.category_id\
--where c.name  <> 'horror'}