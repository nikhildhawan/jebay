package ebay;

import java.util.Map;

import model.PaisaMapping;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class GetPaisaForm extends ActionSupport
{
	int paisaregister;
	public String execute()
	{
		Map<String, Object> session=ActionContext.getContext().getSession();
		String user_id=(String) session.get("uname");
		paisaregister=PaisaMapping.getSellerPaisaStatus(user_id);
		return SUCCESS;
	}
	public int getPaisaregister()
	{
		return paisaregister;
	}
	public void setPaisaregister(int paisaregister)
	{
		this.paisaregister = paisaregister;
	}

}
