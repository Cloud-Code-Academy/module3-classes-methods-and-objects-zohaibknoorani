/**
 * The ClassesObjectsMethods class serves as an exploration into Object Oriented Programming in Apex.
 * It covers fundamental aspects such as class instantiation, method creation, encapsulation, and object interaction.
 *
 * This class introduces developers to the concept of creating and manipulating objects in Apex. It discusses
 * how to define classes, create methods, and use objects. This class uses two example classes - Person and Book.
 * 
 * Topics covered in this class include:
 * - Understanding how to define a class in Apex.
 * - Understanding how to create methods in Apex.
 * - Understanding how to instantiate objects of a class.
 * - Understanding encapsulation and the importance of getter and setter methods.
 *
 * Users of this class can expect to gain a strong understanding of Object Oriented Programming in Apex and
 * be prepared for more advanced topics in Salesforce development.
 * 
 * The Person class is a simple representation of a person with properties like name and age, and a method
 * that allows the person to introduce themselves.
 * 
 * The Book class is a simple representation of a book with properties like title and author, and methods
 * to read and close the book.
 * 
 * Resources:
 * String class: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm
 * Date class: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_date.htm
 * Math class: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_math.htm
 * Classes: https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_classes_understanding.htm
 *
 * @author Zohaib Karim Noorani
 */

