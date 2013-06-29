package br.com.caelum.tarefas.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.InterceptorRef;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import br.com.caelum.tarefas.jdbc.dao.TarefaDAO;

@ParentPackage("default")
public class RemoveTarefaAction {
	
	private Long id;
	
	@Action(value="removeTarefa", results={
			@Result(name="ok", type="httpheader", params={"status", "200"})
		}, interceptorRefs={
			@InterceptorRef("seguranca")
	})
	public String execute(){
		new TarefaDAO().removeId(id);
		return "ok";
	}

	public void setId(Long id) {
		this.id = id;
	}
	
}
