def calculate_si(principal: float, rate: float, time: float) -> float:
    """Calculate simple interest."""
    return (principal * rate * time) / 100


def calculate_total_amount(principal: float, si: float) -> float:
    """Calculate total amount (principal + SI)."""
    return principal + si


def main():
    """Main program for user input and output."""
    principal = float(input("Enter the principal amount: "))
    rate = float(input("Enter the rate of interest (%): "))
    time = float(input("Enter the time (in years): "))

    si = calculate_si(principal, rate, time)
    total = calculate_total_amount(principal, si)

    print(f"\nSimple Interest = {si:.2f}")
    print(f"Total Amount = {total:.2f}")


if __name__ == "__main__":
    main()