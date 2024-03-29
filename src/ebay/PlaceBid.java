package ebay;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class PlaceBid extends ActionSupport
{
	int item_id, bid_amt;

	String user_id;

	public int getItem_id()
	{
		return item_id;
	}

	public void setItem_id(int item_id)
	{
		this.item_id = item_id;
	}

	public int getBid_amt()
	{
		return bid_amt;
	}

	public void setBid_amt(int bid_amt)
	{
		this.bid_amt = bid_amt;
	}

	@Override
	public String execute()
	{
		Connect c = new Connect();
		int maxbid = 0, item_mode = 0;
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		try{
		user_id = (session).getAttribute("User") + "";
		}catch(NullPointerException ex){
			
			return ERROR;
		}
		// user_id="nikdd87";
		String sqlQuery3 = "select max(b.bidding_bid) as maxi,i.item_mode,i.item_baseprice from bidding_details b,item_details i where item_id=bidding_item_id and bidding_item_id=" + item_id; // current highest bid
		try
		{
			ResultSet rs = c.getResult(sqlQuery3);
			while (rs.next())
			{
				maxbid = rs.getInt("maxi");
				item_mode = Integer.parseInt(rs.getString("item_mode"));
				// System.out.println("max bid here in placebid is : " + maxbid);
				if (maxbid == 0)
				{
					maxbid = rs.getInt("item_baseprice");
					// System.out.println("maxbid is now " + maxbid);
				}
			}

			if (item_mode == 2)
			{
				this.addActionError("Sorry, Bidding closed");
				return "error";
			}

			else if (bid_amt < maxbid)
			{
				this.addActionError("The current hisghest bid is : " + maxbid + " Please enter an amount greater than " + maxbid);
				return "error";
			}

			else
			{
				ResultSet rs1 = c.getResult("select * from bidding_details where bidding_buyer='" + user_id + "' and bidding_item_id=" + item_id);
				if (rs1.next())
				{
					System.out.println("updating bid....");
					System.out.println("bid amt=:" + bid_amt + " user_id=" + user_id + " max bid=:" + maxbid + " item_id=" + item_id);
					c.dml("update bidding_details set bidding_bid=" + bid_amt + " where bidding_buyer='" + user_id + "' and bidding_item_id=" + item_id);
					c.dml("update biddingstatus set bidding_winner='" + user_id + "' where bidding_item_id=" + item_id);
				}
				else
				{
					System.out.println("adding bid....");
					System.out.println("bid amt=:" + bid_amt + " user_id=" + user_id + " max bid=:" + maxbid + " item_id=" + item_id);
					c.dml("insert into bidding_details(bidding_item_id,bidding_buyer,bidding_bid) values(" + item_id + ",'" + user_id + "'," + bid_amt + ")");
					c.dml("update biddingstatus set bidding_winner='" + user_id + "' where bidding_item_id=" + item_id);
				}
			}
		}
		catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return SUCCESS;
	}
}
