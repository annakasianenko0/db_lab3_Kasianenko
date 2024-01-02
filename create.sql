{\rtf1\ansi\ansicpg1252\cocoartf2513
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 drop table if exists book_author;\
drop table if exists author;\
drop  table if exists book;\
drop table if exists format;\
drop table if exists category;\
\
\
\
CREATE TABLE author\
(\
  author_id INT NOT NULL,\
  name VARCHAR NOT NULL,\
  birthday_date DATE NOT NULL,\
  PRIMARY KEY (author_id)\
);\
\
\
CREATE TABLE format\
(\
  format_id INT NOT NULL,\
  name VARCHAR NOT NULL,\
  PRIMARY KEY (format_id),\
  UNIQUE (name)\
);\
\
CREATE TABLE category\
(\
  category_id INT NOT NULL,\
  name VARCHAR NOT NULL,\
  PRIMARY KEY (category_id),\
  UNIQUE (name)\
);\
\
CREATE TABLE book\
(\
  name VARCHAR NOT NULL,\
  isbn VARCHAR NOT NULL,\
  rating INT NOT NULL,\
  book_id INT NOT NULL,\
  format_id INT NOT NULL,\
  category_id INT NOT NULL,\
  PRIMARY KEY (book_id),\
  FOREIGN KEY (format_id) REFERENCES format(format_id),\
  FOREIGN KEY (category_id) REFERENCES category(category_id),\
  UNIQUE (isbn)\
);\
\
\
CREATE TABLE book_author\
(\
  book_id INT NOT NULL,\
  author_id INT NOT NULL,\
  PRIMARY KEY (book_id, author_id),\
  FOREIGN KEY (book_id) REFERENCES book(book_id),\
  FOREIGN KEY (author_id) REFERENCES author(author_id)\
);}