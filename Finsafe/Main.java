import java.util.Scanner;

public class Main{
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        System.out.println("Welcome to FinSafe Transaction Validator");
        System.out.print("Enter Account Holder Name: ");
        String name=sc.nextLine();
        int initialBalance;

        while(true){
            try{
                System.out.print("Enter Initial Balance: ");
                initialBalance=sc.nextInt();

                if(initialBalance<0){
                    System.out.println("Balance cannot be negative. Try again.");
                }else{
                    break;
                }

            }catch(Exception e){
                System.out.println("Invalid input! Enter a valid number.");
                sc.nextLine();
            }
        }

        Account account=new Account(name,initialBalance);
        int choice;

        do{
            System.out.println("\n===== MENU =====");
            System.out.println("1.Deposit");
            System.out.println("2.Withdraw");
            System.out.println("3.View Mini Statement");
            System.out.println("4.Check Balance");
            System.out.println("5.Exit");
            System.out.print("Enter your choice: ");
            choice = sc.nextInt();

            try{
                switch(choice){

                    case 1:
                        System.out.print("Enter deposit amount: ");
                        int depositamt = sc.nextInt();
                        account.deposit(depositamt);
                        break;

                    case 2:
                        System.out.print("Enter withdrawal amount: ");
                        int withdrawAmount = sc.nextInt();
                        account.withdraw(withdrawAmount);
                        break;

                    case 3:
                        account.printMiniStatement();
                        break;

                    case 4:
                        System.out.println("Current Balance:" + account.getBalance());
                        break;

                    case 5:
                        System.out.println("Thank you for using FinSafe!");
                        break;

                    default:
                        System.out.println("Invalid choice! Please enter between 1 and 5.");
                }

            }catch(IllegalArgumentException e){
                System.out.println("Validation Error: " + e.getMessage());
            }catch (InsufficientfundsException e){
                System.out.println("Transaction Error: " + e.getMessage());
            }catch (Exception e){
                System.out.println("Unexpected Error: " + e.getMessage());
                sc.nextLine(); 
            }

        }while(choice!=5);
        sc.close();
    }
}