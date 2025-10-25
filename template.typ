#set text(font: "New Computer Modern", lang: "en")

#let header(name, links) = {
  align(center)[
    #text(size: 28pt, weight: "semibold")[#name]
    \
    #text(size: 12pt)[#links]
  ]
  v(1em)
}

#let section(title, content) = {
  v(0.4em)
  set par(spacing: 0.25em, hanging-indent: 1em)
  align(left)[#text(size: 12pt)[#smallcaps(title)]]
  line(length: 100%, stroke: (paint: gray, thickness: 1pt))
  text(size: 11pt)[#content]
}

#let section_item(heading, subheading, from, to, content) = {
  v(0.4em)
  h(1em)
  [
    *#heading* #h(1fr) #from -- #to \
    #subheading
  ]

  h(1em)
  linebreak()
  text(size: 10pt)[#content]
}

#let school(name, degree, from, to) = {
  section_item(name, emph(degree), from, to, "")
}

#let experience(title, company, skills, from, to, location, description) = {
  set list(indent: 2em)
  section_item(title, 
    [#emph(company) #h(1fr) #emph(location)], 
    from, 
    to,
    [
      Skills: #emph(skills)
      \
      #description
    ]
  )
}

#let project(title, skills, from, to, description) = {
  set list(indent: 2em)
  section_item(title,
    [Skills: #emph(skills)],
    from,
    to,
    description
  )
}

#let skills(content) = {
  set par(hanging-indent: 1em)
  h(1em)
  content
}

#let resume(name, links, education, experience, projects, skills) = {
  set document(title: "Resume", author: name)

  set page(
    paper: "us-letter",
    margin: (left: 0.50in, right: 0.50in, top: 0.50in, bottom: 0.50in),
  )
  set par(justify: true, spacing: 0.5em)

  header(name, links)

  section("Education", education)
  section("Experience", experience)
  section("Projects", projects)
  section("Technical Skills", skills)

}
