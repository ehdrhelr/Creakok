package creakok.com.web;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import creakok.com.filesetting.Path;

@Configuration
@EnableWebMvc
public class WebMvcConfig implements WebMvcConfigurer {

	//web root가 아닌 외부 경로에 있는 리소스를 url로 불러올 수 있도록 설정
    //현재 localhost:8090/summernoteImage/1234.jpg
    //로 접속하면 C:/summernote_image/1234.jpg 파일을 불러온다.

	@Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
	    // <resources mapping="/summernoteImage/**" location="file:///Users/joohyunann/git/Creakok/src/main/webapp/resources/img/funding/" />
		registry.addResourceHandler("/summernoteImage/**")
                .addResourceLocations("file:///"+Path.FILE_STORE);

        //<resources mapping="/summernoteImageCommunity/**" location="file:///Users/shion/git/Creakok/src/main/webapp/resources/img/community/" />
        registry.addResourceHandler("/summernoteImageCommunity/**")
        		.addResourceLocations("file:///"+Path.FILE_STORE_GOODS);
        
        //<resources mapping="/summernoteImageGoods/**" location="file:///C:/Users/Trajanus/git/Creakok_master/src/main/webapp/resources/img/goods/" />
        registry.addResourceHandler("/summernoteImageGoods/**")
        		.addResourceLocations("file:///"+Path.IMG_STORE_COMMUNITY);
        
    }
}