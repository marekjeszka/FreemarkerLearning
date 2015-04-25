import freemarker.AppConfig;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.context.web.SpringBootServletInitializer;

public class AppStarter extends SpringBootServletInitializer {
    public static void main(String[] args) {
        SpringApplication.run(AppConfig.class);
    }
}
