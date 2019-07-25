package com.schedule.mvc.services.impl;

import com.schedule.mvc.dao.IAirlineDao;
import com.schedule.mvc.entities.Airline;
import com.schedule.mvc.services.IAirlineService;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
public class AirlineServiceImpl implements IAirlineService {

    private IAirlineDao dao;

    public void setDao(IAirlineDao dao) {
        this.dao = dao;
    }


    @Override
    public Airline save(Airline entity) {
        return dao.save(entity);
    }

    @Override
    public Airline update(Airline entity) {
        return dao.update(entity);
    }

    @Override
    public List<Airline> selectAll() {
        return dao.selectAll();
    }

    @Override
    public List<Airline> selectAll(String sortField, String sort) {
        return dao.selectAll(sortField, sort);
    }

    @Override
    public Airline getById(Long id) {
        return dao.getById(id);
    }

    @Override
    public void remove(Long id) {
        dao.remove(id);
    }

    @Override
    public Airline findOne(String paramName, Object paramValue) {
        return dao.findOne(paramName, paramValue);
    }

    @Override
    public Airline findOne(String[] paramNames, Object[] paramValues) {
        return dao.findOne(paramNames, paramValues);
    }

    @Override
    public int findCountBy(String paramName, String paramValue) {
        return dao.findCountBy(paramName, paramValue);
    }
}
