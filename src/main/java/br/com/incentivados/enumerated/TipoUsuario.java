package br.com.incentivados.enumerated;

import lombok.Getter;

@Getter
public enum TipoUsuario {

    COMUM(0, "Comum"),
    EMPRESA(1, "Empresa"),
    ADMIN(2, "Admin");

    private int id;
    private String descricao;

    TipoUsuario(int id, String descricao){
        this.id = id;
        this.descricao = descricao;
    }
}