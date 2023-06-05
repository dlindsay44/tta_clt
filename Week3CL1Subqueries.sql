USE uni;

/*1. Obtain the average of full time fees from the Uni
database.*/
SELECT AVG(FullTimeFee)
FROM fees;

/*2. Obtain a list of fees where the full time fees are
above their calculated average.*/
SELECT *
FROM fees
WHERE FullTimeFee > (SELECT AVG(FullTimeFee) FROM fees);

--3. Sort the full time fees by ascending order.
SELECT FullTimeFee
FROM fees
ORDER BY FullTimeFee ASC;

/*List of fees where full time fees above calculate average
in ascending order.*/
SELECT *
FROM fees
WHERE FullTimeFee > (SELECT AVG(FullTimeFee) FROM fees)
ORDER BY FullTimeFee ASC;
