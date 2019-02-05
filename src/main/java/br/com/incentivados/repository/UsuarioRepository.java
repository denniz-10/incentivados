package br.com.incentivados.repository;

import br.com.incentivados.model.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UsuarioRepository extends JpaRepository<Usuario, Long> {

    boolean existsByCpfAndSenha(String cpf, String senha);
    Usuario findByCpf(String cpf);
}
