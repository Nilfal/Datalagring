/*
 * The MIT License (MIT)
 * Copyright (c) 2020 Leif Lindbäck
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction,including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so,subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

package se.kth.iv1351.jdbcintro;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

/**
 * A small program that illustrates how to write a simple JDBC program.
 */
public class BasicJdbc {
  private static final String TABLE_NAME = "instrument_rent";
  private static PreparedStatement terminateRental;
  private static PreparedStatement findInstrumentByType;
  private static PreparedStatement rentInstrument;
  private static PreparedStatement findInsturment;
  private static PreparedStatement toManyInstruments;

  private void accessDB() {
    try (Connection connection = createConnection()) {
   //   createTable(connection);
      prepareStatements(connection);
      listAllRows2();

    } catch (SQLException | ClassNotFoundException exc) {
      exc.printStackTrace();
    }
  }
/**
 * method to connect with the databse.
 * the database chosen at this point is mdb.
 **/
  private static Connection createConnection() throws SQLException, ClassNotFoundException {
    Class.forName("org.postgresql.Driver");
    return DriverManager.getConnection("jdbc:postgresql://localhost:5432/mdb",
      "postgres", "nilsnils");

  }
  /*
  * Method of list all the instruments that is not rented at the time.
  * */

  private static void listAllRows2() {
    try (ResultSet instrument_rent = findInsturment.executeQuery()) {
      while (instrument_rent.next()) {
        System.out.println(
                "id: " + instrument_rent.getString(1)
                        + ", Instrument: " + instrument_rent.getString(2)
                        + ", Price: " + instrument_rent.getString(5)
                        + ", Brand: " + instrument_rent.getString(4)
                        + ", Available: " + instrument_rent.getString(6)
                        + ", Booked by: " + instrument_rent.getString(7));
      }
    } catch (SQLException sqle) {
      sqle.printStackTrace();
    }
  }

/*
* Method to list all un rented instrument of a chosen instrument type example "base"
* */

  private static void listAllRows() {
    try (ResultSet instrument_rent = findInstrumentByType.executeQuery()) {
      while (instrument_rent.next()) {
        System.out.println(
                    "id: " + instrument_rent.getString(1)
                    + ", Instrument: " + instrument_rent.getString(2)
                    + ", Price: " + instrument_rent.getString(5)
                    + ", Brand: " + instrument_rent.getString(4)
                    + ", Available: " + instrument_rent.getString(6)
                    + ", Booked by: " + instrument_rent.getString(7));
      }
    } catch (SQLException sqle) {
      sqle.printStackTrace();
    }
  }

