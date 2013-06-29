package br.com.caelum.tarefas.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.InterceptorRef;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import br.com.caelum.tarefas.jdbc.bean.Tarefa;
import br.com.caelum.tarefas.jdbc.dao.TarefaDAO;

@ParentPackage("default")
public class AlteraTarefaAction {
	private Tarefa tarefa;
	
	@Action(value="alteraTarefa", results={
			@Result(name="ok", 
					type="redirectAction", 
					params={"actionName","listaTarefas"}
			)
	}, interceptorRefs={
			@InterceptorRef("seguranca")
	})
	public String execute(){
		new TarefaDAO().altera(tarefa);
		return "ok";
	}
	
	public Tarefa getTarefa() {
		return tarefa;
	}

	public void setTarefa(Tarefa tarefa) {
		this.tarefa = tarefa;
	}
}
