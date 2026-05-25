class FareCalculator:

    fares={"economy": 12,"premium": 17,"suv": 26}

    def __init__(self,username,distance,type,hour):
        self.username=username;
        self.distance=distance;
        self.type=type;
        self.hour=hour;

    def calc(self):
        if self.type not in FareCalculator.fares:
            return "service not available";
        if self.hour>=17 and self.hour<=20:
            price=self.distance*FareCalculator.fares[self.type]*1.5;
            return price;
        else:
            return self.distance*FareCalculator.fares[self.type];



username=input("enter username: ")
distance=int(input("Enter distance in km: "))
vechile=input("Enter vechile type (Economy/Premium/SUV): ").lower()
hour=int(input("Enter hour (0-23): "))


customer=FareCalculator(username,distance,vechile,hour);
finalprice=customer.calc();
print(finalprice);


if vechile in FareCalculator.fares:
    print("\n========== PRICE RECEIPT ==========")
    print("Distance Travelled :", distance, "km")
    print("Vehicle Type       :", vechile.upper())
    print("Rate per km        : ₹", FareCalculator.fares[vechile])
    print("Final Fare         : ₹", finalprice)
    print("===================================")


