PART 2: SQL

    Create a database called wizards. The rest of the assesment all will take place in the wizards db.

    Create a table called wizards with the following columns (name, age).
        CREATE TABLE wizards (
            id PRIMARY_KEY INTEGER NOT NULL AUTO_INCREMENT,
            name VARCHAR(30) NOT NULL,
            age INTEGER
        );

    Write a statement to count the number of rows in the wizards table. How many wizards are there?
        SELECT COUNT(*) FROM wizards;
        There are no wizards in the DB yet, so the count is zero.



    Insert a wizard into the database.
        INSERT INTO wizards
        VALUES('Mystic Ruler', 25);

    Write a statement to count the number of rows in the wizards table. How many wizards are there now?
        SELECT COUNT(*) FROM wizards;
        There is now 1 wizard there.


    Insert another wizard into the database.
        INSERT INTO wizards
        VALUES('Wizard Apprentice', 13);

    Write a statement to change the second wizards age to 21.
        UPDATE wizards
        SET age = 21
        WHERE name = 'Wizard Apprentice';

    Write a statement to change all wizards ages to 40.
        UPDATE wizards
        SET age = 40;

    Write a statement to delete the last wizard.
        DELETE FROM wizards
        WHERE name = 'Wizard Apprentice';

    Write a statement to delete the wizards table.
        DROP TABLE wizards

    Create two data models for wizards. The wizards are going to have a name, an age and two powers each. Let's pretend we're in a world where wizards have many powers, but powers belong to one wizard (two wizards cant have the same power) Each power is going to have a name and a damage amount. Write out the sql to create the two schemas and some sample records. What are the costs/benefits of the two approaches? If you only see one way of doing this that's ok. Please explain any potential problems with your approach. What questions can this schema answer easily? What questions can this schema not answer easily?

        CREATE TABLE wizards(
            id PRIMARY_KEY INTEGER NOT NULL AUTO_INCREMENT,
            name VARCHAR(30) NOT NULL,
            age INTEGER,
            power_id1 INTEGER,
            power_id2 INTEGER 
        );

        CREATE TABLE powers(
            id PRIMARY_KEY INTEGER NOT NULL,
            name VARCHAR(30) NOT NULL,
            damage INTEGER
        );

        writing the schema in this way should make it easy to resolve the powers of each wizard, but make figuring out the total damage that each wizard can inflict difficult.
    Retrieve all the wizards with powers that have the letter "l" in them.

    Retrieve all the wizards who have a combined damage of 10 or more.

    Retrieve all the wizards sorted by their total damage. Your returned data should look like so.. wizard_name, total_damage.

    Create a wizard that has no powers.
        INSERT INTO wizards
        VALUES('NoPowers', 20);

    Retrieve all wizards that have no powers.
        SELECT * FROM wizards
        WHERE power_id1 = NULL
        AND power_id2 = NULL;

    Create a data model for wizards for a world where wizards have many powers and multiple wizards can have the same power. Create some sample records.
        Looking at this question, I think I have the other previous question of this type wrong (#11), because I didn't enforce the uniqueness of the powers.


    Retrieve the first wizard and any powers he/she has with damage greater than 5.

    What's the difference between an outer and inner join?

    If I just write JOIN, is that an inner or outer join?
        JOIN by itself is just an inner join

    When would I want to use an outer join?
