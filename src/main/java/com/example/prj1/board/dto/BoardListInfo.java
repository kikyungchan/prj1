package com.example.prj1.board.dto;

import com.example.prj1.member.dto.MemberListInfo;

import java.time.LocalDateTime;

public interface BoardListInfo {
    public String getId();

    public String getTitle();

    public MemberListInfo getWriter();

    public LocalDateTime getCreatedAt();
}
