-- Знайти власників у яких у імені є послідовність букв "am"

SELECT * FROM user_profiles WHERE name LIKE '%am%';


-- Знайти найбільшу витрату серед Audi

SELECT MAX(totalCost) AS max_expense FROM expenses JOIN cars ON expenses.carId = cars.id JOIN car_brands ON cars.carBrandId = car_brands.id WHERE car_brands.title = 'Audi';


-- Знайти кількість моделей у брендів AUDI та BMW. Вивести стовпчики count_models та car_id

SELECT car_brands.id AS car_id, COUNT(car_models.id) AS count_models FROM car_models JOIN car_brands ON car_models.carBrandId = car_brands.id WHERE car_brands.title IN ('Audi', 'BMW') GROUP BY car_brands.id;


-- Знайдіть кількість власників за марками та моделями автомобілів. Вивести три стовпчики car_model, car_brand і user_count

SELECT car_models.title AS car_model, car_brands.title AS car_brand, COUNT(DISTINCT cars.userId) AS user_count FROM cars JOIN car_models ON cars.carModelId = car_models.id JOIN car_brands ON cars.carBrandId = car_brands.id GROUP BY car_models.title, car_brands.title;


-- Знайти імена юзерів, у яких є машини

SELECT DISTINCT user_profiles.name FROM user_profiles JOIN cars ON user_profiles.userId = cars.userId;
