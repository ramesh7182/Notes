package com.notesrk;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.LinkedHashMap;

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
	
	public static ArrayList<String[]> getDataFromJSON(String str)
	{
		System.out.println("ENTER:getDataFromJSON");
		StringBuilder htmlcode = new StringBuilder();
		ArrayList<String[]> allrowdata = new ArrayList<>();
		String[] rowdata = null;
		int numOfcolumn =0;
		try {
		
			JSONArray jsonArray = new JSONArray(str);
			
		for(int i=0;i<jsonArray.length();i++){
			System.out.println("Row:"+i);
		    JSONObject obj=jsonArray.getJSONObject(i); 
		    numOfcolumn = obj.length();
		    rowdata = new String[numOfcolumn];
		    rowdata[0] = obj.getString("id");
		    rowdata[1] = obj.getString("title");
		    rowdata[2] = obj.getString("description");
		    rowdata[3] = obj.getString("category");
		    rowdata[4] = obj.getString("subCategory");
		    rowdata[5] = obj.getString("dateAdded");
		    rowdata[6] = obj.getString("dueDate");
		    rowdata[7] = obj.getString("priority");
		    rowdata[8] = obj.getString("userAuthor");
		    rowdata[9] = obj.getString("assigned");
		    rowdata[10] = obj.getString("status");
		    rowdata[11] = obj.getString("comments");
		    allrowdata.add(rowdata);
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
		return allrowdata;
	}
	
	public static LinkedHashMap<String,String> getHashMapFromSingleRow(String str)
	{
		System.out.println("ENTER:getHashMapFromSingleRow");
		StringBuilder htmlcode = new StringBuilder();
		ArrayList<String[]> allrowdata = new ArrayList<>();
		LinkedHashMap<String, String> mapdata= null;
		int numOfcolumn =0;
		try {
		
			JSONArray jsonArray = new JSONArray(str);
			
		for(int i=0;i<jsonArray.length();i++){
			System.out.println("Row:"+i);
		    JSONObject obj=jsonArray.getJSONObject(i); 
		    numOfcolumn = obj.length();
		    mapdata = new LinkedHashMap<String,String>();
		    mapdata.put("id", obj.getString("id"));
		    mapdata.put("title", obj.getString("title"));
		    mapdata.put("description", obj.getString("description"));
		    mapdata.put("category", obj.getString("category"));
		    mapdata.put("subCategory", obj.getString("subCategory"));
		    mapdata.put("dateAdded", obj.getString("dateAdded"));
		    mapdata.put("dueDate", obj.getString("dueDate"));
		    mapdata.put("priority", obj.getString("priority"));
		    mapdata.put("userAuthor", obj.getString("userAuthor"));
		    mapdata.put("assigned", obj.getString("assigned"));
		    mapdata.put("status", obj.getString("status"));
		    mapdata.put("comments", obj.getString("comments"));
		   
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
		System.out.println("EXIT:getHashMapFromSingleRow");
		return mapdata;
	}
	
}
