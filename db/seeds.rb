
user = User.create(email: 'user+msocek@gmail.com', username: 'SocekUser', permission: nil, password:'mypass')
admin = User.create(email: 'admin+msocek@gmail.com', username: 'SocekAdmin', permission: 'admin', password:'mypass')

quiz1 = Quiz.create(title: "First test")
quiz2 = Quiz.create(title: "Second test")

questuion1 = Question.create(content: "Do the moon orbits the earth?", quiz: quiz1)
answer1_1 = Answer.create(content: "Yes", right:true, question: questuion1)
answer1_2 = Answer.create(content: "No", right:false, question: questuion1)
answer1_3 = Answer.create(content: "Earth is flat!", right:false, question: questuion1)

questuion2 = Question.create(content: "What is the currency in the United States of America?", quiz: quiz1)
answer1_1 = Answer.create(content: "Euro", right:false, question: questuion2)
answer1_2 = Answer.create(content: "Dolar", right:true, question: questuion2)
answer1_3 = Answer.create(content: "Earth is flat! I tell you man!", right:false, question: questuion2)

questuion3 = Question.create(content: "Who is the king of the Great Britain?", quiz: quiz1)
answer1_1 = Answer.create(content: "Sting", right:false, question: questuion3)
answer1_2 = Answer.create(content: "Michal Jackson", right:false, question: questuion3)
answer1_3 = Answer.create(content: "GB has no king right now.", right:true, question: questuion3)
answer1_4 = Answer.create(content: "Queen Elizabeth is stil kicking!", right:true, question: questuion3)
answer1_5 = Answer.create(content: "Earth is flat, because I tell you so!", right:false, question: questuion3)
