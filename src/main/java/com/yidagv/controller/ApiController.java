package com.yidagv.controller;

import com.google.gson.Gson;
import com.yidagv.model.Analysis;
import com.yidagv.service.AnalysisService;
import java.util.Calendar;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class ApiController {
    
    private Gson gson = new Gson();
    @Autowired
    private AnalysisService analysisService;
    
    @GetMapping("/status")
    public String getStatus() {
        return "{'message': 'OK'}";
    }
    
    @RequestMapping(value = "/analysis/all", produces = MediaType.APPLICATION_JSON_VALUE)
    public String findAnalysisAll(){
        List<Analysis> list = analysisService.queryAnalysises();
        return gson.toJson(list);
    }
    
    @RequestMapping(value = "/analysis/yyyymm", produces = MediaType.APPLICATION_JSON_VALUE)
    public String getAnalysisesYearsAndMonths(){
        List<Map<String, Object>> list = analysisService.getAnalysisesYearsAndMonths();
        return gson.toJson(list);
    }
    // 範例路徑 /analysis/mode?value=202212
    // 範例路徑 /analysis/mode?value=202301
    // 範例路徑 /analysis/mode?value=recently
    @RequestMapping(value = "/analysis/mode", produces = MediaType.APPLICATION_JSON_VALUE)
    public String queryAnalysisesByYearAndMonth(@RequestParam("value") String value){
        // value=202212, 202301, recently
        Integer year, month;
        Calendar calendar = Calendar.getInstance();
        if(value.equals("recently")){
            year = calendar.get(Calendar.YEAR);
            month = calendar.get(Calendar.MONTH) + 1;
        }else{
            year = Integer.valueOf(value.substring(0,4));
            month = Integer.valueOf(value.substring(4,6));
        }
        List<Analysis> list = analysisService.queryAnalysisesByYearAndMonth(year, month);
        return gson.toJson(list);
    }
}
