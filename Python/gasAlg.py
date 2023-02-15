def gasPerKm():
    kmStart = input('Enter current Kms traveled: ')
    kmEnd = input('Enter final Kms traveled: ')
    pricePerGal = input('Enter current Gas price $: ')
    amt = input('Enter money to spend: ')
    diff = int(kmEnd) - int(kmStart)
    gal = int(amt) / int(pricePerGal)
    total = diff / gal
    return print('For each galon you drove: ' + str(diff))

gasPerKm()

