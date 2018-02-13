package br.com.caelum.contas.controller;

import br.com.caelum.contas.modelo.Usuario;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

    private Map<String, Usuario> USUARIOS;

    public LoginController() {
        USUARIOS = new LinkedHashMap<>();
        USUARIOS.put("caelum", new Usuario("caelum", "123"));
    }

    @RequestMapping("/login")
    public String loginForm() {
        return "user/form.login";
    }

    @RequestMapping("logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:login";
    }
    
    @RequestMapping("/menu")
    public String menu() {
        return "menu";
    }

    @RequestMapping("/log.into")
    public String efetuaLogin(Usuario usuario, HttpSession session) {
        Usuario user;

        if ((user = USUARIOS.get(usuario.getLogin())) != null) {
            if (user.getSenha().equals(usuario.getSenha())) {
                session.setAttribute("usuarioLogado", usuario);
                return "menu";
            }
        }

        return "redirect:login";
    }
}
