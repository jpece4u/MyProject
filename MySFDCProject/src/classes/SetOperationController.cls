public class SetOperationController {
    String keyword;
    List<Account> accs;
   public String getkeyword(){
        
      return keyword;
    }
    public List<Account> getaccs(){
        
        return accs;
    }
    public void setkeyword(String s){
        
        keyword=s;
    }
    public PageReference searchResult(){
      accs=[SELECT Name,type,Phone,website FROM Account WHERE Industry=:keyword];  
        return null;
    }        
    public PageReference findResult(){
        accs=(List<Account>)[FIND :keyword RETURNING Account(Name,Type,Industry, Phone, Website)][0];
        return null;
    }
        
    

}