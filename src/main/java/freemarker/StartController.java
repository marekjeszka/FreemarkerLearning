package freemarker;

import model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
public class StartController {

    @RequestMapping("/start")
    public String welcome(Map<String, Object> model) {
        model.put("time", new Date());
        model.put("message", "Hello!!1");
        final List<User> users = Arrays.asList(
                new User("トム", "クルーズ"),
                new User("ジョージ", "クルーニー"));
        model.put("list", users);
        return "welcome";
    }
}
