
/*CREATE TABLE AxisBank_customer (
    customer_id INT PRIMARY KEY,
    customerName VARCHAR(50),
    credit_limit DECIMAL(10, 2),   			
    applicable VARCHAR(5),
    cvv INT,
    expiry_date DATE,
    kyc_status VARCHAR(20),
    state VARCHAR(50)
);*/

INSERT INTO AxisBank_customer (customer_id, customerName, credit_limit, applicable, cvv, expiry_date, kyc_status, state)
VALUES 
(1, 'Mansi Mahale', 600000, 'Yes', 123, '2026-03-28', 'Verified', 'Maharashtra'),
(2, 'Sathvika Middela', 200000, 'Yes', 562, '2026-04-24', 'Unverified', 'Andhra Pradesh'),
(3, 'Bhabani Shankar', 700000, 'No', 745, '2027-02-26', 'Verified', 'Odisha'),
(4, 'Shubhadip Paul', 800000, 'Yes', 456, '2025-09-22', 'Verified', 'West Bengal'),
(5, 'Rakesh Ambala', 350000, 'No', 234, '2028-02-10', 'Unverified', 'Telangana'),
(6, 'Dipty Saha', 70000, 'Yes', 678, '2026-04-22', 'Verified', 'West Bengal'),
(7, 'Supriya Tungar', 90000, 'Yes', 789, '2025-10-20', 'Verified', 'Maharashtra'),
(8, 'Ashwini Salwadgi', 300000, 'No', 234, '2023-10-10', 'Unverified', 'Karnataka'),
(9, 'Rutuja Gite', 65000, 'Yes', 901, '2027-10-24', 'Verified', 'Maharashtra'),
(10, 'Sayali Tile', 55000, 'Yes', 332, '2028-02-20', 'Unverified', 'Maharashtra'),
(11, 'Bhagyashree Nikam', 80000, 'Yes', 491, '2025-07-10', 'Verified', 'Maharashtra'),
(12, 'Harshada Chitode', 90000, 'Yes', 527, '2026-10-20', 'Verified', 'Maharashtra'),
(13, 'Monika Vishwakarma', 45000, 'Yes', 832, '2026-02-10', 'Unverified', 'Madhya Pradesh'),
(14, 'Swati Tile', 40000, 'Yes', 423, '2028-02-20', 'Verified', 'Maharashtra'),
(15, 'Niraj Deshmukh', 30000, 'No', 761, '2025-03-26', 'Unverified', 'Maharashtra'),
(16, 'Pranav Meshram', 100000, 'Yes', 589, '2027-08-20', 'Verified', 'Maharashtra'),
(17, 'Ashish More', 35000, 'Yes', 653, '2028-09-01', 'Verified', 'Maharashtra'),
(18, 'Ishwar Shah', 75000, 'Yes', 788, '2025-02-21', 'Verified', 'Gujarat'),
(19, 'Hrishikesh Davalkar', 45000, 'Yes', 199, '2026-03-03', 'Unverified', 'Maharashtra'),
(20, 'Mandar Mahale', 50000, 'Yes', 328, '2027-01-06', 'Verified', 'Maharashtra');

SELECT * FROM AxisBank_customer; 

SELECT * FROM AxisBank_customer WHERE kyc_status = 'Verified';

 /*3. Calculate the total credit limit balance for customers with KYC status "Verified"*/
SELECT SUM(credit_limit) AS Total_Balance FROM AxisBank_customer WHERE kyc_status = 'Verified';


/*4. Calculate the average credit limit for customers from a specific state (replace 'state_name' with the desired state)  // Satvika You will do*/ 
SELECT AVG(credit_limit) AS Average_Credit_Limit FROM AxisBank_customer WHERE state = 'Maharashtra';

/*SELECT CEIL(AVG(credit_limit)) AS Average_Credit_Limit
FROM AxisBank_customer
WHERE state = 'Maharashtra';*/

/*SELECT ROUND(AVG(credit_limit), 0) AS Average_Credit_Limit
FROM AxisBank_customer
WHERE state = 'Maharashtra';*/

-- 5. Display the name of customers who have a credit limit greater than 45000
SELECT customerName FROM AxisBank_customer WHERE credit_limit > 45000;

-- 6. Display names of customers with an expiry date after 2025 and a credit limit greater than 50000     // 5 and 6 will be done by Bhabani.
SELECT customerName 
FROM AxisBank_customer 
WHERE expiry_date > '2025-12-31' AND credit_limit > 50000;


