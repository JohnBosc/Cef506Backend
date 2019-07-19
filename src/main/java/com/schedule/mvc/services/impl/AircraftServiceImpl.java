package com.schedule.mvc.services.impl;

import com.schedule.mvc.dao.IAircraftDao;
import com.schedule.mvc.entities.Aircraft;
import com.schedule.mvc.services.IAircraftService;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
public class AircraftServiceImpl implements IAircraftService {


    private IAircraftDao dao;

    public void setDao(IAircraftDao dao) {
        this.dao = dao;
    }

    @Override
    public Aircraft save(Aircraft entity) {
        return dao.save(entity);
    }

    @Override
    public Aircraft update(Aircraft entity) {
        return dao.update(entity);
    }

    @Override
    public List<Aircraft> selectAll() {
        return dao.selectAll();
    }

    @Override
    public List<Aircraft> selectAll(String sortField, String sort) {
        return dao.selectAll(sortField, sort);
    }

    @Override
    public Aircraft getById(int id) {
        return dao.getById(id);
    }

    @Override
    public void remove(int id) {
        dao.remove(id);
    }

    @Override
    public Aircraft findOne(String paramName, Object paramValue) {
        return dao.findOne(paramName, paramValue);
    }

    @Override
    public Aircraft findOne(String[] paramNames, Object[] paramValues) {
        return dao.findOne(paramNames, paramValues);
    }

    @Override
    public int findCountBy(String paramName, String paramValue) {
        return dao.findCountBy(paramName, paramValue);
    }
}
