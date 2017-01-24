--1) How many Address Book Entries are not listed as other?
SELECT SUM(type != "other") AS `Entries not listed as other` FROM Entry; --outputs 2800

SELECT COUNT(*) FROM Entry WHERE type != "other"; --ouputs 2800
    --this makes more logical sense

 

--2) How many Address Book Entries are listed as either home or work?
SELECT SUM(type = "home" OR type = "work") as `Home or Work Entries` FROM Entry; --outputs 2800

SELECT COUNT(*) FROM Entry WHERE type = "home" OR type = "work"; -- second way of doing it, more logical

--3) How many Address Book Entries are listed as phones?
SELECT COUNT(*) FROM Entry WHERE subtype = "phone"; --outputs 600
