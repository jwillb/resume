#import "@preview/fontawesome:0.6.0": *
#import "template.typ": *

#let links = [
  #link("https://jwillb.net")[#fa-icon("globe", solid: true) #underline("jwillb.net")] |
  #link("mailto:jwillb00+inquiry@proton.me")[#fa-icon("envelope", solid: true) #underline("jwillb00@proton.me")] |
  #link("https://linkedin.com/in/jwillb")[#fa-icon("linkedin") #underline("in/jwillb")] |
  #link("https://github.com/jwillb")[#fa-icon("github") #underline("jwillb")]
]

#let my_education = school("University of Alberta",
  "BSc Computing Science - Specialization",
  "Sep. 2023",
  "Present"
)

#let my_experience = [
  #experience("Research Assistant",
    "University of Alberta",
    "Python, C++, Java",
    "Jan 2026",
    "Present",
    "Edmonton, AB",
	[
          - Developing for the KUKA LBR Med 7 robotic arm to perform ultrasonic heart imaging
          - Using the real-time KUKA FRI SDK in C++
	  - Writing safe code for use in research trials and patient care
          - Developing real-time control scheme for 3rd party controller
	]
  )
  #experience("Software Co-Lead (Formerly Member)",
    "The Autonomous Robotic Vehicle Project",
    "Python, C++, ROS 2, Docker",
    "Aug 2025",
    "Present",
    "Edmonton, AB",
    [
      - Managing a large team of students working on various projects in topics like computer vision, visual servoing, PID control, and embedded software
      - Collaborating with different disciplines including Electrical and Mechanical Engineering sub-teams
      - Overseeing robot software accuracy and testing in real-world environments
      - As a member, represented ARVP at RoboSub 2025, finishing in the top 10 out of 60 teams
    ]
  )
  #experience("Teaching Assistant - CMPUT 201",
    "University of Alberta",
    "C, Linux, Git, Bash",
    "Sep 2025",
    "Present",
    "Edmonton, AB",
    [
      - Evaluated and debugged code in a class of over 500 students
      - Mentored students on CS topics such as C syntax, dynamic memory allocation, and Linux fundamentals
      - Led weekly lab sessions of over 100 students, presenting helpful information and marking demonstrations
    ]
  )
]

#let my_projects = [
  #project("Visual Servoing Control System",
    "Python, NumPy, Docker",
    "Mar 2025",
    "Present",
    [
      - Developed a visual servo based control system for autonomous robotics
      - Referenced scientific papers about image-based visual servo
      - Adjusted control system for versatility on multiple robots
      - Achieved 99% accuracy during real-world trials
    ]
  )
  #project("Ray-traced 3D Renderer",
    "C, Make",
    "Nov 2024",
    "Dec 2024",
    [
      - Designed and developed a 3D rendering application using C
      - Implemented a unit-test process with 150+ cases and successfully passed all
      - Developed a robust and refined build system using Make
    ]
  )
  #project("Server Administration",
    "Linux, Proxmox, Docker, Networking",
    "June 2018",
    "Present",
    [
      - Designed and configured multiple servers on public and private networks for hosting various services
      - Using containerized applications to isolate dependencies, decrease deployment time, and deploy my software automatically with GitHub Actions CI/CD
      - Deployed firewall utilities and reverse proxies to ensure security and a 99% uptime
    ]
  )
]

#let my_skills = skills([
  *Languages*: Python, C, C++, Java \
  *Tools*: Linux, Windows, Git, GitHub Actions, Docker, Microsoft 365 + G Suite \
  *Libraries*: ROS 2, NumPy, SQLite
])

#resume(
  "Jonathan Bonham",
  links,
  my_education,
  my_experience,
  my_projects,
  my_skills
)
