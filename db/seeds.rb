# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Investment.destroy_all
User.destroy_all
Project.destroy_all

jonnyhak = User.create(username: "Jonnyhak", password: "password123")
jallen = User.create(username: "Jallen", password: "password123")
sean = User.create(username: "Sean", password: "password123")
julia = User.create(username: "Julia", password: "password123")
james = User.create(username: "James", password: "password123")
roman = User.create(username: "Roman", password: "password123")
chris = User.create(username: "Chris", password: "password123")
demetrio = User.create(username: "Demetrio", password: "password123")
israel = User.create(username: "Israel", password: "password123")
john = User.create(username: "John", password: "password123")
jomarie = User.create(username: "Jomarie", password: "password123")
karina = User.create(username: "Karina", password: "password123")
kevin = User.create(username: "Kevin", password: "password123")
patricia = User.create(username: "Patricia", password: "password123")
rebecca = User.create(username: "Rebecca", password: "password123")
sam = User.create(username: "Sam", password: "password123")
shelby = User.create(username: "Shelby", password: "password123")
steven = User.create(username: "Steven", password: "password123")
warren = User.create(username: "Warren", password: "password123")
roman = User.create(username: "Roman", password: "password123")

cp = Project.create(developer_name: "Central Park Tower", location: "217 West 57th St, Manhattan", total_capital_needed: 105300000, minimum_investment: 1400000, projected_roi: 0.083, lat: 40.766009, lng: -73.980806, size: 1300000, img1: "https://archinect.imgix.net/uploads/07/0739b582018ac9dd9f5d370d5091e949.jpg?auto=compress%2Cformat", img2: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Central_Park_Tower_from_street_2020.jpg/1920px-Central_Park_Tower_from_street_2020.jpg")
20.times do 
    Investment.create(date: Date.today-rand(100), amount: rand(1400000..2500000), user: User.all.sample, project: cp)
end
pp = Project.create(developer_name: "Pacific Park Brooklyn", location: "18 Sixth Ave, Brooklyn", total_capital_needed: 47466000, minimum_investment: 710000, projected_roi: 0.067, lat: 40.682590, lng: -73.973976, size: 586000, img1: "https://nypost.com/wp-content/uploads/sites/2/2019/09/sized-brooklyns-pacific-park.jpg?quality=80&strip=all", img2: "https://imgs.6sqft.com/wp-content/uploads/2017/01/13101907/38-Sixth-Avenue_SHoP_1.jpg")
15.times do 
    Investment.create(date: Date.today-rand(100), amount: rand(710000..2500000), user: User.all.sample, project: pp)
end
hs = Project.create(developer_name: "Google Hudson Square", location: "550 Washington St, Manhattan", total_capital_needed: 137700000, minimum_investment: 2000000, projected_roi: 0.094, lat: 40.727734, lng: -74.009308, size: 1700000, img1: "https://imgs.6sqft.com/wp-content/uploads/2018/12/17095225/315-Hudson-Street-Google-4.jpg", img2: "https://imgs.6sqft.com/wp-content/uploads/2018/10/02100718/st-johns-terminal-3.jpg")
20.times do 
    Investment.create(date: Date.today-rand(100), amount: rand(2000000..2500000), user: User.all.sample, project: hs)
end
bs = Project.create(developer_name: "Bankside", location: "2401 Third Ave, Bronx", total_capital_needed: 35000000, minimum_investment: 523000, projected_roi: 0.064, lat: 40.809058, lng: -73.931954, size: 431000, img2: "https://ds3.cityrealty.com/img/a714510fb7feda9240a613b7821aaacfb9a1e8e3+1004++0+60/2401-third-avenue-005.jpg", img1: "https://hillwest.com/wp-content/uploads/2017/03/SoBro-Daylight-Aerial.jpg")
15.times do 
    Investment.create(date: Date.today-rand(100), amount: rand(523000..2500000), user: User.all.sample, project: bs)
end
tl = Project.create(developer_name: "Taystee Lab Building", location: "450 West 125th St, Manhattan", total_capital_needed: 28350000, minimum_investment: 450000, projected_roi: 0.061, lat: 40.813058, lng: -73.954930, size: 350000, img1: "https://newyorkyimby.com/wp-content/uploads/2014/07/Taystee-5.jpg", img2: "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhUSExIVFRUXFRYVFRgWFxYYFxcXFRUYFxcWFxYYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGi0fHR0tLy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIALcBEwMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAEAAIDBQYBBwj/xABHEAACAQIDBAYFCgMGBQUAAAABAhEAAwQSIQUxQVEGEyJhcZEHMoGhsRQjM0JSYnKywdGi4fAVJHOCksIlU2OD0jQ1dKPx/8QAGQEAAwEBAQAAAAAAAAAAAAAAAAECAwQF/8QAJhEBAQACAQQCAgEFAAAAAAAAAAECESEDEhMxQVEiMmEEFDNxof/aAAwDAQACEQMRAD8Ar/RJ0q6xPkV1u2gmyT9ZBvTxXh3fhr0K7bHKR318yYPFPadbltirowZWG8EbjX0R0U2+mPwy3lgN6t1fsON/sO8dx8auUhtwUC4gkVYuKGvJxoIKTTLh0qVlqG6KRn2QMi+BHkxFK6uhqPDN2R3Mw+B/WpWtswhVLHkASfIUBFbtSq/hn+vOn9XFP6krAIg5ROhHmKfmpAxVrvVU8U5RQaE4cms50r2vewKI6qGzNl7UwNCeG+telYz0uD+62f8AG/2GlaF30K6QnG22ZrYRkIBgypDAwRI03HTwrToBWC9ES/MXvxJ8GrfwAJJgDUk0tg28kKWBiBOu6oNnYS4xJvMpCahRoA2/tc40IotEB+cudlF1VW03fXfv5Dh47gWz4wkAlMPOp3NdgAQOS6e+gIcTiHxTG1YOW0NLl3nzVOf9cN9nhNnJZUIggceZPMnnR2HsKihFAVRuArrigwNy3Ql63VhdNA3rvKkFffWKqca8CdwkAz3mP1q2xHf7KpNtfRGOa/mFKCu4bAouoAk6k857+NFrpQOGZgNNe6p+qJ9Y+wbq0lQMbabHQdo7v/01wZm9Y+wVGgjdUimjQ2MsQNwou3cquR6JtAmmFlauUbh7xBBFVSGKlV6BtrbN0Msj+jVR0hx1pAVYw6r1g3ARMRmJAk8p4VHsnGZWg+qfd31jvSJgbi3zdYHq2jKZkaASO6q3wqDH6ZrPA/53HuFuu1hMtKlyXDyatL0G6SNgcQH1Np4S8o4rOjAfaWZHtHGoE6J4psL8rRUe1vIS4jXFHNrYOYD31V2Lc1PoPpNLququjBlYBlYaggiQQeVcIrzb0ZdJMhGCunssT1JP1WOpt+B1I75HEV6XFNIV7dQXFqxdKge3SUrrI9YciD5g/sK0/QsfOP8Ag/3CqBUhj4fAj960PQ/6R/wf7hRPZr3bWHV7L5lBIViDxBAkEGvPi1ei7R+iufgb4GvOXFOk6GqVHoYGpEqQPtmsT6X/AP01n/FP5DWwRqxnpbecPZ/xSf4KVMX6JbirhrhYwDcUbieB5eNb0ER1r9m2NVB9zEc+Q/Xd596KbgXDXGYmBcEDmSum7UnkK3OERrhD3dAPo7e8L95vtP7hSM8WWxBDXAVtAyts73+8/wC1WdsRI7x+UUluCoWvAZvH/aKAINyoLuIihLmJnQU0J9o+zjRsOs5bdQu0bosqCYYl1XLO4MYkkfCi7lwgQOyO7f51Rba9VR/1Lf5qAfibhJ1oDELm0I040TeeajFORNodEYbu0OXH+dS27gNWGG2Ncua5cq820HsG81a2thW1IZjnI3yBB9n7zVFpRWrLN6oJ8P3psRvrUXEgQNB3UBetLMlZNMtK/BkhgwXMAeO7zqwu3JJPMk+dMZjUJagJg1PV6Gz10XaYHW3q0xGGGLw7WG9YCUJ5jd+3gaoFxEcaIweOKMGHCg5XnmIsPbYoVMqSK5Xr17YeGxB6473gnWNYj9KVVx9nqPkhedWWBtyJpl3CcRR+xrfZIO8E6cayiage2QZEjw3gjcQeFevdBukfyu1lc/P2wA/3xuFwePHke4ivLcRZIrmzsdcw11b1swyn2EHerc1I/qRT9CPfHXShi9R7E2vbxeHW/a3HRlO9WHrIe8e8QeNMvaGmZt1e0I4gj3E0bsLGixcJcnKwyyokgyCJ7tKrHu6r+Ie/T9ajXFK+4z2oO/eDqNaXo2zu7WU2rgNy2ZUhYzSZHEFRHvrLG3NNF6ujECi3Zl1PdUi2ajsbRsl+r6xM+nZzLm13dmZ4Va21G/41IBdRxrD+lO2fk6E6DMxA47hqeW/dXoeLgZdCWP0aA+tp6zDcANDJ3eOlYj0q4UrhldzLsWmPVUdmFUctd/GkA/ouA+TMeIfTu7IrajERxrK+iqyPkjz/AMz/AGitHZtrca6uqm2QOGpIJNBifl0cah+WKTBYAzr5Dju4VxMKFI1mrC1sSwwlusDMSSwKkSddxAge2jWwiVo9Xz0J86mwqFjzNR3OixGtu8P8wZD5iRTrOGxtkaLnXuyt711p6Ja/2WxGunvNC4rYSMsESO+o7W3GXR7ZU/1wNFptS2299fvafyp6Chbosw1t3Mvc273ftV5gNmW7YBygvAljrr3DhRiuDqNfDd501migkpWaiuwN5A/rlUT4gCo/lPIeQphy6eSk+PZHv191BX1PEgeGvvNE3LhNCXVo2AdwDvNQO1FOKgYU9kH1roWpIrgFGyORamWohTlagC1vECJpUPmpUB43e2cYruG2Cz2usRocMwjjoff4VqcTZXWnbNwc2yQCe240bLx8CKUiqxDXmByXBlbdPA/tTcZGXSe/+Wmlara2AR+y6N7SJ/KKyG1sDdsqY7SaeI10pUl10N6RnBXJMm08C6o5cHUfaX3iRyr163luKHUhlIBUjUENuIPKvm9MVAMkzwEaHxM6eRre+jXpjkJwd5oR56lifUc/UP3WO7kfHQhvTL+F4zuIPkZq26MbPts1wOgaNRmG6WmRWdZn3Zl8yPiK0PRW/dLsoyGVknMODd08x5VU9mG2vgFW66oIAIgctAaD+SGidpYy4brnJx3Azu0057uVQLin4o3kf2pEyN7Df8atiNepH5LlbZA0wNeIG8fiJ5aaeFY+9iCdso40Isxrw7D6x7a3GFxyqCEt3G4sQASSeJqdGjtsUJaCWO9jvPIdw7hWK9LuLzYa2PvN8F/atzduuxUjKBrIbjpoezWA9L6sMPanL9I0QfuHgaRrP0ZW/wC4kjeWOvLQa++tRbFld10AmJLIy5iOZEzWS9FeNIwd4R6rQCY0m2p07+NT4bF3w8y4Z7asSZJI4ESNFMnuoDW28Bn1RlePsuPgaNtreT7Ufh08xpWFt46+pJVyJ3wQfMGi7PSPFLxB8V/8TVJ219xs3GOegHwoQ22B7JPiNKpV6ZXR66A+f+4VKnTW19a35ZT+Ug0DcW7bSuKIbt9zww94n30M2NtN6+HXxQlP3FNwnSbDXQYVhAkyGWJIHEHnUox2Ef6wH+n9waAZbt2Dqr3bZ7wG96kGpxhbv1LyP3Ewf4o+NJbFhvVce/8AY1HdXIYBnwo2D3W6nr2WjmNR57vfXLeLQ8Y8aVq+43EjwJFTnEs3rBX/ABKD799HBmPdEaGaEuXKmuWt8KFngJj3k0M9s0Eidqgd6ldKiKUyRlq5NSZKQSmEYp6g1IEqRUoJFBpUTkpUw83N01ddHxNn/uP+aqKr/o39D/3Ln5qR1DtZe3/lH61RbWtShHePiK0O1WAuCRIyjSY58ap9t422tlosidACXJgkwDrymaVLbzXFYVkeGWJ1HhJE+401rOh04GtjtjaOBGQXsJnuBFAK3nQle1LaDL6wOn3qzmPu2mJNpHRY9V3DkHuYAaVKntlgdlfwj4VZ7Kx7WHzqoMiIPfB4eFBWF7K/hX4CiFSrDl9y7FiNSSfMzTVEcKlNokqQ0AHtCAcwjdPDnU6pQKyCN/xgaxFka8pU6++tk+PFqMrlixAIyzu8fH31kcL/AO+xr9Em7Q+prW22/ZgWyjMD1gAzMpg8CI8D505jubLu05b27zDD/tv/AOdefemTHB7FmDPzjn1Csdjv8a3zpeDxJjIW1yHcu/1OZGlYP0z2WGGw7FgSXfgo+r3KKMsdQpltD6P8cFwV9dCWuAAEa/Qp2pq9G1GtXbboy/QIpjUaAdluR8IrM9AIGGunScxGoBGtpRx4+FanBZEupnVdbCDUaSYMnv031EVtpMNt606jMYJGozCAfA61xsVh2P0aHvi2f0oe1hrZ9azbOnBY1k8cx7qHw2zkJI6pTEzJj6zDQz3fCmW0O1dm2Gl0kGJy5ZUnhAGgoDG4VclgsrfXzxMwGgb9BpVzjdm2lRj1eUwYPWNv4acaq7dgDqixIBLFoZtQHgbu6loCsLgrFxYtkjL9VgJE8e/xrl7ZJjsuPbPxDVaJgbLDMjMdIkOfKl8hH/MuD/MD8RQGdtbMfrAhME7oI5c4PI1y3hLxJi8wgxlDhSdY0BImrhsLF1ArnWZMISNDximYbCqxYO4BkgDKmonfMDWgtIcLexJuLbJZdDrc3mAW10M1LbxmLLlUVCFYgsQY0JG8RFTXbJRkCvMAiSNVgacaGIOrQM2Y7iRI5zJ1q5jbxCt0vbLtlGfLm45Zj31HdNZ7EbfNt8roBHEtI3Hfp3e+mP0qTQiCDyDGPKtf7bqfSPPh9rx1qIpVVg9qXroDKqBSJEhpkaEb+c0rW3bJAzYgK0agYe6YPETn1peHMeXFaZK6Eqo/t2xJHyk6HhhnGnPtNXcRtRHOXD33Zt/ashRHHeT3UXo5T2fki3C08VQ3Nom1l6664BBjIluZB4z41GNv2ON3Ez3LZ/an4ck+bFpJpVnv7ew3/Mxv/wBH/jSp+DL6HmxZGavujP0J/wAS5+askm0UJyzryjXyq6d8RhbNuChF0u65QSRqNDmEcaw210sdrPFwGAeyNCJHHh7apOkO0nWw4XqxPZgKBoSAfcTQ4uX7l0G40pxEx7NOFR7T2VaNy425SzZVBMAToBU2jQA9L8SFCKbDQqAK1mex1WcnMTGkAd++s1tHHm8S5S0hjdaQIp7yBx763eB6PNfOW2hIgKSSQgAUDtawdw01OlXy9CsNh7Nx3XrLgtsRvyqY3hf1PkKRtJh17CfhX4CpwKiwx7CfhX4CpC1WDwaerVBnodgAhIGuZt5MetxjxqoVZ6xZ6zbrISQDbVSQY0NtZ3g862O1diW0VOrZgWcBj83MGT9UDXQVn8Hs+2cU2IFsl9LZOYjcimACwnskaxVnjcVb7AiCTpmdtYMEaKQNdKvHXbd1NvPpxtiBGCLeYAw25ASwCneF0926sb6Y8Hks4ds5Ys9yZCD6q/ZAPnWhu7asBmQ2RILIQWZpg5eKwQY99Zb0tn5vD9hV1uHs7zom+pz7dcUY7250DDfJrnIXJ81tKfcaubNm5mGUgkjNqZABywNToY4VTdBMRlw7JkLZrhkgGAMqbyD3Tuq+fFX0Ga3hzcYMiBRI+bCmHMgyJAHLtCo0vZlrA4hSGVA7AgjPiL+WZ00S5lA7ssVcYN8YQBlslgSJ7YA4wDm1AmJ4xUWBxGPcrmw3VgxmzMhid+mlaFNnoPD2D4Cq4LlSYt8SqtnFrQEmM8aSdO13mhbGKuP1Yy2+0GK6PoA0Ge3z8aKtYDEAOb120VCXDCs0mVYgajcNPKo8DbGa2cwIyPoBOXtmfGeVF18FNpW2PiCQweyNxib0acYDa+Bkd1T4DZ2LtlpxCsC0qCGIQclkzvk+2BoABaLctqIzk6cFP60xsanJj7BUmrrq3hdRM6y8nMFOkT30sFZu3QSXVYZl9QGYMTvqHF4691qsLa6GF7RMrOpPZENE6a+NF4K8wWAp9Zj5mqhaCHA3bVxAt0EMGz/NqJIEgjeZn2UVgHZiwYbiQDprBidAKdeNwlSU3T3b/bTcK+UmSupJ9YTqeVdHR/ab1/xj1fXCo2/hZuaLvBEyOFt2A10mRxqR+jFuOw7k7yIVOOpkjUfeUNR2JwyPcVzMgmBlb7DAGSIMFp/Wo+ke13zMgELAIzKCd0yDJ8xXZzllqMPxxx5O2JZixa5m2GOs6uMx4DnTrPQfDuqv1l3tKpMFYkgHTs99LYEnD2p+xHsBIA8gKKw22AEXLadcoUZsyop7J1gyG3HmdRurnz7+3WN+aqdu936gMej/AA3C9d1715+FMt9HLWFcFXuFiCIYmI0JO6J3edWuLxl1pKqsCO2HAIgSZQzO/hyoFMW75c7qx1nLzgankfLfUSdW47t4XOzumoq+kOFz9WAYMNGsTqum8VRX8AltS166E7mLeUlt/dWuxt51AFtVJZGWWkFdRqpG41TfIswi4ubdplBA13y2pieEV3Yf49/w5spO/X+1en9lxrjRP3QCPzUq29jZKBQFs2SOEhSfMmlWO8/t0fh9PHrWBRWzxr31oPlAdVn6oI1qhWWMKCxOgAEnWtnsTolcKhsQ3Vr9kRnP6L7z4V5WnYqbVp7jhLaljyHxPId5rS7N6KRDX+39xT2R+JuPgPfWmwWASyuW2oVePM95Y6+dSsh1AAG6D476eiB2iVGVFUATAG4RoQABzql6TX3FtrS5c9xSomTAIgsddw95q8xeJW0pcjjGg1JMwPaao8Ph2cm7c1Zh5AbgP6+NBK6xbx2UA4i2NAOzZ4AfeY0mweJO/GXfBbdgfG3WhFsUuyOVJTPnAORDYnEH/Mq/kAof5MewGe6SpujW4+s21WSJ13SJ4knfWnN9Rw91Vm1cTIzBdRofD+VXjYnKKKzimtG2yBp6zEaesdbeG5nvq7sYgMEzqGMtAYCdWBOU7gSWGh5cKpM8hG4l7/5cOP0FG4bEj5ktxulRAO+VIqqmLIY8FjkwQLakz1YMk6kkTxrL+kHCYvFCyDZRAueB1gb1su/QRu4Vb3NoIouuVZsjqOz2WBJOqmpr+0M9k3ZV0QEszdhkAEnOAIPiKW7ZyfCr6I7PxdnDNbDWlUuWYQWJBVQRPDQcq0mCW4WhiNUVSVBAygboM1SYDpDntzaZMhbLIRjr3Zorq7VusMwuMQQ0QFX1R4UtHtrupfiT51w2I1JA8SKyOysQ968iXCxUnWXc/rVZY2gyBFFu2TB7TqXY8RqxI91PQ7m5xF+yAQbya6QDJ8hQ9pLXZgXGifVttxM7yAKzKbSxB3XCo+4FT8oFavovJtuXOY5vWbtHdzM0aLad8SoE9WwA4u9tR+Y1W4vpAqZcotGWAaC7lV1lvVUGNNAeNW229cNcEz6vCPrrWLfCk7hVSQrlVmelqHVRc9iW0+JemWukd1j2ben37jH3JkmqXBYHsie/4mrK3aimndrbW7KMiuUSSqk6DeROkyffWX6T2XF+LbMilFLBWYAmWG4HXSK1WGB6tIj1V3+FZTpltvD2Lq9dcykoI0JJGZuAk1cuoVmzuj2GC3VPEhpJ1J7J3mrja+zrRRrrOS/VmFkKoIELvGs74B4Gs/sPb2Fa4pXEWjv0LhTuPAwa0w2jbOhDEHiMpEHlOo9lb9HLjcrHqY74ofo8PmLf4T8TQGAvXMpUuFQHtFiTI1+roIiBvirrBvaAARgABABDCB5R76gXYtpjMq8iCA7ct+jQD7K6OnljN7ZZ4XhSXcQWkLda6J7AdYUndln7PiY7jVnh8G9rR1RdTGT1TGhgjQ6xwFS4nYkAdUoECNYJHgaOsYO0lgAAC5pOmvfqeHhyp9XKdnHyXSxvdyrMZh7j5BbUsYMgCTvHOu4jZFxVjOqt2SVK7xxBYDuI0Md9WeFusnqmJEHQGdZ410mdTrR0872yfAzw/K35CtZTipPt/lSokrSrT8U25Adi7BtYVR1aZnO92ifPgO4Vcrwn+vCuINKjRiXjlBO/cc2/XmBXiV6hyhipkAGW8sxCnxiDXbrhF1MADUngANSalrLbcxhvXDZQygIz8iyn1R3A7+8d2shB8oOIfMZyKTkBETJ3kcz8PbVg7QAK5hMOFEcqdcAqTMmuEVOgFTItIwHVk8KacCx4VaU4mnsMbiNmG26oxhQXZSN5D5JHsyCpvkijqQDuuZvbK/yq/wBqYTrE09Yar+o9v7Vn8O2tv/E/VK6MbLixymsjeoBt3NN9xSf4qixtoLgsYAI/u7H+F/2omyw6q6Z9V1+JqDH3Q2ExscMK35blF/UT2znQtZwaD/q3D5A/tV/hsOAgC7oeP9INZ3oZc/uqjk7fxEitfszDhrevBv0FRYraHo9ZjE2/xVTix2l9vwrXbNsqL1uB9aqXEJEEDcf0qpNpRWrNazowvzb6T2v0rO4dZ1ANabo2Ow/4h8KWuTlWOIWbbAjlpv4iqq5a7qM21tBbVpjKl47KFoLajhvrC4za2Jub7gQcrYy/xGW8iK0xx2nKp8bdFkkuyqskyxAGpnQ1Ba21YYwrFuZCnKPaYn2TWev4EFsx1b7TEs3mdamw2C7637MbGHfZW/fpRZS2oUM7BQPsiQOZ191Y7bitjbwuMigquVQJ0AJO87zrXUswKJsWDwmtMMZEZ5WqO70dQ+tbnvgfGm2+jxT6G7dtcexcYa+FbPCWW3NR72EI3V0eDp5z+WXlzwv8MVh7+1LOq31uDldtg/xLrRK9MMYn02CS5zNpyvkrAmtMmCJMKJo7D7IQauA55R2fLjXH1enhh8uvp55ZfAPo3tl8UpZbOIsKONyFU/hhpbxiO+r9nMQWJ8Y/SmTSrnmdbdsdFOBpopwrTHPSMsNnUqVKr8iexJgbGRMsz2nb/U5aPfRC6U1TQW1dorYTOdSdEX7THcPDiTwANcVdCv29toqOqt6XGLAniiBiubxaDHtPDUHZuHyjdQ2Dsl2NxzLMczHmf2AAAHICrm0seyp2Z8QKhinvcqLPUmJSiLSzQAerPZx1J7qAivELUD4mljrkk0GZoCR8YaoMejC9bP1WuK0cmJE+cT51chahxdsMMo0PA8iDIPnVY3VLKbVFpotYv8afnIoXDtOF2h/8U/kvURhrbCziQ3rfNz4599Q7NsA2McJ9bDlfDsXf3razhlLyzPRnFhMMunFyY4Qx4ca3nR64HslgZGb9BWLwOBVLKqJjtb+c60TauEWuq+rnz95MR5U+wu5tcDjrRvogdS2bcDO7UyRoKx2O6RE6W7cd7Gf4R+9G9E0jF2vxH8pqj+T6DwrTHHlGWXDn9r3m0ZyByHZHu3+2rXCbYvhMi3GCnfBj3jX31WW8KJ3UfbSr7UdydXnWnFa4lujLGEZuFXIVoQWKmtYUncKtLODAEnWiVA8KqJB4bZvE0Z1eXQCiUHCi7Oyy2rmByG8/tRc5j7OYW+gGGQsYAmrRMGI7WtEqiqIUAD+vOmsawy/qMvWPDbHo4/PJigAQBApTSNcrDe2rs0qbFdAoB4p61GKkWnKejq7XK7T2NH3LwVSzEBVksTuAGpJrFYnFNibvWEED1ban6q8z946E+wcKftzFZnewjSnWl7h5tCgW54hcsnvgfVNTYGzGtY04NwyQBRbGBUVkV281TVGmo6RauA0BItHW7gUb4qvU1OooBt0zURqZlqJjQDRSdBNImmMaAq9s2mCkodGAFzvAMqe7X9KF2QvzWM/wD7luVdO06ESCII7qp8IRb+VIxibLBJ+tKvEczrFbYXjTLOfKk+ovtqECnoNIqZUro0w2m2Fiuqv27jKSqmTETuPA0MtqiLSEmikwPPSqkKhLdqaNsYInuovD2ANwo1QKokdjCKvCanIpNuriNTBKeFFYLBm5MEAAwTyO/dUCigMTgLoc3rFwo8SRwaBu9246VOeVmO4eElvLX4ewqbhrzO/+VSl6yuzOlgnJiFyNuzD1faN49kjwrSJcDAFSCDuIMg+2uO3ft1ej2qJhTiaaaAZNIU40stBOCnAUoroFM4cBTwKaKkFM3a5XYpUBhMBh4gf14k8TVylC4VIoy2JNZmIUwKjNdY0juqTRk0hXDSBpA9TRNuhVoyxoJoBt1aGaibxmhzTBoFIpThXSKCMCig9s4A3LZK+sskd44irK3aJoyzh431UursrNzTzm3ZmjLGE51c7bwAtPmUdl9R3HiP1quD11y7m45bNXSW3aAECkDUYeuzVwqnDVNbNDIanQ0yTzSFRzT1NASiicPrP4TQ6a0VYWJ8DU5/rVYe4zmGwSXMSUcSCrcx7QRRLbMxOFJfDOXTeUOp/07m8RBqXZyziv8jfpWps2pHwrDCS48tcrZkodl9KLVzs3Pmn3dr1SfHh4GryqjbexrV71hDfaXf7ftDxrPLexeC3HrLXtIHs3p8KWWFiplK3EUoqn2V0is3oE5H+yx3/hO4/GrkVJuingUwGng0KjuWugUproNAPmlTZpUBmUFFIIFKlUHDWNdLaV2lUmhNdFKlQRymjLb6UqVBo7hqI0qVMj0SaJS0BSpUgmFOBpUqYR4zCi7bKHjqDyPA1inBBIO8GD4iuUq36N9xj1p8nKaeK7SroYJFqda5SoNMqVMtulSpbEFWcMaIZYB8D8KVKs87xWmM5VOxVnFH8DH3rWmu3ABoK7SqOn6Xn7VWIeardqt80aVKtM/wBUY+1ANko9lWByvB14HU7x+1LBbexGGIR/nF5MeH3W3j20qVTnjO3Z4ZXu02GyNtWsQDkkEespGo9u41Zg0qVZNXZpwNdpUg5NKlSoN//Z")
15.times do 
    Investment.create(date: Date.today-rand(100), amount: rand(450000..2500000), user: User.all.sample, project: tl)
end
tc = Project.create(developer_name: "Trinity Commons", location: "74 Trinity Place, Manhattan", total_capital_needed: 25110000, minimum_investment: 498000, projected_roi: 0.072, lat: 40.708505, lng: -74.012872, size: 310000, img1: "https://newyorkyimby.com/wp-content/uploads/2016/10/Screen-Shot-2016-10-23-at-10.53.28-PM.png", img2: "data:image/jpeg;base64,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")
15.times do 
    Investment.create(date: Date.today-rand(100), amount: rand(498000..2500000), user: User.all.sample, project: tc)
end
cf = Project.create(developer_name: "Caton Flats", location: "794 Flatbush Ave, Brooklyn", total_capital_needed: 17820000, minimum_investment: 267300, projected_roi: 0.059, lat: 40.653350, lng: -73.959831, size: 220000, img1: "https://ds2.cityrealty.com/img/b6e794b936a9f2cf51494ec6e342f963d663a5d7+w+h+0+60/caton-flats-794-flatbush-avenue-01.jpg", img2: "https://freeformdeform.com/wp-content/uploads/2014/12/Canton_Website.jpg")
10.times do 
    Investment.create(date: Date.today-rand(100), amount: rand(267300..2500000), user: User.all.sample, project: cf)
end
br = Project.create(developer_name: "Betances Residence", location: "445 East 142nd St, Bronx", total_capital_needed: 9720000, minimum_investment: 145800, projected_roi: 0.053, lat: 40.811166, lng: -73.919361, size: 120000, img2: "https://newyorkyimby.com/wp-content/uploads/2020/07/View-of-construction-at-Betances-_-445-East-142nd-Street-Breaking-Gound02.jpg", img1: "https://images.squarespace-cdn.com/content/v1/581a52665016e1193909b177/1517005772371-OF1LEROFX3Y6UJXCJRZW/ke17ZwdGBToddI8pDm48kHNrM01Txj7H96mhCvow6J17gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UZoG3gN5YzIm1LeJlW8KStLBDqV3C1BNRJ_FgRz2KPWN6z9MUY0yd2njC85rKH5I0g/16+-+Rendering+-+Site+1+-+Looking+South+-+Mathew.jpg")
10.times do 
    Investment.create(date: Date.today-rand(100), amount: rand(145800..500000), user: User.all.sample, project: br)
end
ep = Project.create(developer_name: "Edwin's Place", location: "7 Livonia Ave, Brooklyn", total_capital_needed: 9396000, minimum_investment: 195000, projected_roi: 0.058, lat: 40.662294, lng: -73.917956, size: 116000, img1: "https://ds4.cityrealty.com/img/5ec10e28513823deede59ba0d2a54c2643c456ac+w+h+0+60/edwins-place-7-livonia-avenue-01.jpg", img2: "https://bklyner.s3.us-east-1.amazonaws.com/bklyner/wp-content/uploads/2020/05/Screen-Shot-2020-05-29-at-4.29.50-PM.png")
10.times do 
    Investment.create(date: Date.today-rand(100), amount: rand(195000..500000), user: User.all.sample, project: ep)
end
ja = Project.create(developer_name: "Jackson Avenue", location: "26-04 Jackson Avenue, Queens", total_capital_needed: 4715982, minimum_investment: 70700, projected_roi: 0.051, lat: 40.746656, lng: -73.942074, size: 58222, img1: "https://res.feednews.com/assets/v2/5153a8e7e40dc3018a03335549d46988?width=1280&height=720&quality=hq&category=us_Economy&Finance", img2: "https://dynaimage.cdn.cnn.com/cnn/c_fill,g_auto,w_1200,h_675,ar_16:9/https%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F181107112022-long-island-city-restricted.jpg")
10.times do 
    Investment.create(date: Date.today-rand(100), amount: rand(70700..250000), user: User.all.sample, project: ja)
end
fb = Project.create(developer_name: "The Collective", location: "555 Broadway, Brooklyn", total_capital_needed: 30051000, minimum_investment: 450000, projected_roi: 0.071, lat: 40.704739, lng: -73.948649, size: 371000, img1: "https://res.feednews.com/assets/v2/bc8ebd163419da22d28fb605dbbaeebf?width=1280&height=720&quality=hq&category=us_Economy&Finance", img2: "https://newyorkyimby.com/wp-content/uploads/2021/01/Massing-diagram-of-555-Broadway-ODA-Architcture.jpg")
15.times do 
    Investment.create(date: Date.today-rand(100), amount: rand(450000..2500000), user: User.all.sample, project: fb)
end
md = Project.create(developer_name: "Minrav Development’s VU", location: "368 Third Avenue, Manhattan", total_capital_needed: 11745000, minimum_investment: 176175, projected_roi: 0.055, lat: 40.741336, lng: -73.981666, size: 145000, img1: "https://ds4.cityrealty.com/img/aafe14e23b51a1d87959c832854957d5ee1f58f6+w+h+0+60/vu-new-york-368-third-avenue-18.jpg", img2: "https://newyorkyimby.com/wp-content/uploads/2021/01/12.-VU-Entrance--e1610669734401.jpg")
10.times do 
    Investment.create(date: Date.today-rand(100), amount: rand(176176..1500000), user: User.all.sample, project: md)
end
go = Project.create(developer_name: "Gotham Organization", location: "55 Suffolk Street, Manhattan", total_capital_needed: 31565700, minimum_investment: 473485, projected_roi: 0.072, lat: 40.716359, lng: -73.987254, size: 389790, img1: "https://commercialobserver.com/wp-content/uploads/sites/3/2020/12/Suffolk_FINAL.jpg?quality=80", img2: "https://newyorkyimby.com/wp-content/uploads/2020/05/1713-BSD-Suffolk-Over-All-Rendering-Nov-2019.jpg")
15.times do 
    Investment.create(date: Date.today-rand(100), amount: rand(473485..1500000), user: User.all.sample, project: go)
end


# project2 = Project.create(developer_name: "project2", location: "Columbus Circle, NYC", total_capital_needed: 180000, minimum_investment: 1500, projected_roi: 0.043, lat: 40.768082, lng: -73.981915)
# project3 = Project.create(developer_name: "project3", location: "550 Washington Street, NYC", total_capital_needed: 360000, minimum_investment: 3000, projected_roi: 0.073, lat: 40.727734, lng: -74.009308)

# investment1 = Investment.create(date: Date.today, amount: 3300, user: jonnyhak, project: cp)
# investment2 = Investment.create(date: Date.today, amount: 2400, user: jonnyhak, project: hs)

# 50.times do 
#     Investment.create(date: Date.today-rand(100), amount: rand(200000..3500000), user: User.all.sample, project: Project.all.sample)
# end
