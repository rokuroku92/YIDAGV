package com.yidagv.controller;

import com.google.gson.Gson;
import com.yidagv.model.AGV;
import com.yidagv.model.Place;
import com.yidagv.model.Station;
import com.yidagv.model.Task;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/agv")
public class AgvController {
    private static AGV agv;
    
    @GetMapping(value = "/")
    public String index() {
        return "agv";
    }
    
    @GetMapping(value = "/analysis")
    public String index1() {
        return "analysis";
    }
    
    @GetMapping(value = "/remove/task/{id}")
    @ResponseBody
    public String removeTask(@PathVariable("id") String id){
        agv.removeTaskById(id);
        return "ok";
    }
    
    static int tempId;
    @GetMapping(value = "/json")
    @ResponseBody
    public String getJson() { 
        if(agv != null){
            Place place = new Place(1001+tempId++%10);
            Station station = new Station((tempId+2)%4,(tempId+1)%4,(tempId+0)%4,(tempId+2)%4,(tempId+1)%4,(tempId+3)%4,(tempId+2)%4,(tempId+0)%4,
                (tempId+1)%4,(tempId+0)%4,(tempId+0)%4,(tempId+1)%4,(tempId+3)%4,(tempId+0)%4,(tempId+1)%4);
            agv.setStation(station);
            agv.setPlace(place);
            return new Gson().toJson(agv);
        }
        Place place = new Place(1001+tempId++%10);
        Station station = new Station((tempId+2)%4,(tempId+1)%4,(tempId+0)%4,(tempId+2)%4,(tempId+1)%4,(tempId+3)%4,(tempId+2)%4,(tempId+0)%4,
                (tempId+1)%4,(tempId+0)%4,(tempId+0)%4,(tempId+1)%4,(tempId+3)%4,(tempId+0)%4,(tempId+1)%4);
        List<Task> tasks = new ArrayList<>();
        tasks.add(new Task("202301040002",1002,1020,6));
        tasks.add(new Task("202301040003",1003,1021,7));
        tasks.add(new Task("202301040004",1004,1022,8));
        tasks.add(new Task("202301040005",1005,1023,9));
        tasks.add(new Task("202301040006",1006,1024,10));
        agv = new AGV();
        agv.setStatus(1);
        agv.setPlace(place);
        agv.setTask("202301040001");
        agv.setBattery(100);
        agv.setStation(station);
        agv.setTasks(tasks);
        
        String jsonString = new Gson().toJson(agv);
        System.out.println(jsonString);
        return jsonString;
    }
}
