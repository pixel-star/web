/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.kulbachinskiy.kulbachinskiy.repository;

import org.obrii.mit.dp2021.kulbachinskiy.kulbachinskiy.entity.Lesson;
import org.obrii.mit.dp2021.kulbachinskiy.kulbachinskiy.entity.MarkLesson;
import org.obrii.mit.dp2021.kulbachinskiy.kulbachinskiy.entity.MarkLessonKey;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;


@RepositoryRestResource(collectionResourceRel = "mark", path="mark")
public interface MarkRepository extends JpaRepository<MarkLesson,MarkLessonKey>{
    
}
