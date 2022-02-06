# Практическое задание

- Реализуйте property wrapper @CodingStyle для декорирования строки.
- При инициализации обёртки выберите один из трёх стилей декорирования: camelCase, snakeCase, kebabCase. Вместо пробелов они подставят следующее слово с большой буквы, подчёркивание или тире.

**Example:**

```swift
@CodingStyle(codingCase: CodingCase.camelCase) var myProperty = "Hello World"
print(myProperty) // HelloWorld
 ```
