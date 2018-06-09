public abstract class Pen {
String penBrand;
    String penColor;
    static Integer pencountNumber=0;
    public Pen(){
        system.debug('constructor is called');
        system.debug('incrementing static variable');
        pencountNumber++;
        
        
    }
    public void write1(){
        
        system.debug('Write1 Method is called from Pen');
    }
    
     public abstract void write2();
        
        
    
    public static void penCount(){
        
        system.debug('Pen count is'+pencountNumber);
    }
    
}