#import "@preview/fontawesome:0.6.0": *
#import "template.typ": *

#let links = [
  #link("https://jwillb.net")[#fa-icon("globe", solid: true) #underline("jwillb.net")] |
  #link("mailto:jonathanwbon+inquiry@protonmail.com")[#fa-icon("envelope", solid: true) #underline("jonathanwbon@protonmail.com")] |
  #link("https://linkedin.com/in/jwillb")[#fa-icon("linkedin") #underline("in/jwillb")] |
  #link("https://github.com/jwillb")[#fa-icon("github") #underline("jwillb")]
]

#let my_education = school("University of Alberta",
  "BSc Computing Science - Specialization",
  "Sep 2023",
  "Expected Dec 2027"
)

#let my_experience = [
  #experience("Software Development Intern",
    "ISS Mine Safety",
    "Python, C++, ROS 2, Docker",
    "May 2026",
    "Present",
    "Edmonton, AB",
    [
      - Designed a sensor data ingestion pipeline processing raw hex-encoded XBee radio payloads, with automatic boot-time computation and GPS fallback for clock synchronization.
      - Engineered a Raspberry Pi network bridge configured as a virtual USB drive, enabling remote file uploads to an air-gapped, non-internet-connected laser engraver via a custom web interface.
      - Developed a custom SVG processing pipeline to optimize engraver toolpaths, utilizing rasterization for multi-outline generation and path-filtering algorithms to eliminate redundant line segments and jagged edges.
    ]
  )
  #experience("Software Co-Lead (Formerly Member)",
    "The Autonomous Robotic Vehicle Project",
    "Python, C++, ROS 2, Docker",
    "Aug 2025",
    "Present",
    "Edmonton, AB",
    [
      - Managing a team of 20+ students working on various projects in topics like computer vision, visual servoing, PID control, and embedded software.
      - Led on-site debugging and root-cause analysis of critical sensor malfunction during the 2026 RoboSub competition, as well as efforts to correct it
      - Designing optical flow pipeline for correcting incorrect sensor data
      - Leading development on a Hardware-in-the-Loop (HIL) simulation framework to validate autonomous behaviors and control systems prior to physical underwater deployment.
    ]
  )
  #experience("Robotics Research Intern",
    "Servier Virtual Cardiac Center | University of Alberta",
    "Java, C++, Python",
    "Jan 2026",
    "May 2026",
    "Edmonton, AB",
    [
      - Developed automated echocardiography routines for a KUKA LBR collaborative robot, configuring force parameters and ESM states to guarantee safe human-robot interaction.
    ]
  )
  #experience("Teaching Assistant",
    "CMPUT 201 | University of Alberta",
    "C, Linux, Git, Bash",
    "Sep 2025",
    "Dec 2025",
    "Edmonton, AB",
    [
      - Evaluated code and mentored 500+ students on C, memory management, and Linux in labs of 100+ people.
    ]
  )
]

#let my_projects = [
  #project("Two-Wheeled Differential Drive Robot",
    "Python, C++, Linux, Zenoh",
    "Sep 2025",
    "Present",
    [
      - Developing a differential drive robot using the Zenoh communication protocol on a Raspberry Pi 0 2W with 512 MiB of RAM, whose memory constraints prevents ROS 2 from being used.
    ]
  )
  #project([
    Visual Servoing Control System | #link("https://jwillb.net/projects/visual-servo")[#underline("Website")]
    ],
    "Python, NumPy, Docker",
    "Mar 2025",
    "Aug 2025",
    [
      - Developed a visual servo based control system for autonomous robotics, which uses computer vision to align to objects.
      - Adjusted for versatility on multiple robots
      - Achieved 99% accuracy during real-world trials
    ]
  )
  #project("Server Administration",
    "Linux, Proxmox, Docker, Networking",
    "Jun 2018",
    "Present",
    [
      - Designed and configured multiple servers for hosting various services
      - Using containerized applications to isolate dependencies, decrease deployment time, and deploy my software automatically with GitHub Actions CI/CD
    ]
  )
]

#let my_skills = skills([
  *Languages*: Python, C, C++, Java \
  *Tools*: Linux, Windows, Git, GitHub Actions, Docker \
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