  private static void prepareStatements(Connection connection) throws SQLException {
    /*
    * Method for query to terminate a rental agrement with instrument id.
    * */
    terminateRental= connection.prepareStatement("UPDATE " + TABLE_NAME + " SET"
    + " student_id_0 = '0' , is_rented = '0' , is_terminated = '1'"+ " WHERE " + " instrument_id = ?");

    /*
    * method to use the query to find all instruments that are unrented.
    * */
    findInsturment = connection.prepareStatement("SELECT instrument_rent.instrument_id, instrument_rent.instrument_name,instrument_rent.price_id,instrument_rent.brand, price.amount," +
            " CASE" +
            " WHEN(is_rented = '1') THEN 'booked'" +
            " WHEN(is_rented = '0') THEN 'bookable'" +
            " END AS available," +
            " CASE" +
            " WHEN (person.first_name = '0') THEN 'unbooked'" +
            " WHEN (person.first_name != '0') THEN person.first_name" +
            " END AS booked_by" +
            " FROM instrument_rent" +
            " JOIN price" +
            " ON instrument_rent.price_id = price.price_id" +
            " JOIN student" +
            " ON instrument_rent.student_id_0 = student.student_id" +
            " JOIN person" +
            "  ON student.person_id = person.person_id" +
            " WHERE " + " is_rented = '0'");


/*
* Method to use query to rent a instrument.
* */

    rentInstrument = connection.prepareStatement("UPDATE "+ TABLE_NAME + " SET student_id_0 = ?"+ "," + "is_rented = 1 " + " WHERE instrument_id = ?");

    /*
    * Method to check if the stundet has allready 2 instruments rented.
    * */
    toManyInstruments = connection.prepareStatement("SELECT  COUNT(*)" +
            " FROM instrument_rent" +
            " WHERE " + "student_id_0 = ?" +
            " GROUP BY instrument_rent.student_id_0");

/*
* method to find an instrument by a specific type.
* */
    findInstrumentByType = connection.prepareStatement("SELECT instrument_rent.instrument_id, instrument_rent.instrument_name,instrument_rent.price_id,instrument_rent.brand, price.amount," +
            " CASE" +
            " WHEN(is_rented = '1') THEN 'booked'" +
            " WHEN(is_rented = '0') THEN 'bookable'" +
            " END AS available," +
            " CASE" +
            " WHEN (person.first_name = '0') THEN 'unbooked'" +
            " WHEN (person.first_name != '0') THEN person.first_name" +
            " END AS booked_by" +
            " FROM instrument_rent" +
            " JOIN price" +
            " ON instrument_rent.price_id = price.price_id" +
            " JOIN student" +
            " ON instrument_rent.student_id_0 = student.student_id" +
            " JOIN person" +
            "  ON student.person_id = person.person_id" +
            " WHERE " + " is_rented = '0'"+ "AND" + " instrument_name = ?");
  }

  public static void main(String[] args) {

    new BasicJdbc().accessDB();
    Scanner scan = new Scanner(System.in);
    Scanner scan1 = new Scanner(System.in);

    char forQuit;

    do {
      System.out.println( "\n Welcome to Sound good music rent store");
      System.out.println("\n 1, for looking at instrument available for rent");
      System.out.println("\n 2, for renting an instrument");
      System.out.println("\n 3 For terminate rental agreement");

      int option = scan.nextInt();
      switch (option) {

        case 1:
          System.out.println("Here is the instruments that is available");
          try (Connection connection = createConnection()) {
            System.out.println("What instrument are you looking for?");
            String select = scan1.nextLine();
            prepareStatements(connection);
            findInstrumentByType.setString(1, select);
            findInstrumentByType.executeQuery();
          listAllRows();
          } catch (SQLException | ClassNotFoundException exc) {
            exc.printStackTrace();
          }
          break;

        case 2:
          System.out.println("What instrument would you like to enter, please enter student id then instrument id.");
          try (Connection connection = createConnection()) {
            String select = scan1.nextLine();
            String select2 = scan1.nextLine();
            prepareStatements(connection);
            rentInstrument.setString(1, select);
           rentInstrument.setString(2, select2);
           toManyInstruments.setString(1, select);
           ResultSet result = toManyInstruments.executeQuery();
           result.next();
           int temp = result.getInt(1);
           if ( temp < 2) {
             rentInstrument.executeUpdate();
             System.out.println(" you have no rented Instruemtn with id :"+ select2);
           }else{
           System.out.println("RENTED TO MANY");}
          } catch (SQLException | ClassNotFoundException exc) {
            exc.printStackTrace();
          }
          break;
        case 3:
          System.out.println("Termintae an rental agremment, insert the instrument id that you would like to terminate.");
          try (Connection connection = createConnection()) {
            String select2 = scan1.nextLine();
            prepareStatements(connection);
            terminateRental.setString(1, select2);
            terminateRental.executeUpdate();
            listAllRows2();
          } catch (SQLException | ClassNotFoundException exc) {
            exc.printStackTrace();
          }
          break;


      }
      System.out.println("Press y to continue q to quit");
      forQuit = scan.next().charAt(0);
    }
    while (forQuit == 'y' || forQuit == 'Y');






  }
}
