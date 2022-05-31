package com.ldh.mapper;

import com.ldh.bean.Message;

import java.util.List;

public interface MessageMapper {
    List<Message> selectAll();

    Message selectOnce(int id);

    void insertMessage(Message mess, int id);

    List<Message> selectMine(int id);


    void insertIntoDeleted(Message note);

    void deleteMessage(int id);

    List<Message> selectDeleted(int id);

    void updateMessage(String description, String message, int id, String time);

    List<Message> selectDraft(int id);

    Message selectOneDraft(int id);

    void deleteDeleted(int id);

    void deleteDraft(int id);

    void draftUpdate(String description, String message, int id);

    void insertDraft(String description, String message, int id);

    Message selectDeletedOne(int id);
}
