package com.schedule.mvc.services.impl;

import com.schedule.mvc.dao.IAirportDao;
import com.schedule.mvc.entities.Airport;
import com.schedule.mvc.services.IAirportService;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
public class AirportServiceImpl implements IAirportService {

    private IAirportDao dao;

    public void setDao(IAirportDao dao) {
        this.dao = dao;
    }


    @Override
    public Airport save(Airport entity) {
        return dao.save(entity);
    }

    @Override
    public Airport update(Airport entity) {
        return dao.update(entity);
    }

    @Override
    public List<Airport> selectAll() {
        return dao.selectAll();
    }

    @Override
    public List<Airport> selectAll(String sortField, String sort) {
        return dao.selectAll(sortField, sort);
    }

    @Override
    public Airport getById(Long id) {
        return dao.getById(id);
    }

    @Override
    public void remove(Long id) {
        dao.remove(id);
    }

    @Override
    public Airport findOne(String paramName, Object paramValue) {
        return dao.findOne(paramName, paramValue);
    }

    @Override
    public Airport findOne(String[] paramNames, Object[] paramValues) {
        return dao.findOne(paramNames, paramValues);
    }

    @Override
    public int findCountBy(String paramName, String paramValue) {
        return dao.findCountBy(paramName, paramValue);
    }
}
