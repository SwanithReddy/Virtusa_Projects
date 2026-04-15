import java.util.*;
public class Account {
    private String accountholdername;
    private int balance;
    private ArrayList<String> history;

    public Account(String accountholdername,int balance){
        this.accountholdername=accountholdername;
        this.balance=balance;
        this.history=new ArrayList<>();
    }

    

    public int getBalance() {
        return balance;
    }

    public String getAccountholdername(){
        return accountholdername;
    }

    public void deposit(int amount){
        if(amount<0){
            throw new IllegalArgumentException("amount should not be negative");
        }
        balance=balance+amount;
        addTransaction("deposited"+amount);
        System.out.print("Amount deposited...");
    }

    public void withdraw(int amount) throws InsufficientfundsException{
        if(amount<=0){
            throw new IllegalArgumentException("Amount should not be negative");
        }
        if(amount>balance){
            throw new InsufficientfundsException("Insufficient balance...");
        }
        balance=balance-amount;
        addTransaction("withdrawn"+amount);
        System.out.println("Withdraw successfull...");
    }

    private void addTransaction(String trans){
        if(history.size()==5){
            history.remove(0);
        }
        history.add(trans);
    }


    public void printMiniStatement(){
        System.out.println("\n===== MINI STATEMENT =====");
        System.out.println("Account Holder: " + accountholdername);
        System.out.println("Balance: ₹" + balance);

        if(history.isEmpty()){
            System.out.println("No transactions yet.");
        }else{
            System.out.println("Last 5 Transactions:");
            for (String t:history) {
                System.out.println(t);
            }
        }

        System.out.println("==========================\n");
    }
}
