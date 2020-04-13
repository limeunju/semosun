package com.oceans.semosun.review.model.service;

import java.util.HashMap;
import java.util.List;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oceans.semosun.review.model.dao.ReviewDAO;
import com.oceans.semosun.review.model.vo.Review;
import com.oceans.semosun.teacher.model.vo.Teacher;

@Service
public class ReviewService {
	@Autowired
	ReviewDAO rDao;

	public int insertReview(Review review) {
		return rDao.insertReview(review);
	}

	public List<Review> selectListTeacherReview(int tNo, int userNo, int cPage, int numPerPage) {
		return rDao.selectListTeacherReview(tNo, userNo, cPage, numPerPage);
	}

	public Teacher selectOneTeacher(int tNo) {
		return rDao.selectOneTeacher(tNo);
	}

	public int deleteReview(int rno) {
		return rDao.deleteReview(rno);
	}

	public HashMap<String, String> selectChartMap(int tNo) {
		HashMap<String, String> map = new HashMap<>();
		map = rDao.selectChart(tNo);
		HashMap<String, String> resultMap = new HashMap<>();
		String chartStr = "";
		System.out.println(map);
		
		resultMap.put("total", map.get("TOTAL"));
		
		for(int i = 1; i < map.size() ; i++) {
			if(i < map.size()-1) {
				chartStr += map.get("SCORE"+i) + ", ";
			} else {
				chartStr += map.get("SCORE"+i);
			}
		}
		
		resultMap.put("chartStr", chartStr);
		
		return resultMap;
	}

	public HashMap<String, String> selectReviewLevel(int tNo) {
		HashMap<String, String> map = new HashMap<>();
		map = rDao.selectReviewLevel(tNo);
		HashMap<String, String> resultMap = new HashMap<>();
		
		return map;
	}

	public List<Review> selectReviewLive() {
		
		return rDao.selectReviewLive();
	}

	public List<Review> selectBestReview() {
		return rDao.selectBestReview();
	}

	public int totalReviewPerTeacher(int tNo) {
		return rDao.totalReviewPerTeacher(tNo);
	}
	public float averagePerTeacher(int tNo) {
		return rDao.averagePerTeacher(tNo);
	}
	public int likeReview(Boolean isLike, int rno, int userNo, int tNo) {
		return rDao.likeReview(isLike, rno, userNo, tNo); 
	}

	public int updateReview(Review review) {
		return rDao.updateReview(review);
	}

	public Review selectOneReview(int rno) {
		return rDao.selectOneReview(rno);
	}


}
