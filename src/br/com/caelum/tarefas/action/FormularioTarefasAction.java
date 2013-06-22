package br.com.caelum.tarefas.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

public class FormularioTarefasAction {
	@Action(value = "formularioTarefas", results = { @Result(location = "formulario-tarefas.jsp", name = "ok") })
	public String execute() {

		System.out.println("Executando formulario");
		return "ok";

	}
}
