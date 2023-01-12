--- 1.How much is the total doantion?
SELECT SUM(donation) AS Total_Donation
FROM Donation_data;


---2.What is the total donation by gender?
SELECT gender, SUM(donation) AS Total_Doantions
FROM donation_data
GROUP BY gender;

---3.SHOW THE TOTAL DONATION AND NUMBER OF DONATION BY GENDER?
SELECT gender, SUM(donation) AS Total_Donation, Count(donation) AS Number_Of_Donation
FROM donor_data
JOIN donation_data
ON donation_data.id = donor_data.id
GROUP BY gender;

----4.TOTAL DONATION MADE BY FREQUENCY OF DONATION?
SELECT donation_frequency, SUM(donation) AS Total_Donation
FROM donor_data
JOIN donation_data
ON donation_data.id = donor_data.id
GROUP BY donation_frequency;

---5.TOTAL DONATION AND NUMBER OF DONATION BY JOB_FIELD.
SELECT job_field, SUM(donation) AS Total_donation, COUNT(donation) AS Number_Of_Donation
FROM donor_data
JOIN donation_data
ON donation_data.id = donor_data.id
GROUP BY job_field;

---6.TOTAL DONATION AND NUMBER OF DONATION ABOVE 200.
SELECT SUM(donation) AS Total_donation_Above_200, COUNT(donation) AS Number_of_Donation_Above_200
FROM donor_data
JOIN donation_data
ON donation_data.id = donor_data.id
WHERE donation > 200;

---7.TOTAL DONATION AND NUMBER OF DONATION BELOW 200.
SELECT SUM(donation) AS Total_donation_Below_200, COUNT(donation) AS Number_of_Donation_Below_200
FROM donor_data
JOIN donation_data
ON donation_data.id = donor_data.id
WHERE donation < 200;

---8.WHICH STATES CONTRIBUTE THE HIGHEST DONATION?
SELECT state, SUM(donation) AS Total_Donation
FROM donation_data
GROUP BY State
ORDER BY SUM(donation) DESC
LIMIT 10;

---9.WHICH STATES CONTRIBUTES THE LEAST DONATION?
SELECT state, SUM(donation) AS Total_Donation
FROM donation_data
GROUP BY state
ORDER BY SUM(donation) 
LIMIT 10;

---10.WHAT ARE THE TOP 10 CARS DRIVEN BY THE HIGHEST DONORS?
SELECT Car, SUM(donation) AS Total_Donation
FROM Donor_data
JOIN Donation_data 
ON Donation_data.id = Donor_data.id
GROUP BY Car
ORDER BY SUM(donatio) DESC
LIMIT 10;

