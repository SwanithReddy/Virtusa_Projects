print("===== Welcome to FareCalc  =====")
rates = {
    "economy": 12,
    "premium": 17,
    "suv": 26
}


def calc(km,vechile,hour):
    rate=rates[vechile]
    base=km*rate
    surge=1
    if 17<=hour<=20:
        surge=1.5
    total=base*surge
    return rate,base,surge,total;


km=float(input("Enter distance in km: "))
vechile=input("Enter vechile type (Economy/Premium/SUV): ").lower()
hour=int(input("Enter hour (0-23): "))

if vechile in rates:
    rate,basefare,surge,finalfare = calc(km,vechile,hour)
    print("\n========== PRICE RECEIPT ==========")
    print("Distance Travelled :", km, "km")
    print("Vehicle Type       :", vechile.upper())
    print("Rate per km        : ₹", rate)
    print("Base Fare          : ₹", basefare)
    print("Surge Multiplier   :", surge, "x")
    print("Final Fare         : ₹", finalfare)
    print("===================================")

else:
    print("service unavailable")


