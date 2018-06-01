package kr.co.udf.reply.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.co.udf.reply.domain.Criteria;
import kr.co.udf.reply.domain.PageMaker;
import kr.co.udf.reply.domain.Reply;
import kr.co.udf.reply.service.ReplyService;

@RestController
@RequestMapping("/replies")
public class ReplyController {

  @Inject
  private ReplyService service;

  @RequestMapping(value = "", method = RequestMethod.POST)
  public ResponseEntity<String> register(@RequestBody Reply reply) {

    ResponseEntity<String> entity = null;
    try {
      service.addReply(reply);
      entity = new ResponseEntity<String>("success", HttpStatus.OK);
    } catch (Exception e) {
      e.printStackTrace();
      entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
    }
    return entity;
  }

  @RequestMapping(value = "/all/{article_no}", method = RequestMethod.GET)
  public ResponseEntity<List<Reply>> list(@PathVariable("article_no") Integer article_no) {

    ResponseEntity<List<Reply>> entity = null;
    try {
      entity = new ResponseEntity<>(service.listReply(article_no), HttpStatus.OK);

    } catch (Exception e) {
      e.printStackTrace();
      entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
    }

    return entity;
  }

  @RequestMapping(value = "/{reply_no}", method = { RequestMethod.PUT, RequestMethod.PATCH })
  public ResponseEntity<String> update(@PathVariable("reply_no") Integer reply_no, @RequestBody Reply reply) {
    ResponseEntity<String> entity = null;
    try {
      reply.setReply_no(reply_no);
      service.modifyReply(reply);

      entity = new ResponseEntity<String>("success", HttpStatus.OK);
    } catch (Exception e) {
      e.printStackTrace();
      entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
    }
    return entity;
  }

  @RequestMapping(value = "/{reply_no}", method = RequestMethod.DELETE)
  public ResponseEntity<String> remove(@PathVariable("reply_no") Integer reply_no) {
    ResponseEntity<String> entity = null;
    try {
      service.removeReply(reply_no);
      entity = new ResponseEntity<String>("success", HttpStatus.OK);
    } catch (Exception e) {
      e.printStackTrace();
      entity = new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);
    }
    return entity;
  }
  

  @RequestMapping(value = "/{article_no}/{page}", method = RequestMethod.GET)
  public ResponseEntity<Map<String, Object>> listPage(
      @PathVariable("article_no") Integer article_no,
      @PathVariable("page") Integer page) {

    ResponseEntity<Map<String, Object>> entity = null;
    
    try {
      Criteria cri = new Criteria();
      cri.setPage(page);

      PageMaker pageMaker = new PageMaker();
      pageMaker.setCri(cri);

      Map<String, Object> map = new HashMap<String, Object>();
      List<Reply> list = service.listReplyPage(article_no, cri);

      map.put("list", list);

      int replyCount = service.count(article_no);
      pageMaker.setTotalCount(replyCount);

      map.put("pageMaker", pageMaker);

      entity = new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);

    } catch (Exception e) {
      e.printStackTrace();
      entity = new ResponseEntity<Map<String, Object>>(HttpStatus.BAD_REQUEST);
    }
    return entity;
  }

  
  
  
}
