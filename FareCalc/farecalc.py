print("===== Welcome to FareCalc  =====")
dict={"economy": 12,"premium": 17,"suv": 26}


def calc(km,type,hour):
    if type not in dict:
        return "service not available";
    if hour>=17 and hour<=20:
        price=km*dict[type]*1.5;
        return price;
    else:
        return km*dict[type]


km=float(input("Enter distance in km: "))
vechile=input("Enter vechile type (Economy/Premium/SUV): ").lower()
hour=int(input("Enter hour (0-23): "))

finalfare = calc(km,vechile,hour)


print("\n========== PRICE RECEIPT ==========")
print("Distance Travelled :", km, "km")
print("Vehicle Type       :", vechile.upper())
print("Rate per km        : ₹", dict[vechile])
print("Final Fare         : ₹", finalfare)
print("===================================")




