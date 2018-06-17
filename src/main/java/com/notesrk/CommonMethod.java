package com.notesrk;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStreamReader;

public class CommonMethod {

	public static String getStringFromJSONAPI(URL url)
	{
		System.out.println("ENTER:getStringFromJSONAPI");
		//URL url = new URL("http://localhost:8080/NotesService/notes");
		StringBuilder jsonString = new StringBuilder();
		String inputLine;
		try {
		URLConnection connection = url.openConnection();
		BufferedReader in = new BufferedReader( new InputStreamReader(connection.getInputStream(),"UTF8"));
		jsonString = new StringBuilder();
		while ((inputLine = in.readLine()) != null) 
			jsonString.append(inputLine);
		in.close();
		System.out.println(jsonString);
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		System.out.println("EXIT:getStringFromJSONAPI");
		return jsonString.toString();
	}
	
	public static String getDataFromJSON(String str)
	{
		System.out.println("ENTER:getDataFromJSON");
		StringBuilder htmlcode = new StringBuilder();
		try {
		
			JSONArray jsonArray = new JSONArray(str);
			
		for(int i=0;i<jsonArray.length();i++){
			System.out.println("Row:"+i);
		    JSONObject obj=jsonArray.getJSONObject(i); 
		
		    htmlcode.append("<td>"); htmlcode.append(obj.getString("id")); htmlcode.append("</td>");
		    htmlcode.append("<td>"); htmlcode.append(obj.getString("title")); htmlcode.append("</td>");
		    htmlcode.append("<td>"); htmlcode.append(obj.getString("description")); htmlcode.append("</td>");
		    htmlcode.append("<td>"); htmlcode.append(obj.getString("category")); htmlcode.append("</td>");
		    htmlcode.append("<td>"); htmlcode.append(obj.getString("subCategory")); htmlcode.append("</td>");
		    htmlcode.append("<td>"); htmlcode.append(obj.getString("dateAdded")); htmlcode.append("</td>");
		    htmlcode.append("<td>"); htmlcode.append(obj.getString("dueDate")); htmlcode.append("</td>");
		    htmlcode.append("<td>"); htmlcode.append(obj.getString("priority")); htmlcode.append("</td>");
		    htmlcode.append("<td>"); htmlcode.append(obj.getString("userAuthor")); htmlcode.append("</td>");
		    htmlcode.append("<td>"); htmlcode.append(obj.getString("assigned")); htmlcode.append("</td>");
		    htmlcode.append("<td>"); htmlcode.append(obj.getString("status")); htmlcode.append("</td>");
		    htmlcode.append("<td>"); htmlcode.append(obj.getString("comments")); htmlcode.append("</td>");
		    htmlcode.append("</tr>");
		    

		 }
		} catch (JSONException e) {
			System.out.println("Error while reading JSON Array......................................+++++++++++");
			e.printStackTrace();
		}
		catch (Exception e) {
			System.out.println();
			System.out.println("Generic Error: Error while reading JSON Array......................................+++++++++++");
			e.printStackTrace();
		}
		System.out.println("EXIT:getDataFromJSON");
		return htmlcode.toString();
	}
	
}
