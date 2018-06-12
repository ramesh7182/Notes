package com.notesrk;
import org.springframework.stereotype.Controller;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.notesrk.Notes;

@Controller
public class NotesController {
NotesDao noteDao = new NotesDao(); 

private static final String SUCCESS_RESULT="<result>success</result>";
private static final String FAILURE_RESULT="<result>failure</result>";
    @GetMapping("/NotesService/notes")
    @ResponseBody
    public List<Notes> getNotes(@RequestParam(name="id",required=false) String id){ 
    	if(id ==null)
    	{
    		//http://localhost:8080/NotesService/notes
    		
    		return noteDao.getAllNotes();
    	}
    	else
    	{
    		//http://localhost:8080/NotesService/notes?id=1
    		Notes note = noteDao.getNote(id);
    		List<Notes> noteList = new ArrayList<Notes>(); 
    		noteList.add(note);
 
    		return noteList;
    	}
     }
    
//    @GetMapping("/NotesService/notes/notes")
//    @ResponseBody
//    public Notes getNotes(@RequestParam(name="id") String id){
//        return noteDao.getNote(id);
//     }
}