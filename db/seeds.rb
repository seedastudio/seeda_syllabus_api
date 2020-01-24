# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ConcentrationKeyword.destroy_all
Concentration.destroy_all
Goal.destroy_all
Keyword.destroy_all
Project.destroy_all
Resource.destroy_all
SyllabusResource.destroy_all
Syllabus.destroy_all
User.destroy_all

# USERS
ayana = User.create(name: "Ayana Zaire", email: "ayana@ayana.com", password: "pw", website: "ayzaco.com", username: "ayzaco", location: "Richmond, VA", bio: "life long learner")
mebi = User.create(name: "Chukwudumebi", email: "chukwu@chukwu.com", password: "pw", website: "misterfili.xyz", username: "misterfili", location: "Richmond, VA", bio: "amazing artist")

# SYLLABI
ayana_syllabus = Syllabus.create(title: "AYZACO", description: "This intersection of study (IOS) is informed by my background as an artist, educator, and designer with a community facing practice.  My previous work in engaging the imagination and memory through art and photography, researching labor studies and materials, and hosting workshops on design, facilitating community discussions, and conducting lectures online and digitally has inspired me to embark on this IOS.", user_id: ayana.id)

mebi_syllabus = Syllabus.create(title: "EngineerTree5", description: "Full time hired gun for all things code by 2023. Holler at me.", user_id: mebi.id)

# CONCENTRATIONS
imagination = Concentration.create(title: "Imagination", description: "Whenever one’s focus is liberation, the imagination must act as a core component. To tell the future one must engage their memory and imagination.", syllabus_id: ayana_syllabus.id)

industrialization = Concentration.create(title: "Industrialization", description: "Industrialization is present in manufacturing, education, and our sense of self. We must learn and unlearn these teachings to make liberation possible.", syllabus_id: ayana_syllabus.id)

pedagogy = Concentration.create(title: "Pedagogy", description: "To learn is to be human. To teach is to love. We become free by figuring out how best to expand our inner worlds.", syllabus_id: ayana_syllabus.id)

# KEYWORDS
art = Keyword.create(word: "Art")
pleasure = Keyword.create(word: "Pleasure")
sociology = Keyword.create(word: "Sociology")
design = Keyword.create(word: "Design")
decentralization = Keyword.create(word: "Decentralization")
cooperation = Keyword.create(word: "Cooperation")
curriculum = Keyword.create(word: "Curriculum")
liberation = Keyword.create(word: "Liberation")
utility = Keyword.create(word: "Utility")
capitalism = Keyword.create(word: "Capitalism")
classroom = Keyword.create(word: "Classroom")

# CONCENTRATION KEYWORDS
imagination_art = ConcentrationKeyword.create(concentration_id: imagination.id, keyword_id: art.id)
imagination_pleasure = ConcentrationKeyword.create(concentration_id: imagination.id, keyword_id: pleasure.id)

industrialization_design = ConcentrationKeyword.create(concentration_id: industrialization.id, keyword_id: design.id)
industrialization_decentralization = ConcentrationKeyword.create(concentration_id: industrialization.id, keyword_id: decentralization.id)

pedagogy_decentralization = ConcentrationKeyword.create(concentration_id: pedagogy.id, keyword_id: decentralization.id)
pedagogy_curriculum = ConcentrationKeyword.create(concentration_id: pedagogy.id, keyword_id: curriculum.id)
pedagogy_liberation = ConcentrationKeyword.create(concentration_id: pedagogy.id, keyword_id: liberation.id)
pedagogy_classroom = ConcentrationKeyword.create(concentration_id: pedagogy.id, keyword_id: classroom.id)

# PROJECTS
# feature to add: a project can belong to many concentrations (add a join table between project and concentration)
seeda_syllabus = Project.create(title: "Seeda Syllabus", description: "Seeda is a decentralized institute for black thought and collective study. The mission is: collectively create and share educational resources that will aid in liberation. Seeda is related to my IOS as it is a pedagogy research practice imagining how we might dismantle the industrialization of education and leverage the decentralization power of the internet.", deadline: "05/15/2020", concentration_id: pedagogy.id)

griot_practice = Project.create(title: "Griot Practice", description: "With a “Sankofa sensibility” my practice as a griot engages our collective memory by using storytelling to educate us on our past and paint the future. The primary materials I am employing are copper, cotton, leather, acrylic paint, and appropriating photographs. Relying on the black DIY aesthetic the works will be grounded in familiarity while also feeling suspended in an alternate world.", deadline: "09/15/2020", concentration_id: industrialization.id)

seeda_studio = Project.create(title: "Seeda Studio", description: "Community Organizations and Government Institutions are receiving high demand for STEAM skills training but don’t have the in-house ability to design curriculum in line with their goals, values, and student needs and train instructors on said curriculum. Seeda Studio provides a bespoke curriculum design offering by leveraging skill and experience in co-building and deploying tech pedagogy and leveraging community organizing experience by ensuring this curriculum is human centered and designed around the organizations values.", deadline: "05/15/2020", concentration_id: imagination.id)

# GOALS
research = Goal.create(description: "Research inclusive and intuitive pedagogical practices", syllabus_id: ayana_syllabus.id)
collective = Goal.create(description: "Successfully engaging in deep collective learning online", syllabus_id: ayana_syllabus.id)
cooperative = Goal.create(description: "Learn about how to start a platform cooperative", syllabus_id: ayana_syllabus.id)

# RESOURCE
# add author/attribution & year attribute
captive_tech = Resource.create(title: "Captivating Technology", url: "https://www.ruhabenjamin.com/captivating-technology")
pedagogy_oppressed = Resource.create(title: "Pedagogy of the Oppressed", url: "https://en.wikipedia.org/wiki/Pedagogy_of_the_Oppressed")
collective_courage = Resource.create(title: "Collective Courage", url: "http://www.psupress.org/books/titles/978-0-271-06216-7.html")

# SYLLABUS_RESOURCE
ayana_captive_tech = SyllabusResource.create(syllabus_id: ayana_syllabus.id, resource_id: captive_tech.id)
ayana_pedagogy_oppressed = SyllabusResource.create(syllabus_id: ayana_syllabus.id, resource_id: pedagogy_oppressed.id)
ayana_collective_courage = SyllabusResource.create(syllabus_id: ayana_syllabus.id, resource_id: collective_courage.id)

# ACCOUNTABILITY PARTNERS
# in the future associate users who are using the platform to their link on others accountability boards
amanda = AcctPartner.create(name: "Amanda", website: "https://www.elevatebygrace.com/", syllabus_id: ayana_syllabus.id)
mebi = AcctPartner.create(name: "Chukwudumebi", website: "https://www.misterfili.com/", syllabus_id: ayana_syllabus.id)
mia = AcctPartner.create(name: "Mia", website: "http://www.miavictory.com/", syllabus_id: ayana_syllabus.id)

# ACCOUNTABILITY METRICS
attendance = AcctMetric.create(metric: "Lack of attendance based on weekly goal", syllabus_id: ayana_syllabus.id)
deliverable = AcctMetric.create(metric: "Missed deliverable deadline", syllabus_id: ayana_syllabus.id)

# ACCOUNTABILITY MEASURES
# DEBUG: measures not seeding and can't be created in console
time_sacrifice = AcctMeasure.create(measure: "Must make “free-time” sacrifices to catch up", acct_metric_id: deliverable.id)
social = AcctMeasure.create(measure: "Delete all social media apps the following week", acct_metric_id: attendance.id)
