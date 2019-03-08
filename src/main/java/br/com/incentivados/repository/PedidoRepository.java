package br.com.incentivados.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.incentivados.model.Pedido;
import br.com.incentivados.model.Usuario;

@Repository
public interface PedidoRepository extends JpaRepository<Pedido, Long>{
	
	
	Optional<Pedido> findById(Long id);
	
	List<Pedido> findByUsuario(Usuario usuario);
	
	Long countByUsuario(Usuario usuario);

}
