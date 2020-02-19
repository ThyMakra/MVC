public class Student {
    private int id;
    private String name;
    
    // must have 0 argument constructor. for best practice
    Student() {}
    
    Student(int id, String name) {
        this.id = id;
        this.name = name;
    }
    
    public int getId() {return this.id;}
    public String getName() {return this.name;}
    
    public void setId(int id) {this.id = id;}
    public void setId(String name) {this.name = name;}
    
}
