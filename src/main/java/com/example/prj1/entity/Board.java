package com.example.prj1.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDateTime;

@Entity
@Table(name = "board")
@Getter
@Setter
@ToString
public class Board {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String title;
    private String content;
    private String writer;

    @Column(name = "created_at", updatable = false, insertable = false)
    private LocalDateTime createdAt;
}
