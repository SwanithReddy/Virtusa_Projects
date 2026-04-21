import java.util.*;
public class Account {
    private String accountholdername;
    private int balance;
    private Queue<Integer> history;

    public Account(String accountholdername,int balance){
        this.accountholdername=accountholdername;
        this.balance=balance;
        this.history=new LinkedList<>();
    }

    

    public int getBalance() {
        return balance;
    }

    public String getAccountholdername(){
        return accountholdername;
    }

    public void deposit(int amount){
        if(amount<=0){
            throw new IllegalArgumentException("amount should not be negative");
        }
        balance=balance+amount;
        addTransaction(amount);
        System.out.println("Deposited amount is:"+amount);
    }

    public void withdraw(int amount) throws InsufficientfundsException{
        if(amount<=0){
            throw new IllegalArgumentException("Amount should not be negative");
        }
        if(amount>balance){
            throw new InsufficientfundsException("Insufficient balance...");
        }
        balance=balance-amount;
        addTransaction(-amount);
        System.out.println("Amount withdrawn: "+amount);
    }

    private void addTransaction(int trans){
        if(history.size()==5){
            history.poll();
        }
        history.offer(trans);
    }


    public void printMiniStatement(){
        System.out.println("\n===== MINI STATEMENT =====");
        System.out.println("Account Holder: " + accountholdername);
        System.out.println("Balance: " + balance);

        if(history.isEmpty()){
            System.out.println("No transactions yet.");
        }else{
            System.out.println("Last 5 Transactions:");
            for(int t:history){
                if(t>0){
                    System.out.println("Deposited: " + t);
                }else{
                    System.out.println("Withdrawn: " + (-t));
                }
            }
        }

        System.out.println("==========================\n");
    }
}
