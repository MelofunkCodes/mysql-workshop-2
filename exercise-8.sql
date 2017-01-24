--What is the email of the Account identified by "63"?
SELECT email FROM Account WHERE id = 63;


--What are the names of the AdressBooks belonging to accountId "3"?
SELECT * FROM AddressBook WHERE accountId = 3;


--On which date was the AddressBook titled “Lorem Foundation” created?
SELECT * FROM AddressBook WHERE name = "Lorem Foundation";
  --there are 2 AddressBook's with the same name, but belonging to different accounts