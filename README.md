A company (PayBetter ltd) offers a service called Crosspay, that allows cross countries payments.
A commission fee will be applied on each payment, based on the payer's currency.

At the moment the Crosspay service is available for 3 currencies.
Below are the currencies the service can be used with, and the correspondent commission fee:
- USD: 0.5%
- GBP: 0.25%
- EUR: 0.75%

You're requested to implement a ruby application that takes an array of payments (see input example below) and
and returns an array of payments containing the commission fee for each payment (see output example below). The solution have to be developed following a TDD approach.

```
input =
  [
    {
      amount: 100,
      currency: "USD"
    },
    {
      amount: 100 ,
      currency: "EUR"
    },
    {
      amount: 100,
      currency: "GBP"
    }
  ]
```


```
output = [
  {
    amount: 100,
    currency: "USD",
    fee: 0.5
  },
  {
    amount: 100,
    currency: "EUR",
    fee: 0.75
  },
  {
    amount: 100,
    currency: "GBP",
    fee: 0.25
  }
]
```
