
quiz1 = Quiz.create(title: "First test")
quiz2 = Quiz.create(title: "Second test")

questuion1 = Question.create(content: "Do the moon orbits the earth?", quiz: quiz1)
answer1_1 = Answer.create(content: "Yes", right:true, question: questuion1)
answer1_2 = Answer.create(content: "No", right:false, question: questuion1)
answer1_3 = Answer.create(content: "Earth is flat!", right:false, question: questuion1)
