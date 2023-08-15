package ra.demospringmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
//localhost:8081/greeting
@Controller
@RequestMapping({"/","/home"})
public class HomeController {
    @GetMapping("")
    public String home(Model model, ModelMap map){
        String name = "Nguyễn Văn A";
        model.addAttribute("name",name);
        return "home";
    }
    @GetMapping("greeting")
    public String greeting(){
        return "greeting";
    }
}
