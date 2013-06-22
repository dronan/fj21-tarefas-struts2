package br.com.caelum.tarefas.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import br.com.caelum.tarefas.jdbc.bean.Tarefa;
import br.com.caelum.tarefas.jdbc.dao.TarefaDAO;

public class MostraTarefaAction {

	private Tarefa tarefa;
	
	@Action(value="mostraTarefa", results={
			@Result(name="ok", location="mostra-tarefa.jsp")
	})
	public String execute(){
		TarefaDAO dao = new TarefaDAO();
		this.tarefa = dao.pesquisar(this.tarefa.getId());
		return "ok";
	}
	
	public Tarefa getTarefa() {
		return tarefa;
	}

	public void setTarefa(Tarefa tarefa) {
		this.tarefa = tarefa;
	}
	
	
}
