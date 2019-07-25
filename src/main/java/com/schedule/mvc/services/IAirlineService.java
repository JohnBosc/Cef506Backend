package com.schedule.mvc.services;

import com.schedule.mvc.entities.Airline;

import java.util.List;

public interface IAirlineService {

    public Airline save(Airline entity);

    public Airline update(Airline entity);

    public List<Airline> selectAll();

    public List<Airline> selectAll(String sortField, String sort);

    public Airline getById(Long id);

    public void remove(Long id);

    public Airline findOne(String paramName, Object paramValue);

    public Airline findOne(String[] paramNames, Object[] paramValues);

    public int findCountBy(String paramName, String paramValue);
}
