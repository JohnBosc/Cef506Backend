package com.schedule.mvc.entities;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Time;
import java.util.Date;

@Entity
@Table(name = "flight")
public class Flight implements Serializable {


    @Id
    @GeneratedValue
    private Long flight_id;

    private String flight_code;

    @Temporal(TemporalType.TIME)
    private Date flight_time;

    private String flight_status;

    @Temporal(TemporalType.DATE)
    private Date date;


    @ManyToOne
    @JoinColumn(name = "airport_id")
    private Airport airport;

    @OneToOne
    @JoinColumn(name = "aircraft_id")
    private Aircraft aircraft;

    //constructor
    public Flight() {
    }

    public Long getFlight_id() {
        return flight_id;
    }

    public void setFlight_id(Long flight_id) {
        this.flight_id = flight_id;
    }

    public String getFlight_code() {
        return flight_code;
    }

    public void setFlight_code(String flight_code) {
        this.flight_code = flight_code;
    }

    public Date getFlight_time() {
        return flight_time;
    }

    public void setFlight_time(Date flight_time) {
        this.flight_time = flight_time;
    }

    public String getFlight_status() {
        return flight_status;
    }

    public void setFlight_status(String flight_status) {
        this.flight_status = flight_status;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Airport getAirport() {
        return airport;
    }

    public void setAirport(Airport airport) {
        this.airport = airport;
    }

    public Aircraft getAircraft() {
        return aircraft;
    }

    public void setAircraft(Aircraft aircraft) {
        this.aircraft = aircraft;
    }
}
