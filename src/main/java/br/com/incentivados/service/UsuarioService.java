package br.com.incentivados.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.incentivados.repository.UsuarioRepository;
import br.com.incentivados.enumerated.TipoUsuario;
import br.com.incentivados.model.Usuario;

@Service
public class UsuarioService {

    @Autowired
    private UsuarioRepository repository;

    // Método para adicionar um novo usuário
    public Usuario adicionar(Usuario usuario, TipoUsuario tipoUsuario) {
        usuario.setDataCadastro(new Date());
        usuario.setTipoUsuario(tipoUsuario);
        return repository.save(usuario);
    }

    public boolean exists(String cpf, String senha){
        return repository.existsByCpfAndSenha(cpf, senha);
    }

    public Usuario login(String cpf){
        return repository.findByCpf(cpf);
    }

}