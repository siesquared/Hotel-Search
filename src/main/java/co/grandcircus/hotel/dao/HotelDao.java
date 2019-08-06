package co.grandcircus.hotel.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import co.grandcircus.hotel.entity.Hotel;



@Repository
@Transactional

public class HotelDao {
	@PersistenceContext
	EntityManager em;
	
	public List<Hotel> findAll(){
		 return em.createQuery("FROM Hotel",Hotel.class) 
					.getResultList();
			
		}
		
		public Hotel findById(Long id) {
			return em.find(Hotel.class, id);
			}
		
		public List<Hotel> findByCategory(String city) {
		
			return em.createQuery("FROM Hotel WHERE city = :city order by pricePerNight", Hotel.class)
					.setParameter("city", city)
					.getResultList();
		}
		

		public Hotel findByPrice(Integer pricePerNight) {
			return em.find(Hotel.class, pricePerNight);
		}
		
	//create new 	
		public void create( Hotel hotels) {
				em.persist(hotels);
			}
	//edit
			public void update(Hotel hotels) {
				em.merge(hotels);
			}
	
	
}
