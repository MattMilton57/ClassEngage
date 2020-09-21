t1 = Teacher.create(name:"Gilderoy Lockhart")
t2 = Teacher.create(name:"Horace Slughorn")
t3 = Teacher.create(name:"Sybill Trelawney")
t4 = Teacher.create(name:"Remus Lupin")
t5 = Teacher.create(name:"Rubeus Hagrid")
t6 = Teacher.create(name:"Severus Snape")
t7 = Teacher.create(name:"Pomona Sprout")
t8 = Teacher.create(name:"Minerva McGonagall")




p1 = ClassPeriod.create(subject:"Transfiguration", teacher_id:t1.id)
p2 = ClassPeriod.create(subject:"Biology", teacher_id:t1.id)
p3 = ClassPeriod.create(subject:"Biology", teacher_id:t1.id)
p5 = ClassPeriod.create(subject:"Robotics Engineering", teacher_id:t1.id)
p6 = ClassPeriod.create(subject:"Freshmen Science 2", teacher_id:t1.id)

s1 = Student.create(name:'Steve Rodgers',)
s2 = Student.create(name:'Jane Doe',)