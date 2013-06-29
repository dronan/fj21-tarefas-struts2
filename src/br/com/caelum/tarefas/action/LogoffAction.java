package br.com.caelum.tarefas.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.dispatcher.SessionMap;

import br.com.caelum.tarefas.jdbc.bean.Usuario;

import com.opensymphony.xwork2.ActionContext;

public class LogoffAction {

	private Usuario ususario;
	
	@Action(value="efetuaLogoff", results={
			@Result(name="ok", location="formulario-login.jsp")
	})
	public String execute(){
		
		SessionMap sessao = (SessionMap)ActionContext.getContext().get(ActionContext.SESSION);
		sessao.invalidate();
		
		return "ok";
	}

	public Usuario getUsusario() {
		return ususario;
	}

	public void setUsusario(Usuario ususario) {
		this.ususario = ususario;
	}
	
}
