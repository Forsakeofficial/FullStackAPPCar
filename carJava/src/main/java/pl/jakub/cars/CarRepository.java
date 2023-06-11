package pl.jakub.cars;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public class CarRepository {

    @Autowired
    JdbcTemplate jdbcTemplate;

    public List<Car> getAll(){
        return jdbcTemplate.query("SELECT id, mark, model, year, price, img, fuel, engine, mileage,power FROM car", BeanPropertyRowMapper.newInstance(Car.class));
    }

    public List<Car> getToFifty(){ //SAMOCHODY DO 50 TYS.
        return jdbcTemplate.query("SELECT * FROM car WHERE price < 50000;", BeanPropertyRowMapper.newInstance(Car.class));
    }


    public List<Car> getUpFifty(){ //SAMOCHODY POWYZEJ 50 TYS.
        return jdbcTemplate.query("SELECT * FROM car WHERE price > 50000;", BeanPropertyRowMapper.newInstance(Car.class));
    }

    public Car getById(int id){
        return jdbcTemplate.queryForObject("SELECT id, mark, model, year, price, img, fuel, engine, mileage, power FROM car WHERE " + "id=?", BeanPropertyRowMapper.newInstance(Car.class), id);
    }

    public int save(Car car) {
        jdbcTemplate.update("INSERT INTO car(mark, model, year, price, img, fuel, engine, mileage, power) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)",
                car.getMark(), car.getModel(), car.getYear(), car.getPrice(), car.getImg(), car.getFuel(), car.getEngine(), car.getMileage(), car.getPower());

        return 1;
    }

    public int update(Car car){
        return jdbcTemplate.update("UPDATE car SET mark=?, model=?, year=?, price=?, img=?, fuel=?, engine=?, mileage=?, power=? WHERE id=?",
                car.getMark(), car.getModel(), car.getYear(), car.getPrice(), car.getImg(),car.getFuel(), car.getEngine(), car.getMileage(), car.getPower(), car.getId());
    }

    public int delete(int id){
        return jdbcTemplate.update("DELETE FROM car WHERE id=?", id);
    }
}
