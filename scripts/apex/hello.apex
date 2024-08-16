public class Person {
    // Declare private two instance variables - (TEXT) name and (Number) age
    private String name;
    private Integer age;
    
    // Constructor to initialize the name and age

    public Person (String name,Integer age){
        this.name = name;
        this.age = age;

    }
    public String introduceYourself(){
        String introduction = 'Hello my name is ' + this.name + ' and I am ' + this.age + ' years old.';
        return introduction;
    }


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

Person newPerson = new Person('Zee', 34);
System.debug(newPerson.introduceYourself());
System.debug(newPerson.name);
// System.System.debug(newPerson.getName());































//  public class Book {
//     // Declare three public instance variables - title, author, pages
//     // title
//     String title;
//     // author
//     String author;
//     // pages
//     Integer pages;

//     // Book constructor to initialize the title and author
//     public Book(String title, String author, Integer pages) {
//         this.title = title;
//         this.author = author;
//         this.pages = pages;

//         // Initialize the title and author
//     }

//     public String getBookDetails() {

//         String details = 'Title: ' + this.title + ', ' + 'Author: ' + this.author;
//         // return A string containing the details of the book in the format "Title: <title>, Author: <author>"
//         return details; // Replace null with the variable you used to store the result
//     }
// }

// Book mybook = new Book('ABC','CDE',90);
// System.debug(mybook.author);
// System.debug(mybook.getBookDetails());

// public static List<Book> generateBookList(Book myBook1) {

//     List<Book> listOfBooks = new List<Book>();
//     // Create a list of books
    
//     myBook1.title = 'Harry Potter and the Chamber of Secrets';
//     myBook1.author = 'J.K. Rowling';
//     myBook1.pages = 352;

//     // Create a new Book object with title "A Brief History of Time" and author "Stephen Hawking"
//     Book myBook2 = new Book('A Brief History of Time', 'Stephen Hawking', 200);
//     myBook2.pages = 256;

//     // Update the pages for A Brief History of Time to 256
//     listOfBooks.add(myBook1);
//     listOfBooks.add(myBook2);

//     // Add the book to the list
    
//     return listOfBooks; // Replace null with the variable you used to store the result      
// }

// System.debug(generateBookList(mybook));





















// Datetime tdy = Date.today();

// Integer year = tdy.year();

// System.debug(year);



// String getDay = tdy.format('EEEE');

// System.debug(getDay);



// String mydate = Date.today().format();
// System.debug(mydate);

// System.debug(mydate);
// System.debug(mydate.format('MM.dd.yyyy'));
// System.debug(mydate.format('MM/dd/yyyy'));

// date myDate = Date.today();
// String dayString = myDate.format();
// System.debug(dayString);

// System.debug(Date.today().format('MM.dd.yyyy'));

// String myDate = Date.today();

// System.debug(myDate);

// String formattedDate = myDate.format('MM/dd/yyy');

// System.debug(formattedDate);

// // 3/21/2001('MM/dd/yyy')






// Integer randomInteger = (Integer) (Math.random()*100);

// while (randomInteger < 75 || randomInteger > 100){
//     randomInteger = (Integer) (Math.random()*100);
// }

// System.debug(randomInteger);














// System.debug(Math.pow(-4, 2));

// List<String> scientistNames = new List<String>{'Tim Berners-Lee', 'Alan Turing', 'Grace Hopper', 'Donald Knuth', 'Guido van Rossum', 'Ken Thompson', 'Stephen Hawking'};

//        String gScientist = '';
//     //    Integer i = 1;

//        for (String scientist: scientistNames){
//             // i+= 1;
//         System.debug(scientist);

//         if (scientist.contains('g') || scientist.contains('G') ){
//             gScientist = gScientist + scientist + ', ';
    
//         }
//         System.debug(gScientist);
//         System.debug(gScientist.removeEnd(','));
//         }
        
    






// String name = 'Hello Hello Salesforce Salesforce';
// List<String> splitSentence = new List<String>();
// splitSentence = name.split(' ');
// system.debug(splitSentence);

// Set<String> uniqueWords = new Set<String>();
// for (String word: splitSentence){
//     uniqueWords.add(word);
// }

// System.debug(uniqueWords);

// String finalSentence = String.join(new List<String>(uniqueWords), ' ');

// System.debug(finalSentence);

// // Return the sentence with unique words
// return finalSentence;