public with sharing class ClassesObjectsMethods {
    
    /**
     * Question 1
     * It initializes a String to "Hello, Salesforce!" and demonstrates usage of
     * the length, substring, and toLowerCase methods of the String class.
     * Example: practiceStringMethods() should return a list like ["17", "Hello", "hello, salesforce!"].
     * @return A list containing the length of the string, a substring of the string, and the string in lower case.
     */

    public static List<String> practiceStringMethods() {
        // Initialize a String with 'Hello, Salesforce!'
        String hello = 'Hello, Salesforce!';
        
        // Get the length of the String and convert it to a String type
        String len = String.valueOf(hello.length());
        
        // Get a substring of the String containing the first 5 characters
        String five = hello.substring(0, 5);
        
        // Convert the String to lower case
        String lower = hello.toLowerCase();
        
        // Initialize a list to store the string data
        List<String> stringCompile = new List<String>();
        
        // Add the string length to the list
        stringCompile.add(len);
        
        // Add the substring to the list
        stringCompile.add(five);
        
        // Add the lowercased string to the list
        stringCompile.add(lower);
    
        // Return the list containing the string data
        return stringCompile;
    }
    
    /**
     * Question 2
     * Check if the input string starts with 'Sales', ends with 'Force', and contains 'Awesome'.
     * Example: checkStringContent('Salesforce is Awesome!') should return a list like [true, false, true].
     * @param input The input string.
     * @return A list of boolean values indicating whether the string starts with 'Sales', ends with 'Force', or contains 'Awesome'.
     */
    public static List<Boolean> checkStringContent(String input) {
        // Initialize a list to store the results
        List<Boolean> wordChecker = new List<Boolean>();
        // Check if the string starts with 'Sales'
        if (input.substring(0, 5) == 'Sales'){
            wordChecker.add(true);
        } else {
            wordChecker.add(false);
        }
        
        // Check if the string ends with 'Force'
        if (input.substring(input.length() - 5) == 'Force'){
            wordChecker.add(true);
        } else {
            wordChecker.add(false);
        }

        // Check if the string contains 'Awesome'
        if (input.contains('Awesome')){
            wordChecker.add(true);
        } else {
            wordChecker.add(false);
        }
        
        return wordChecker; // Replace null with the variable you used to store the result
    }

    /**
     * Question 3
     * Take a sentence then remove any duplicate words, and return the sentence with only unique words.
     * Example: removeDuplicateWords('Hello Hello Salesforce Salesforce') should return 'Hello Salesforce'.
     * @param sentence The input sentence.
     * @return A string consisting of only unique words from the input sentence.
     */
    public static String removeDuplicateWords(String sentence) {
        // Split the sentence into individual words based on spaces
        List<String> splitSentence = new List<String>();
        splitSentence = sentence.split(' ');
        System.debug(splitSentence); // Debug the list of words to verify the split
    
        // Create a Set to store unique words (sets automatically remove duplicates)
        Set<String> uniqueWords = new Set<String>();
    
        // Iterate over each word in the list and add it to the Set
        for (String word : splitSentence) {
            uniqueWords.add(word);
        }
    
        // Join the unique words back into a single sentence, separated by spaces
        String finalSentence = '';
        finalSentence = String.join(new List<String>(uniqueWords), ' ');
    
        // Return the final sentence containing only unique words
        return finalSentence;
    }
    
    /**
     * Question 4
     * This method takes a string as a parameter, and calculates the number of vowels in the string.
     * For simplicity, we will consider only five vowels: 'a', 'e', 'i', 'o', 'u', and we will ignore case.
     * Example: countVowels("Hello World!") should return 3
     * @param s The string in which to count vowels.
     * @return The number of vowels in the string.
     */
    public static Integer countVowels(String str) {
        // Initialize the result variable to keep track of the vowel count
        Integer vowelCount = 0; 
    
        // Split the input string into individual characters and store them in a list
        List<String> vowelList = new List<String>();
        vowelList = str.split('');
    
        // Iterate through each character in the list
        for (String vowel : vowelList) {
            // Check if the current character is a vowel (a, e, i, o, u)
            if (vowel == 'a' || vowel == 'e' || vowel == 'i' || vowel == 'o' || vowel == 'u') {
                // Increment the vowel count if the character is a vowel
                vowelCount += 1;
            }
        }
    
        // Return the total number of vowels found in the input string
        return vowelCount;
    }
    

    /**
     * Question 5
     * Given a list of scientist names, combine their names together with a comma if it contains the letter 'g'.
     * The final string should not end with a comma.
     * Example: findTheScientist() should return "Alan Turing,Grace Hopper,Guido van Rossum,Stephen Hawking"
     * @return A string containing the names of scientists that contain the letter 'g'.
     */
    public static String findTheScientist() {
        // List of scientists' names
        List<String> scientistNames = new List<String>{
            'Tim Berners-Lee', 
            'Alan Turing', 
            'Grace Hopper', 
            'Donald Knuth', 
            'Guido van Rossum', 
            'Ken Thompson', 
            'Stephen Hawking'
        };
    
        // Initialize an empty string to store names containing 'g' or 'G'
        String gScientist = '';
    
        // Loop through each scientist's name in the list
        for (String scientist : scientistNames) {
            // Check if the name contains the letter 'g' or 'G'
            if (scientist.contains('g') || scientist.contains('G')) {
                // If it does, append the name to gScientist, followed by a comma
                gScientist = gScientist + scientist + ',';
            }
        }
    
        // Remove the trailing comma from the final string and return the result
        return gScientist.removeEnd(',');
    }
    

    /**
     * Question 6
     * This method calculates the absolute value of the difference between of two input numbers that are raised to the 2nd power.
     * Example: calculateDifferenceOfSquares(3, 4) should return 7.
     * @param a The first number.
     * @param b The second number.
     * @return The absolute value of the difference
     */
    public static Double calculateDifferenceOfSquares(Double a, Double b) {

        // Calculate the square of the first number
        Double aSquare = Math.pow(a, 2);
        
        // Calculate the square of the second number
        Double bSquare = Math.pow(b, 2);
    
        // Calculate the absolute difference between the two squares
        Double diff = Math.abs(bSquare - aSquare);
    
        // Return the result of the difference
        return diff;
    }
    

    /**
     * Question 7
     * Generate a random number between 50 and 100
     * Example: generateRandomNumber() should return a number like 75.
     * @return A integer between 50 and 100.
     */
    public static Integer generateRandomNumber() {
        // Generate a random integer between 0 and 99 by multiplying Math.random() by 100
        Integer randomInteger = (Integer) (Math.random() * 100);
    
        // Continue generating a new random number if it's not between 75 and 100
        while (randomInteger < 75 || randomInteger > 100) {
            randomInteger = (Integer) (Math.random() * 100);
        }
    
        // Return the random integer that falls within the range 75 to 100
        return randomInteger;
    }    

    /**
     * Question 8
     * Format the current date in the current user locale format.
     * Example: getCurrentDate() should return a string like "3/21/2001" for US locale users. Locale/String may differ depending on your location.
     * @return The current date in the current user locale format.
     */
    public static String getCurrentDate() {
        // Get the todays date
        String mydate = Date.today().format();
        // Return the result
        return mydate; // Replace null with the variable you used to store the result
    }

    /**
     * Question 9
     * Given a date time return the day of the week in number format
     * @param dt the current date and time
     * @return The number of the day of the week for the given date.
     */
    public static String getDayOfWeek(DateTime dt) {

        // Format the given DateTime object to retrieve the full name of the day (e.g., "Monday").
        String getDay = dt.format('EEEE');
    
        // Create a map that associates each day of the week with its corresponding number.
        Map<String, String> numberDay = new Map<String, String>{
            'Monday' => '1',
            'Tuesday' => '2',
            'Wednesday' => '3',
            'Thursday' => '4',
            'Friday' => '5',
            'Saturday' => '6',
            'Sunday' => '7'
        };
    
        // Return the number associated with the day of the week.
        return numberDay.get(getDay);
    }


    /**
     * Question 10
     * Calculate the difference between the years of two dates
     * For example, if the first date is 2023-01-01 and the second date is 2025-12-31, the method should return 2
     * If either of the dates is null, return null.
     * @param d1 The first date.
     * @param d2 The second date.
     * @return The a positive number years between the two dates, or null if either date is null.
     */
    public static Integer calculateYearDifference(Date d1, Date d2) {

        // Check if either of the input dates is null. If so, return null.
        if (d1 == null || d2 == null) {
            return null;
        }
    
        // Calculate the difference in years between the two dates.
        Integer diff = d1.year() - d2.year();
    
        // Return the absolute value of the difference to ensure it's a positive number.
        return Math.abs(diff);
    }

  /**
 * Question 11
 * The Book class represents a book in a library.
 * Each Book object has a title, an author, and a number of pages.
 * It also includes methods to return these details.
 * This class can be used in the context of a library management system, bookstore, etc.,
 * where you need to manipulate and manage book information.
 */
public class Book {
    // Declare instance variables for the title, author, and number of pages in the book.
    
    // The title of the book
    String title;

    // The author of the book
    String author;

    // The number of pages in the book
    Integer pages;

    /**
     * Constructor to initialize a Book object with the provided title, author, and pages.
     * @param title The title of the book.
     * @param author The author of the book.
     * @param pages The number of pages in the book.
     */
    public Book(String title, String author, Integer pages) {
        // Initialize the instance variables with the provided values.
        this.title = title;
        this.author = author;
        this.pages = pages;
    }

    /**
     * Method that returns a string containing the details of the book.
     * @return A string in the format "Title: <title>, Author: <author>".
     */
    public String getBookDetails() {
        // Construct the details string by combining the title and author.
        String details = 'Title: ' + this.title + ', ' + 'Author: ' + this.author;

        // Return the constructed details string.
        return details;
    }
}

    /**
     * Question 12
     * Create a Book object and return the details of the book.
     * For example, createAndGetBookDetails() should return a string like "Title: A Brief History of Time, Author: Stephen Hawking".
     * @return A string containing the details of the book.
     */
    public static String createAndGetBookDetails() {
        // Create a Book object with the title "A Brief History of Time", author "Stephen Hawking".
        Book myBook = new Book('A Brief History of Time', 'Stephen Hawking', 200);

        // Call the getBookDetails method on the Book object to retrieve the book's details.
        return myBook.getBookDetails();
    }

/**
 * Question 13
 * Create and update two Book objects and return the list of books.
 * For example, generateBookList(Book) should return a list like ["Title: Harry Potter and the Chamber of Secrets, Author: J.K. Rowling", "Title: A Brief History of Time, Author: Stephen Hawking"].
 * The method updates the first book's values and creates a second book with specific values.
 * @param myBook1 The first Book object to be updated.
 * @return A list of Book objects containing the updated first book and the newly created second book.
 */
public static List<Book> generateBookList(Book myBook1) {

    // Create an empty list to store Book objects.
    List<Book> listOfBooks = new List<Book>();
    
    // Update the first book's title, author, and number of pages.
    myBook1.title = 'Harry Potter and the Chamber of Secrets';
    myBook1.author = 'J.K. Rowling';
    myBook1.pages = 352;

    // Create a new Book object with the title "A Brief History of Time", author "Stephen Hawking", and 200 pages.
    Book myBook2 = new Book('A Brief History of Time', 'Stephen Hawking', 200);
    
    // Update the pages for "A Brief History of Time" to 256.
    myBook2.pages = 256;

    // Add the updated first book to the list of books.
    listOfBooks.add(myBook1);

    // Add the newly created second book to the list of books.
    listOfBooks.add(myBook2);

    // Return the list containing both Book objects.
    return listOfBooks;
}


    /**
     * Question 14
     * The Person class represents a person.
     * Each Person object has a name and an age, and methods to return these details.
     * This class can be used in the context of a school, college, etc.
     * where you need to manipulate and manage person information.
     */
    public class Person {
        // Declare private two instance variables - (TEXT) name and (Number) age
        private String name;
        private Integer age;
        
        // Constructor to initialize the name and age

        public Person (String name,Integer age){
            this.name = name;
            this.age = age;

        }
    
        // Method introduceYourself that returns the details of the person    

        // Return a string in the format "Hello, my name is <name> and I am <age> years old."
        // For example, introduceYourself() should return a string like "Hello, my name is John Doe and I am 28 years old."

        public String introduceYourself(){
            String introduction = 'Hello, my name is ' + this.name + ' and I am ' + this.age + ' years old.';
            return introduction;
        }

        // Getter method that returns the name of the person

        public String getName(){
            return this.name;
        }

        // Getter method that returns the age of the person

        public Integer getAge(){
            return this.age;
        }

        // Setter method that sets the name of the person

        public void setName(String name){
            this.name = name;
        }

        // Setter method that sets the age of the person

        public void setAge(Integer age){
            this.age = age;
        }
    }

    /**
     * Question 15
     * Create a Person object and returns the details of the person.
     * For example, personDetails() should return a list like ["Hello, my name is John Doe and I am 28 years old.", "John Doe", "28"].
     * @return A string containing the details of the person.
     */

    public static List<String> personDetails() {

        List<String> results = new List<String>();

        // Create a new instance of Person class

        Person johnDoe = new Person('John Doe',28);
        // Name the person 'John Doe' and set the age to 28

        // Add the details of the person using the introduceYourself method
        results.add(johnDoe.introduceYourself());

        // Get the name of the person using the getter method and add it to the list
        results.add(johnDoe.getName());

        // Get the age of the person using the getter method and add it to the list
        results.add(String.valueOf(johnDoe.getAge()));
        
        return results; // Replace null with the variable you used to store the result
    }

    /**
     * Question 16
     * Create a Person object with the provided name and age.
     * @param name The name of the person.
     * @param age The age of the person.
     * @return A new instance of the Person class.
     */
    public static Person createPerson(String name, Integer age) {
        // Create a new instance of the Person class using the provided name and age
        Person newPerson = new Person(name,age);
        
        // Return the new instance of the Person class
        return newPerson; // Replace null with the variable you used to store the result
    }

    /**
     * Question 17
     * Create a method that constructs multiple Person objects.
     * You are to create a new Person object for each name in the provided List<String> of names,
     * using the same age for all Person objects. The method should return a List<Person> of all the Person objects created. 
     * @param names A list of names.
     * @param age The age to be set for all the Person objects.
     * @return A list of new Person objects.
     */
    public static List<Person> createMultiplePersons(List<String> names, Integer age) {
        
        // Initialize a new list to hold the Person objects
        List<Person> personList = new List<Person>();


        // Loop through each name in the provided list
        for(String name : names){
            // Create a new Person object for each name and add it to the list
            personList.add(createPerson(name, age));
        }
        
        // Return the list of Person objects
        return personList;
    }


    /**
     * Question 18
     * Compare two Person objects based on their ages.
     * If the first Person is older, the method should return the first Person. If the second Person is older, it should return the second Person.
     * If they are the same age, return either.
     *
     * @param person1 The first Person object.
     * @param person2 The second Person object.
     * @return The Person object of the older person.
     */
    public static Person getOlderPerson(Person person1, Person person2) {

        // Compare the ages of the two Person objects
        if(person1.getAge() >= person2.getAge()){
            // Return person1 if they are older or the same age as person2
            return person1;
        }
        else{
            // Return person2 if they are older
            return person2;
        }
         
    }
}