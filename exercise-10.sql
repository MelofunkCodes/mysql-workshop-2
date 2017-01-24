--1) How many Address Book Entries are listed as born before February 12th of 1982?
SELECT SUM(birthday <= "1982-02-12") AS `Entries born before February 12, 1982` FROM Entry; --outputs 2687 entries

--2) How many Address Book Entries are listed as born on or after January 1st of 1965?
SELECT SUM(birthday >= "1965-01-01") AS `Entries born on or after January 1, 1965` FROM Entry; --outputs 2597 entries


--3) Which Address Book Entry is listed as being the oldest of age?
SELECT MIN(birthday) FROM Entry;

SELECT * FROM Entry WHERE birthday = (SELECT MIN(birthday) FROM Entry); --outputs id = 2260, birthday "1945-09-02"