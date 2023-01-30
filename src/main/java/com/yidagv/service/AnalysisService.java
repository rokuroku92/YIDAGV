package com.yidagv.service;

import com.yidagv.model.Analysis;
import com.yidagv.repository.AnalysisDao;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AnalysisService {
    
    @Autowired
    private AnalysisDao analysisDao;
    
    public List<Analysis> queryAnalysises(){
        return analysisDao.queryAnalysises();
    }
    
    public List<Analysis> queryAnalysisesRecently(){
        return analysisDao.queryAnalysisesRecently();
    }
    
    public List<Analysis> queryAnalysisesByYearAndMonth(Integer year, Integer month){
        // 參數檢查
        if(year<2022 || month < 1 || month > 12) return null;
        return analysisDao.queryAnalysisesByYearAndMonth(year, month);
    }
    
    public List<Map<String, Object>> getAnalysisesYearsAndMonths(){
        return analysisDao.getAnalysisesYearsAndMonths();
    }
}
