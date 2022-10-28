package br.com.adonai.flow.model;

import br.com.adonai.flow.enuns.EnumStatus;
import com.jatom.anotations.Alias;
import com.jatom.anotations.Id;
import com.jatom.anotations.TableName;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@TableName("flow_users")
public class FlowUsers {

    @Id
    private int id;

    private String email;

    private String senha;

    private EnumStatus status;

    @Alias("email_confirmation")
    private boolean emailConfirmation;
}
