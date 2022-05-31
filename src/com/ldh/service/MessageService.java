package com.ldh.service;

import com.ldh.bean.Message;

import java.util.List;

public interface MessageService {
    List<Message> selectAll();

    Message selecrOnce(int id);

    void insertMessage(Message mess, int id);

    List<Message> selectMine(int id);

    void insertIntoDeleted(Message message);

    void deleteMessage(int id);

    List<Message> selectDeleted(int id);

    void updateMessage(String description, String message, int id);

    List<Message> selectDraft(int id);

    Message selectOneDraft(int id);

    void deleteDeleted(int id);

    void deleteDraft(int id);

    void draftUpdate(String description, String message, int id);

    void addDraft(String description, String message, int id);

    Message selectDeletedOne(int id);
}
