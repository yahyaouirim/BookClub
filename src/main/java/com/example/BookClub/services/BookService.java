package com.example.BookClub.services;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.BookClub.models.Book;
import com.example.BookClub.repositories.BookRepository;

@Service
public class BookService {

	@Autowired
	private BookRepository repo;
	//get one book by id
	public Book findById(Long id) {
		
		Optional<Book> result = repo.findById(id);
		if(result.isPresent()) {
			return result.get();
		}
		
		return null;
	}
	
// retrieve all books
	public List<Book> all() {
		return repo.findAll();
	}
	// create one book
	public Book create(Book book) {
		return repo.save(book);
	}
	// update book
	public Book updateBook(Book b) {
		return repo.save(b);
	}
	
	//delete book
	
	public void deleteBook(Long id) {
		repo.deleteById(id);
	}
}