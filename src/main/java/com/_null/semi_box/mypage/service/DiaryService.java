package com._null.semi_box.mypage.service;

import java.util.List;
import com._null.semi_box.mypage.model.vo.DiaryEntry;

public interface DiaryService {
    List<DiaryEntry> getDiaryList(String userPk);
}
