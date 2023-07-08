﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/nRe0XP
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "contacts" (
    "contact_id" integer   NOT NULL,
    "first_name" varchar(30)   NOT NULL,
    "last_name" varchar(30)   NOT NULL,
    "email" varchar(70)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "campaign" (
    "cf_id" integer   NOT NULL,
    "contact_id" integer   NOT NULL,
    "company_name" varchar(80)   NOT NULL,
    "description" varchar(80)   NOT NULL,
    "goal" varchar(30)   NOT NULL,
    "pledged" varchar(30)   NOT NULL,
    "outcome" varchar(30)   NOT NULL,
    "backers_count" integer   NOT NULL,
    "country" varchar(80)   NOT NULL,
    "currency" varchar(30)   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" char(4)   NOT NULL,
    "subcategory_id" varchar(8)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "category" (
    "category_id" char(4)   NOT NULL,
    "category" varchar(30)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" varchar(8)   NOT NULL,
    "subcategory" varchar(30)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");

SELECT * FROM campaign;
SELECT * FROM category;
SELECT * FROM contacts;
SELECT * FROM subcategory;



