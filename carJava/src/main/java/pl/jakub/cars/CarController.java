package pl.jakub.cars;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/cars")
@CrossOrigin
public class CarController {

    @ExceptionHandler  //BŁĄD 400
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public ResponseEntity<String> handleBadRequest(Exception e) {
        return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Error 400");
    }

    @Autowired
    CarRepository carRepository;

    @GetMapping("") //pobieranie wszystkich samochodow
    public List<Car> getAll() {
        return carRepository.getAll();
    }

    @GetMapping("/priceToFifty") //samochody do 50 tys. (cena)
    public List<Car> getToFifty() {
        return carRepository.getToFifty();
    }

    @GetMapping("/priceUpFifty") //samochody powyzej 50 tys. (cena)
    public List<Car> getUpFifty() {
        return carRepository.getUpFifty();
    }

    @Transactional
    @GetMapping("/{id}")
    public ResponseEntity<?> getById(@PathVariable("id") int id) {
        try {
            Car car = carRepository.getById(id);
            if (car != null) {
                return ResponseEntity.ok(car);
            } else {
                return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Nie znaleziono samochodu o podanym identyfikatorze");
            }
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Wystąpił błąd podczas pobierania danych");
        }
    }

    @Transactional
    @PostMapping("/add")
    public ResponseEntity<?> add(@RequestBody Car car) {
        try {
            if (car == null) {
                return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Nieprawidłowe dane samochodu");
            }
            carRepository.save(car);
            return ResponseEntity.ok().build();
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Wystąpił błąd podczas dodawania samochodu");
        }
    }

    @Transactional
    @PatchMapping("/{id}")
    public ResponseEntity<?> patchUpdate(@PathVariable("id") int id, @RequestBody Car updatedCar) {
        try {
            Car car = carRepository.getById(id);

            if (car != null) {
                if (updatedCar.getMark() != null) car.setMark(updatedCar.getMark());
                if (updatedCar.getModel() != null) car.setModel(updatedCar.getModel());
                if (updatedCar.getYear() > 0) car.setYear(updatedCar.getYear());
                if (updatedCar.getPrice() > 0) car.setPrice(updatedCar.getPrice());
                if (updatedCar.getImg() != null) car.setImg(updatedCar.getImg());
                if (updatedCar.getFuel() != null) car.setFuel(updatedCar.getFuel());
                if (updatedCar.getEngine() != null) car.setEngine(updatedCar.getEngine());
                if (updatedCar.getMileage() != null) car.setMileage(updatedCar.getMileage());
                if (updatedCar.getPower() != null) car.setPower(updatedCar.getPower());

                carRepository.update(car);

                return ResponseEntity.ok().build();
            } else {
                return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Nie znaleziono samochodu o podanym identyfikatorze");
            }
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Wystąpił błąd podczas aktualizacji samochodu");
        }
    }

    @Transactional
    @DeleteMapping("/{id}")
    public ResponseEntity<?> delete(@PathVariable("id") int id) {
        try {
            int result = carRepository.delete(id);
            if (result == 1) {
                return ResponseEntity.ok().build();
            } else {
                return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Nie znaleziono samochodu o podanym identyfikatorze");
            }
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Wystąpił błąd podczas usuwania samochodu");
        }
    }

}
