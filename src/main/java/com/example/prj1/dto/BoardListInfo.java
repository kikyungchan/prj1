package com.example.prj1.dto;

import java.time.LocalDateTime;

public interface BoardListInfo {
    public String getId();

    public String getTitle();

    public String getWriter();

    public LocalDateTime getCreatedAt();
}
