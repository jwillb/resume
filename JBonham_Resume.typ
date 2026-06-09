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
      - Refactoring mapping and localization stack for greater accuracy and ease of use on a Clearpath Husky robot.
      - Built a sensor data ingestion pipeline processing raw hex-encoded XBee radio payloads, with automatic boot-time computation and GPS fallback for clock synchronization.
      - Creating a networked web interface for efficient file uploading onto a handheld laser engraver.
    ]
  )
  #experience("Software Co-Lead (Formerly Member)",
    "The Autonomous Robotic Vehicle Project",
    "Python, C++, ROS 2, Docker",
    "Aug 2025",
    "Present",
    "Edmonton, AB",
    [
      - Managing a large team of students working on various projects in topics like computer vision, visual servoing, PID control, and embedded software.
      - Collaborating with different disciplines including Electrical and Mechanical sub-teams.
      - Overseeing robot software accuracy and testing in real-world environments.
      - As a member, helped represent ARVP at RoboSub 2025, finishing in the top 10 out of 60 teams.
    ]
  )
  #experience("Robotics Research Intern",
    "Servier Virtual Cardiac Center | University of Alberta",
    "Java, C++, Python",
    "Jan 2026",
    "May 2026",
    "Edmonton, AB",
    [
      - Developed an automated robotic echocardiography routine for a collaborative KUKA LBR medical robot
      - Adjusted force parameters and ESM states to ensure safe human-robot interaction at all stages.
    ]
  )
  #experience("Teaching Assistant",
    "CMPUT 201 | University of Alberta",
    "C, Linux, Git, Bash",
    "Sep 2025",
    "Dec 2025",
    "Edmonton, AB",
    [
      - Evaluated and debugged code in a class of over 500 students.
      - Mentored students on CS topics such as C syntax, dynamic memory allocation, and Linux fundamentals.
      - Led weekly lab sessions of 100+ students, presenting helpful information and marking demonstrations.
    ]
  )
]

#let my_projects = [
  #project([
    Two-Wheel Self Balancing Robot | #link("https://jwillb.net/projects/robot")[#underline("Website")]
    ],
    "C++, RTOS, ESP-IDF",
    "Sep 2025",
    "Present",
    [
      - Developing with ESP-IDF on the low-level controller.
      - Integrated the MPU6050 IMU over I2C for sensing angular velocity, with both accelerometer and gyro data.
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
