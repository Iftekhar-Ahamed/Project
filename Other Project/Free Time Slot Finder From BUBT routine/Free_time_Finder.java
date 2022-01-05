/*Asalamulaikum.I build this project for my own need simplify my work.I build it after learning lava 3 class.So don't expect much better clean code.Insoallah improve day by day.*/
import java.util.*;

class day {
    LinkedHashMap<String, Integer> Period = new LinkedHashMap<String, Integer>();

    day() {
        Period.put("8:30-9:30", 0);

        Period.put("9:30-10:30", 0);
        
        Period.put("10:30-11:30", 0);

        Period.put("11:30-12:30", 0);

        Period.put("1:00-2:00", 0);

        Period.put("2:00-3:00", 0);

        Period.put("3:00-4:00", 0);

        Period.put("4:00-5:00", 0);

        Period.put("5:00-6:00", 0);
        

    }

    day(LinkedHashMap<String, Integer> period) {
        Period = period;
    }
}

class All_class {
    HashMap<String, day> Week = new HashMap<String, day>();

    All_class() {
        System.out.println("Sunday");
        Week.put("sun", new day(Free_time_Finder.enter_period()));
        System.out.println("Monday");
        Week.put("mon", new day(Free_time_Finder.enter_period()));
        
        System.out.println("Tuesday");
        Week.put("tue", new day(Free_time_Finder.enter_period()));
        System.out.println("Wednesday");
        Week.put("wed", new day(Free_time_Finder.enter_period()));
        System.out.println("Thusday");
        Week.put("thu", new day(Free_time_Finder.enter_period()));
        

    }

    All_class(boolean x) {
        Week.put("sun", new day());
        Week.put("mon", new day());
        
        Week.put("tue", new day());
        Week.put("wed", new day());
        Week.put("thu", new day());
        
    }

    void make_change(All_class a){
        for(Map.Entry<String,day>m:a.Week.entrySet()){
            this.Week.put(m.getKey(), Free_time_Finder.make_change(this.Week.get(m.getKey()),m.getValue()));

        }
    }
    void print(){
        for(Map.Entry<String,day>m:this.Week.entrySet()){
            day temp=m.getValue();
            System.out.println(m.getKey()+" : "+temp.Period+"\n");
        }
    }

}

public class Free_time_Finder {
    static Scanner sc = new Scanner(System.in);
    static All_class Final = new All_class(true);

    static LinkedHashMap<String, Integer> enter_period() {

        LinkedHashMap<String, Integer> Period = new LinkedHashMap<String, Integer>();

        int x;

        System.out.print("8:30-9:30 = ");
        x = sc.nextInt();
        Period.put("8:30-9:30", x);

        System.out.print("9:30-10:30 = ");
        x = sc.nextInt();
        Period.put("9:30-10:30", x);
        
        System.out.print("10:30-11:30 = ");
        x = sc.nextInt();
        Period.put("10:30-11:30", x);

        System.out.print("11:30-12:30 = ");
        x = sc.nextInt();
        Period.put("11:30-12:30", x);

        System.out.print("1:00-2:00 = ");
        x = sc.nextInt();
        Period.put("1:00-2:00", x);

        System.out.print("2:00-3:00 = ");
        x = sc.nextInt();
        Period.put("2:00-3:00", x);

        System.out.print("3:00-4:00 = ");
        x = sc.nextInt();
        Period.put("3:00-4:00", x);

        System.out.print("4:00-5:00 = ");
        x = sc.nextInt();
        Period.put("4:00-5:00", x);

        System.out.print("5:00-6:00 = ");
        x = sc.nextInt();
        Period.put("5:00-6:00", x);
        
        return Period;
    }



    static day make_change(day a, day b) {
        
        for (Map.Entry<String,Integer> m : b.Period.entrySet()) {

            if(m.getValue()==1){
                a.Period.put(m.getKey(), 1);
            }
            
        }
        return a;
    }

    public static void main(String[] args) {
        String intake;
        LinkedHashMap<String, All_class> data = new LinkedHashMap<String, All_class>();
        while (true) {
            intake = sc.nextLine();
            if (intake.equals("Q")){
                break;
            }else if(intake==""){
                continue;
            } else {
                data.put(intake, new All_class());
            }
        }
       
        for (Map.Entry<String, All_class> m : data.entrySet()) {
            Final.make_change(m.getValue());
        }
        Final.print();
        sc.close();
    }
}
/*IFTEKHAR AHAMED SIDDIQUEE,BANGLADESH UNIVERSITY OF BUSINESS AND TECHNOLOGY(BUBT)*/
