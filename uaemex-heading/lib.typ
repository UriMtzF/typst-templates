#let project(subject: "" ,title: "", authors: "", accountNum: "", body) = {
  set document(author: authors, title: title)
  set page(paper: "us-letter", numbering: "1", number-align: center)
  set text(font: "New Computer Modern", lang: "es")

  //Title row
  align(center)[
    #block(figure(image("header.jpg",width: 100%)))
    #block(text(weight: 700, 1.75em, subject))
    #block(text(weight: 500, 1.2em, title))
  ]

  // Author
  pad(
    top: 0.5em,
    bottom: 0.5em,
    x: 2em,
    grid(
      columns: (1fr,1fr),
      gutter: 1em,
      align(center,authors),
      align(center, "No. de Cta: " + accountNum),
     ),
  )

  set par(justify: true)

  body
}