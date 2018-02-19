SELECT flight_date FROM pilot_logs ORDER BY flight_date DESC;

-- so, because even though the pilot could be able to legal to fly by the time planes take off, he may not be legal to fly by the time that the flight lands due to the duration of the flight.
-- therefore, we need to figure out when the flight ended. The pilot's log table holds information about the duration of the flight, in tenths of an hour.

SELECT flight_date, duration, DATE_ADD(flight_date, INTERVAL duration HOUR) AS flight_end_time
FROM pilot_logs ORDER BY flight_date DESC;
