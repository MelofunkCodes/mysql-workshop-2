SELECT COUNT(*) FROM Account; -- shows 1000 Accounts

SELECT COUNT(*) FROM AddressBook; --1100 AddressBooks

--How many AddressBook Entries?
SELECT addressBookId, COUNT(*) FROM Entry GROUP BY addressBookId;
    
SELECT
    AddressBook.name,
    Entry.addressBookId,
COUNT(*) FROM Entry
    JOIN AddressBook ON Entry.addressBookId = AddressBook.id GROUP BY Entry.addressBookId; --outputs in 3 columns: name of address book, address book id, and the number of entries tied to each address book
