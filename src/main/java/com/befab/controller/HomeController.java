package com.befab.controller;

import java.util.ArrayList;
import java.util.List;

import com.befab.model.Annonce;
import com.befab.model.Coiffeur;
import com.befab.model.Salon;
import com.befab.service.Help;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.befab.model.Adresse;
import com.befab.service.SalonService;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	SalonService salonService;

	@Autowired
	Help help;

	@RequestMapping(value = { "/", "/accueil" })
	public String accueil(Model model) {
		model.addAttribute("annonce", new Annonce());
		return "accueil";
	}

	@RequestMapping(value = { "/", "/accueil" }, method = RequestMethod.POST)
	public String rechercher(Model model,@ModelAttribute("adresse") Adresse adresse) {
		List<Salon> listSalon = salonService.findAllSalon(adresse);
		model.addAttribute("listSalon", listSalon);
		return "resultat";
	}

	@RequestMapping("/inscription")
	public String inscrire(Model model){
		model.addAttribute("salon",new Salon());
		return "inscription";
	}
	@RequestMapping(value={"/inscription"}, method = RequestMethod.POST)
	public String saveinscription(@ModelAttribute("salon") Salon salon){
		salonService.save(salon);
		return "redirect:/accueil";
	}
}
