package com.xl.download.controller;



import com.xl.download.bean.category;
import com.xl.download.bean.download;
import com.xl.download.mapper.CategoryMapper;
import com.xl.download.mapper.DownloadMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
public class DownloadController {
    private  String LIST="list";
    private String DOWNLOAD="download";
    @Autowired
    DownloadMapper downloadMapper;
    @Autowired
    CategoryMapper categoryMapper;
@RequestMapping(value="/download")
public String download(HttpServletRequest request, Model model){
    List<download>  ListDownload=downloadMapper.getdownload();
    List<category>  ListCategory= categoryMapper.getcategory();
    model.addAttribute("ListDownload",ListDownload);
    model.addAttribute("ListCategory",ListCategory);
    System.out.println("---------------------测试---------------成功--------------");
    return DOWNLOAD;
}
@RequestMapping (value ="/list/cid/{cid}")
//@ResponseBody
    public String getDownload(@PathVariable (name="cid") int cid,Model model) {
    List<download>  ListDownload=downloadMapper.getdownloadbyCid(cid);
    List<category>  ListCategory= categoryMapper.getcategory();
    model.addAttribute("ListCategory",ListCategory);
    model.addAttribute("ListDownload",ListDownload);
        return DOWNLOAD;
    }

    public String downloadHtml(Model model){
        List<category>  ListCategory= categoryMapper.getcategory();
        model.addAttribute("ListCategory",ListCategory);
        return DOWNLOAD;
    }
//刪除軟件
    public String DeleteSofe(Map<String,Object> map,int id,download d){
        downloadMapper.deleteSofe(id);
    return LIST;
    }
//更改功能
public String UpdateSofe(Map<String,Object> map,Model model){

    return "";
}
}
