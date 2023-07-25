CREATE TABLE "customers"(
    "customers_id" SERIAL NOT NULL,
    "adults" INTEGER NOT NULL,
    "kids" INTEGER NOT NULL
);
ALTER TABLE
    "customers" ADD PRIMARY KEY("customers_id");
CREATE TABLE "concessions"(
    "concessions_id" SERIAL NOT NULL,
    "food" INTEGER NOT NULL,
    "snacks" INTEGER NOT NULL,
    "drinks" INTEGER NOT NULL
);
ALTER TABLE
    "concessions" ADD PRIMARY KEY("concessions_id");
CREATE TABLE "tickets"(
    "tickets_id" SERIAL NOT NULL,
    "kids_cost" INTEGER NOT NULL,
    "adults_cost" INTEGER NOT NULL,
    "online_booking" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "tickets" ADD PRIMARY KEY("tickets_id");
CREATE TABLE "movies"(
    "movies_id" SERIAL NOT NULL,
    "action" INTEGER NOT NULL,
    "horror" INTEGER NOT NULL,
    "comedy" INTEGER NOT NULL,
    "Fantasy" INTEGER NOT NULL,
    "romantic" INTEGER NOT NULL,
    "Anime" INTEGER NOT NULL
);
ALTER TABLE
    "movies" ADD PRIMARY KEY("movies_id");
CREATE TABLE "games"(
    "games_id" SERIAL NOT NULL,
    "racing" VARCHAR(50) NOT NULL,
    "basketball" VARCHAR(50) NOT NULL,
    "shooting" VARCHAR(50) NOT NULL
);
ALTER TABLE
    "games" ADD PRIMARY KEY("games_id");
ALTER TABLE
    "tickets" ADD CONSTRAINT "tickets_online_booking_foreign" FOREIGN KEY("online_booking") REFERENCES "concessions"("concessions_id");
ALTER TABLE
    "customers" ADD CONSTRAINT "customers_kids_foreign" FOREIGN KEY("kids") REFERENCES "games"("games_id");
ALTER TABLE
    "tickets" ADD CONSTRAINT "tickets_tickets_id_foreign" FOREIGN KEY("tickets_id") REFERENCES "concessions"("concessions_id");
ALTER TABLE
    "customers" ADD CONSTRAINT "customers_customers_id_foreign" FOREIGN KEY("customers_id") REFERENCES "movies"("movies_id");
ALTER TABLE
    "customers" ADD CONSTRAINT "customers_customers_id_foreign" FOREIGN KEY("customers_id") REFERENCES "concessions"("concessions_id");
ALTER TABLE
    "tickets" ADD CONSTRAINT "tickets_tickets_id_foreign" FOREIGN KEY("tickets_id") REFERENCES "movies"("movies_id");
ALTER TABLE
    "customers" ADD CONSTRAINT "customers_customers_id_foreign" FOREIGN KEY("customers_id") REFERENCES "tickets"("tickets_id");
