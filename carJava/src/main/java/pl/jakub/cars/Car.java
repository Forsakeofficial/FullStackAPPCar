package pl.jakub.cars;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Car {
    private int id;
    private String mark;
    private String model;
    private int year;
    private int price;
    private String img;
    private String fuel;
    private String engine;
    private String mileage;
    private String power;
}