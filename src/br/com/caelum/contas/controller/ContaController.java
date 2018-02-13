package br.com.caelum.contas.controller;

import br.com.caelum.contas.modelo.Conta;
import java.util.Calendar;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ContaController {

    private Map<Long, Conta> CONTAS;
    long cont;

    public ContaController() {
        CONTAS = new LinkedHashMap<>();
        cont = 0;
    }

    @RequestMapping("/add.account")
    public String adiciona(@Valid Conta conta, BindingResult result) {
        if (result.hasErrors()) {
            return "account/form.add.account";
        }
        conta.setId(cont);
        CONTAS.put(cont, conta);
        cont++;

        return "account/added.account";
    }

    @RequestMapping("/remove.account")
    public String remove(Conta conta) {
        CONTAS.remove(conta.getId());

        return "redirect:list.account";
    }

    @RequestMapping("/list.account")
    public ModelAndView lista() {
        ModelAndView mv = new ModelAndView("account/list.account");
        mv.addObject("contas", CONTAS);

        return mv;
    }

    @RequestMapping("/pay.account")
    public String paga(Conta conta) {
        conta = CONTAS.get(conta.getId());
        conta.setPaga(true);
        conta.setDataPagamento(Calendar.getInstance());

        return "redirect:list.account";
    }

    @RequestMapping("/form.add.account")
    public String form() {
        return "account/form.add.account";
    }
}
