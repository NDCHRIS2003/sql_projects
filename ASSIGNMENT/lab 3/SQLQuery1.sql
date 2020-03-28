SELECT InvoiceID, InvoiceNumber, InvoiceTotal, PaymentTotal, CreditTotal
       FROM Invoices 
	   WHERE PaymentTotal <> '0' OR CreditTotal <> '0';

SELECT VendorID, VendorName, VendorCity, VendorState
       FROM vendors 
	   WHERE VendorState IN ('AZ', 'NJ', 'NV','OH')  

SELECT InvoiceID, VendorID,InvoiceDate, InvoiceTotal
       FROM Invoices 
	   WHERE VendorID = 123 and InvoiceDate < '2016-01-01'
	   ORDER BY InvoiceDate;

SELECT * FROM GlAccounts
        WHERE AccountDescription like'Book[^s]%'

SELECT  VendorID, VendorName, VendorPhone, VendorContactFName, VendorContactLName, VendorContactFName +',' + '' + VendorContactLName AS VendorContact
        FROM Vendors
		WHERE VendorPhone is NULL

SELECT DISTINCT InvoiceLineItemDescription FROM InvoiceLineItems
       WHERE InvoiceLineItemDescription LIKE 'C%'