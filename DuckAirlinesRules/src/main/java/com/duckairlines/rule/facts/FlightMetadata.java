package com.duckairlines.rule.facts;

public class FlightMetadata {
	private int aircraftRange;
	private int distanceOfFlight;
	private int aircraftTakeoffRoll;
	private int aircraftLandingRollout;
	private int originatingAirportRunwayLength;
	private int destinationAirportRunwayLength;
	private String aircraftType;
	private String pilotRating;
	public int getAircraftRange() {
		return aircraftRange;
	}
	public void setAircraftRange(int aircraftRange) {
		this.aircraftRange = aircraftRange;
	}
	public int getDistanceOfFlight() {
		return distanceOfFlight;
	}
	public void setDistanceOfFlight(int distanceOfFlight) {
		this.distanceOfFlight = distanceOfFlight;
	}
	public int getAircraftTakeoffRoll() {
		return aircraftTakeoffRoll;
	}
	public void setAircraftTakeoffRoll(int aircraftTakeoffRoll) {
		this.aircraftTakeoffRoll = aircraftTakeoffRoll;
	}
	public int getAircraftLandingRollout() {
		return aircraftLandingRollout;
	}
	public void setAircraftLandingRollout(int aircraftLandingRollout) {
		this.aircraftLandingRollout = aircraftLandingRollout;
	}
	public int getOriginatingAirportRunwayLength() {
		return originatingAirportRunwayLength;
	}
	public void setOriginatingAirportRunwayLength(
			int originatingAirportRunwayLength) {
		this.originatingAirportRunwayLength = originatingAirportRunwayLength;
	}
	public int getDestinationAirportRunwayLength() {
		return destinationAirportRunwayLength;
	}
	public void setDestinationAirportRunwayLength(
			int destinationAirportRunwayLength) {
		this.destinationAirportRunwayLength = destinationAirportRunwayLength;
	}
	public String getAircraftType() {
		return aircraftType;
	}
	public void setAircraftType(String aircraftType) {
		this.aircraftType = aircraftType;
	}
	public String getPilotRating() {
		return pilotRating;
	}
	public void setPilotRating(String pilotRating) {
		this.pilotRating = pilotRating;
	}
}
