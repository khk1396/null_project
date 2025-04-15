package com._null.semi_box.mypage.service;

import com._null.semi_box.mypage.model.vo.ModifyPassword;

public interface ModifyPasswordService {
    boolean checkCurrentPassword(int userPk, String currentPwd);
    boolean updatePassword(ModifyPassword modifyPassword);
}
