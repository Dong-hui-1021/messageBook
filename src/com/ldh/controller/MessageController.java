package com.ldh.controller;

import com.ldh.bean.Message;
import com.ldh.bean.User;
import com.ldh.service.MessageService;
import com.ldh.service.UserService;
import com.ldh.util.DataUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mock.web.MockHttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;
import java.util.Enumeration;
import java.util.List;

@Controller
@RequestMapping("/message")
public class MessageController {

    @Autowired
    MessageService messageService;

    @Autowired
    UserService userService;

    @RequestMapping("/selectAll")
    public String selectAll(HttpSession httpSession) {
        List<Message> list = messageService.selectAll();
        httpSession.setAttribute("AllMessage", list);
        return "home";
    }

    @RequestMapping("/selectOnce")
    public String jump(int id, HttpSession httpSession) {
        Message message = messageService.selecrOnce(id);
        httpSession.setAttribute("message", message);
        return "message";
    }

    @RequestMapping("/insert")
    public String insertMessage(String description, String message, int id) {
        Message mess = new Message();
        mess.setCreateTime(DataUtil.getTime());
        mess.setDescription(description);
        mess.setMessage(message);
        messageService.insertMessage(mess, id);

        return "redirect:/message/selectAll";
    }

    @RequestMapping("/deleted")
    public String deletedMessage(int id, HttpSession httpSession) {
        List<Message> list = messageService.selectDeleted(id);
        httpSession.setAttribute("AllMessage", list);
        return "deletedMessage";
    }


    @RequestMapping("/selectMine")
    public String selectMine(int id, HttpSession httpSession) {
        List<Message> list = messageService.selectMine(id);
        httpSession.setAttribute("AllMessage", list);
        return "userMessage";
    }

    @RequestMapping("/selectDeleted")
    public String selectDeleted(int id, HttpSession httpSession) {
        Message message = messageService.selectDeletedOne(id);
        httpSession.setAttribute("message", message);
        return "recover";
    }

    @RequestMapping("/deleteMessage")
    public String deleteMessage(int id) {

        Message message = messageService.selecrOnce(id);
        messageService.insertIntoDeleted(message);
        messageService.deleteMessage(id);
        return "redirect:/message/selectMine?id=" + message.getUser().getId();
    }

    @RequestMapping("/updateSelect")
    public String updateSelect(int id, HttpSession httpSession) {
        Message message = messageService.selecrOnce(id);
        httpSession.setAttribute("note", message);
        return "updateMessage";
    }

    @RequestMapping("/update")
    public String updateMessage(String description, String message, int id) {
        messageService.updateMessage(description, message, id);
        return "redirect:/message/selectOnce?id=" + id;
    }

    @RequestMapping("/draft")
    public String draft(int id, HttpSession httpSession) {
        List<Message> list = messageService.selectDraft(id);
        httpSession.setAttribute("AllMessage", list);
        return "draft";
    }

    @RequestMapping("/selectDraft")
    public String selectDraft(int id, HttpSession httpSession) {
        Message message = messageService.selectOneDraft(id);
        httpSession.setAttribute("note", message);
        return "draftSelect";
    }

    @RequestMapping("/deleteDeleted")
    public String deleteDeleted(int id) {
        messageService.deleteDeleted(id);
        return "redirect:/message/deleted?id=" + id;
    }

    @RequestMapping("/deleteDraft")
    public String deleteDraft(int id, HttpSession httpSession) {
        messageService.deleteDraft(id);
        User user = (User) httpSession.getAttribute("user");
        return "redirect:/message/draft?id=" + user.getId();
    }

    @RequestMapping("/draftUpdate")
    public String draftUpdate(String description, String message, int id, HttpSession httpSession) {
        User user = (User) httpSession.getAttribute("user");
        messageService.draftUpdate(description, message, id);
        return "redirect:/message/draft?id=" + user.getId();
    }

    @RequestMapping("/publishDraft")
    public String publishDraft(String description, String message, int id, HttpSession httpSession) {
        Message message1 = new Message();
        message1.setMessage(message);
        message1.setDescription(description);
        message1.setCreateTime(DataUtil.getTime());
        User user = (User) httpSession.getAttribute("user");
        messageService.insertMessage(message1, user.getId());
        messageService.deleteDraft(id);
        return "redirect:/message/selectAll";
    }

    @RequestMapping("/addDraft")
    public String addDraft(String description, String message, HttpSession httpSession) {
        User user = (User) httpSession.getAttribute("user");
        messageService.addDraft(description, message, user.getId());
        return "redirect:/message/draft?id=" + user.getId();
    }

    @RequestMapping("/recover")
    public String recover(int id){
        Message message = messageService.selectDeletedOne(id);
        messageService.insertMessage(message,message.getUser().getId());
        messageService.deleteDeleted(id);
        return "redirect:/message/selectAll";
    }
}
