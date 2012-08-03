package com.smartoncloud.picasaweb.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smartoncloud.picasaweb.service.PicasaService;

@Controller
public class PicasaController {

    @Autowired
    private PicasaService picasaService;

    @RequestMapping("/albums")
    public String list(Model model) {
	model.addAttribute("albums", picasaService.getAlbums());
	return "albums";
    }
}
