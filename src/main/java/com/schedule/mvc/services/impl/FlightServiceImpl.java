package com.schedule.mvc.services.impl;

import com.schedule.mvc.dao.IFlightDao;
import com.schedule.mvc.entities.Flight;
import com.schedule.mvc.services.IFlightService;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
public class FlightServiceImpl implements IFlightService {

    private IFlightDao dao;

    public void setDao(IFlightDao dao) {
        this.dao = dao;
    }


    @Override
    public Flight save(Flight entity) {
        return dao.save(entity);
    }

    @Override
    public Flight update(Flight entity) {
        return dao.update(entity);
    }

    @Override
    public List<Flight> selectAll() {
        return dao.selectAll();
    }

    @Override
    public List<Flight> selectAll(String sortField, String sort) {
        return dao.selectAll(sortField, sort);
    }

    @Override
    public Flight getById(int id) {
        return dao.getById(id);
    }

    @Override
    public void remove(int id) {
        dao.remove(id);
    }

    @Override
    public Flight findOne(String paramName, Object paramValue) {
        return dao.findOne(paramName, paramValue);
    }

    @Override
    public Flight findOne(String[] paramNames, Object[] paramValues) {
        return dao.findOne(paramNames, paramValues);
    }

    @Override
    public int findCountBy(String paramName, String paramValue) {
        return dao.findCountBy(paramName, paramValue);
    }
}
