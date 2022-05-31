package com.ldh.service.impl;

import com.ldh.bean.Message;
import com.ldh.mapper.MessageMapper;
import com.ldh.service.MessageService;
import com.ldh.util.DataUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MessageServiceImpl implements MessageService {
    @Autowired
    MessageMapper messageMapper;

    @Override
    public List<Message> selectAll() {
        return messageMapper.selectAll();
    }

    @Override
    public Message selecrOnce(int id) {
        return messageMapper.selectOnce(id);
    }

    @Override
    public void insertMessage(Message mess, int id) {
        messageMapper.insertMessage(mess, id);
    }

    @Override
    public List<Message> selectMine(int id) {
        return messageMapper.selectMine(id);
    }

    @Override
    public void insertIntoDeleted(Message message) {
        message.setUpdateTime(DataUtil.getTime());
        messageMapper.insertIntoDeleted(message);
    }

    @Override
    public void deleteMessage(int id) {
        messageMapper.deleteMessage(id);
    }

    @Override
    public List<Message> selectDeleted(int id) {
        return messageMapper.selectDeleted(id);
    }

    @Override
    public void updateMessage(String description, String message, int id) {

         messageMapper.updateMessage(description, message, id , DataUtil.getTime());
    }

    @Override
    public List<Message> selectDraft(int id) {
        return messageMapper.selectDraft(id);
    }

    @Override
    public Message selectOneDraft(int id) {
        return messageMapper.selectOneDraft(id);
    }

    @Override
    public void deleteDeleted(int id) {
        messageMapper.deleteDeleted(id);
    }

    @Override
    public void deleteDraft(int id) {
        messageMapper.deleteDraft(id);
    }

    @Override
    public void draftUpdate(String description, String message, int id) {
        messageMapper.draftUpdate(description, message, id);
    }

    @Override
    public void addDraft(String description, String message, int id) {
        messageMapper.insertDraft(description, message, id);
    }

    @Override
    public Message selectDeletedOne(int id) {
        return messageMapper.selectDeletedOne(id);
    }


}
