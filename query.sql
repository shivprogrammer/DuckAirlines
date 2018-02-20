---------------------------- A Query for Qualified Pilots ---------------------------------
SELECT flight_date FROM pilot_logs ORDER BY flight_date DESC;

-- so, because even though the pilot could be able to legal to fly by the time planes take off, he may not be legal to fly by the time that the flight lands due to the duration of the flight.
-- therefore, we need to figure out when the flight ended. The pilot's log table holds information about the duration of the flight, in tenths of an hour.

SELECT flight_date, duration, DATE_ADD(flight_date, INTERVAL duration HOUR) AS flight_end_time
FROM pilot_logs ORDER BY flight_date DESC;

-- But, this isn't that helpful because we don't have the names of the pilots associated with the table information
-- So, to add their names to the table:
SELECT first_name, last_name, flight_date, duration, DATE_ADD(flight_date, INTERVAL duration HOUR) AS flight_end_time
FROM pilot_logs
JOIN crew ON crew.crew_id = pilot_logs.crew_id
ORDER BY flight_date DESC;

--------------------------- A Query for the Acceptable Planes ------------------------------
SELECT (ma.airframe_hours_due - fl.airframe-hours) AS available_hours
FROM maintenance ma
JOIN fleet fl ON fl.fleet = wa.fleet_id
WHERE ma.airframe_hours_due > fl.airframe_hours
ORDER BY available_hours DESC;

-- there is not a plane identifier, so that needs to be added
SELECT fl.tail_number, (ma.airframe_hours_due - fl.airframe_hours) AS available_hours
FROM maintenance ma
JOIN fleet fl ON fl.fleet_id = ma.fleet_id
WHERE ma.airframe_hours_due > fl.airframe_hours
ORDER BY available_hours DESC;


----------------
--The original pilot query slightly rewritten
SELECT cr.first_name, cr.last_name, pl.flight_date, pl.duration, DATE_ADD(pl.flight_date, INTERVAL pl.duration HOUR) AS flight_end_time
FROM pilot_logs pl
JOIN crew cr on cr.crew_id = pl.crew_id
ORDER BY flight_end_time DESC;

-- for the Carbon Server
SELECT cr.first_name, cr.last_name,
pl.flight_date, pl.duration
FROM pilot_logs pl
JOIN crew cr on cr.crew_id = pl.crew_id;

-----------------------------------------------------------------------
--A query to look up flights that a particular plane has made
SELECT passenger_count, distance, flight_number, departure_time, arrival_time, departure_airport, arrival_airport
FROM flights
JOIN fleet on fleet.fleet_id = flights.fleet_id
WHERE tail_number = 'N657FM'
