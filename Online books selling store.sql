CREATE TABLE "customers" (
  "id" integer PRIMARY KEY,
  "first_name" varchar(50),
  "second_name" varchar(50),
  "details" varchar(50)
);

CREATE TABLE "books" (
  "id" integer PRIMARY KEY,
  "title" varchar(50),
  "author" varchar(50),
  "price" decimal(10,2)
);

CREATE TABLE "sales" (
  "id" integer PRIMARY KEY,
  "date" date,
  "total_amount" decimal(10,2)
);

CREATE TABLE "customer_books_sales" (
  "id" integer PRIMARY KEY,
  "customers_id" integer,
  "books_id" integer,
  "sales_id" integer,
  "quantity" integer,
  "sales_price" decimal(10,2)
);

ALTER TABLE "customer_books_sales" ADD FOREIGN KEY ("customers_id") REFERENCES "customers" ("id");

ALTER TABLE "customer_books_sales" ADD FOREIGN KEY ("books_id") REFERENCES "books" ("id");

ALTER TABLE "customer_books_sales" ADD FOREIGN KEY ("sales_id") REFERENCES "sales" ("id");
