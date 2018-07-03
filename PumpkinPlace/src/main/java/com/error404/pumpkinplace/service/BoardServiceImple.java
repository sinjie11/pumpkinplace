package com.error404.pumpkinplace.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.error404.pumpkinplace.domain.Board;
import com.error404.pumpkinplace.pageutil.PaginationCriteria;
import com.error404.pumpkinplace.persistence.BoardDao;

@Service
public class BoardServiceImple implements BoardService {

	@Autowired
	private BoardDao boardDao;

	@Override
	public List<Board> read() {

		return boardDao.select();
	}

	@Override
	public int create(Board board) {

		return boardDao.insert(board);
	}

//	@Override
//	public Board read(int b_section) {
//
//		return boardDao.select(b_section);
//	}

	@Override
	public Board readByBno(int bno) {
		return boardDao.selectByBno(bno);

	}

	@Override
	public int update(Board board) {

		return boardDao.update(board);
	}

	@Override
	public int delete(int b_no) {

		return boardDao.delete(b_no);
	}

	@Override
	public List<Board> read(int type, String keyword) {

		return boardDao.search(type, keyword);
	}

	@Override
	public int getNumOfRecords() {
		return boardDao.getNumOfRecords();
	}

	@Override
	public List<Board> read(PaginationCriteria criteria) {
		return boardDao.select(criteria);
	}

	@Override
	public List<Board> readSection(int b_section) {
		return boardDao.selectBySectionNo(b_section);
	}

	@Override
	public Board readDetail(int bno) {
		boardDao.pulsReadcnt(bno);//조회수 +1
		return boardDao.boardSelect(bno);//보드 불러오기 
	}
	
} 

