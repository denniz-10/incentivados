package br.com.incentivados.repository;

import br.com.incentivados.enumerated.StatusPedido;
import br.com.incentivados.model.Pedido;
import br.com.incentivados.model.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface PedidoRepository extends JpaRepository<Pedido, Long>{
	
	
	Optional<Pedido> findById(Long id);
	
	List<Pedido> findByUsuario(Usuario usuario);
	
	Long countByUsuario(Usuario usuario);
	Long countByStatus(StatusPedido status);

}
