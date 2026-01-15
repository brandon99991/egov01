package egovframework.example.cmmn.advice;

import org.egovframe.rte.fdl.property.EgovPropertyService;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import lombok.RequiredArgsConstructor;

/**
 * @Class Name : GlobalModelAdvice.java
 * @Description : GlobalModelAdvice Class
 * @Modification Information
 *
 * @  수정일        수정자               수정내용
 * @ ----------   -----------   ---------------------------
 * @ 2026.01.15   최초생성
 *
 * @author 김인섭
 * @since 2026. 01.15
 * @version 1.0
 * @see
 *
 * Copyright (C) by MOPAS All right reserved.
 */
@ControllerAdvice
@RequiredArgsConstructor
public class GlobalModelAdvice {

    /** EgovPropertyService */
    private final EgovPropertyService propertiesService;

    @ModelAttribute("appName")
    public String appName() {
        return "EgovSample";
    }

    @ModelAttribute("profiles")
    public String profiles() {
        return propertiesService.getString("env.name");
    }
}
