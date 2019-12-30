
############################################################################
############################################################################
###                                                                      ###
###                                TITLE:                                ###
###                                R CODE                                ###
###                    AUTHOR: IVERSON (Zhuzheng) ZHOU                   ###
###                           DATE: 2016-02-02                           ###
###                              VERSION 1                               ###
###                    TOPIC: MBA Thesis Survey Result    				 ###
###                    DATASET: My Survey data                    		 ###
###                                                                      ###
############################################################################
############################################################################

data <- read.csv("survey_974914_R_data_file.csv", quote = "'\"", na.strings=c("", "\"\""), stringsAsFactors=FALSE)


# LimeSurvey Field type: F
data[, 1] <- as.numeric(data[, 1])
attributes(data)$variable.labels[1] <- "id"
names(data)[1] <- "id"
# LimeSurvey Field type: DATETIME23.2
data[, 2] <- as.character(data[, 2])
attributes(data)$variable.labels[2] <- "submitdate"
names(data)[2] <- "submitdate"
# LimeSurvey Field type: F
data[, 3] <- as.numeric(data[, 3])
attributes(data)$variable.labels[3] <- "lastpage"
names(data)[3] <- "lastpage"
# LimeSurvey Field type: A
data[, 4] <- as.character(data[, 4])
attributes(data)$variable.labels[4] <- "startlanguage"
names(data)[4] <- "startlanguage"
# LimeSurvey Field type: DATETIME23.2
data[, 5] <- as.character(data[, 5])
attributes(data)$variable.labels[5] <- "startdate"
names(data)[5] <- "startdate"
# LimeSurvey Field type: DATETIME23.2
data[, 6] <- as.character(data[, 6])
attributes(data)$variable.labels[6] <- "datestamp"
names(data)[6] <- "datestamp"
# LimeSurvey Field type: A
data[, 7] <- as.character(data[, 7])
attributes(data)$variable.labels[7] <- "ipaddr"
names(data)[7] <- "ipaddr"
# LimeSurvey Field type: A
data[, 8] <- as.character(data[, 8])
attributes(data)$variable.labels[8] <- "refurl"
names(data)[8] <- "refurl"
# LimeSurvey Field type: A
data[, 9] <- as.character(data[, 9])
attributes(data)$variable.labels[9] <- "[My team transforms individual knowledge to shared knowledge] 	Evaluate the following statements"
data[, 9] <- factor(data[, 9], levels=c("A1","A3","A2","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[9] <- "a1_SQ004"
# LimeSurvey Field type: A
data[, 10] <- as.character(data[, 10])
attributes(data)$variable.labels[10] <- "[Members of my team regularly share knowledge with other teams] 	Evaluate the following statements"
data[, 10] <- factor(data[, 10], levels=c("A1","A3","A2","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[10] <- "a1_SQ005"
# LimeSurvey Field type: A
data[, 11] <- as.character(data[, 11])
attributes(data)$variable.labels[11] <- "[My team regularly creates innovative processes] 	Evaluate the following statements"
data[, 11] <- factor(data[, 11], levels=c("A1","A3","A2","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[11] <- "a1_SQ006"
# LimeSurvey Field type: A
data[, 12] <- as.character(data[, 12])
attributes(data)$variable.labels[12] <- "[My firm has systems in place that efficiently capture workers’ knowledge] 	Evaluate the following statements"
data[, 12] <- factor(data[, 12], levels=c("A1","A3","A2","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[12] <- "a1_SQ008"
# LimeSurvey Field type: A
data[, 13] <- as.character(data[, 13])
attributes(data)$variable.labels[13] <- "[My firm is highly committed to research and development] 	Evaluate the following statements"
data[, 13] <- factor(data[, 13], levels=c("A1","A3","A2","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[13] <- "a1_SQ009"
# LimeSurvey Field type: A
data[, 14] <- as.character(data[, 14])
attributes(data)$variable.labels[14] <- "[I generally trust my colleagues] 	Evaluate the following statements"
data[, 14] <- factor(data[, 14], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[14] <- "D01_SQ001"
# LimeSurvey Field type: A
data[, 15] <- as.character(data[, 15])
attributes(data)$variable.labels[15] <- "[It is easy for me to trust my colleagues] 	Evaluate the following statements"
data[, 15] <- factor(data[, 15], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[15] <- "D01_SQ002"
# LimeSurvey Field type: A
data[, 16] <- as.character(data[, 16])
attributes(data)$variable.labels[16] <- "[I and my colleagues trust each other] 	Evaluate the following statements"
data[, 16] <- factor(data[, 16], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[16] <- "D01_SQ003"
# LimeSurvey Field type: A
data[, 17] <- as.character(data[, 17])
attributes(data)$variable.labels[17] <- "[I can trust the people I work with to lend me a hand if I needed it] 	Evaluate the following statements"
data[, 17] <- factor(data[, 17], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[17] <- "D01_SQ004"
# LimeSurvey Field type: A
data[, 18] <- as.character(data[, 18])
attributes(data)$variable.labels[18] <- "[I can easily identify the main points I want to cover with a coworker] 	Evaluate the following statements"
data[, 18] <- factor(data[, 18], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[18] <- "F01_SQ006"
# LimeSurvey Field type: A
data[, 19] <- as.character(data[, 19])
attributes(data)$variable.labels[19] <- "[I have a formal system in place to manage communication with coworkers] 	Evaluate the following statements"
data[, 19] <- factor(data[, 19], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[19] <- "F01_SQ009"
# LimeSurvey Field type: A
data[, 20] <- as.character(data[, 20])
attributes(data)$variable.labels[20] <- "[I take time to organize my thoughts before I meet with a coworker] 	Evaluate the following statements"
data[, 20] <- factor(data[, 20], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[20] <- "F01_SQ010"
# LimeSurvey Field type: A
data[, 21] <- as.character(data[, 21])
attributes(data)$variable.labels[21] <- "[Helping a coworker come up to speed more quickly benefits me directly] 	Evaluate the following statements"
data[, 21] <- factor(data[, 21], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[21] <- "F01_SQ014"
# LimeSurvey Field type: A
data[, 22] <- as.character(data[, 22])
attributes(data)$variable.labels[22] <- "[I am highly motivated to be a good mentor] 	Evaluate the following statements"
data[, 22] <- factor(data[, 22], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[22] <- "F01_SQ016"
# LimeSurvey Field type: A
data[, 23] <- as.character(data[, 23])
attributes(data)$variable.labels[23] <- "[After hearing a new idea or concept, I tend to compare it with my experience to help me comprehend the meaning] 	Evaluate the following statements"
data[, 23] <- factor(data[, 23], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[23] <- "J01_SQ001"
# LimeSurvey Field type: A
data[, 24] <- as.character(data[, 24])
attributes(data)$variable.labels[24] <- "[I understand others’ thoughts better by repeating what they said and asking them “Is this what you mean?”] 	Evaluate the following statements"
data[, 24] <- factor(data[, 24], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[24] <- "J01_SQ002"
# LimeSurvey Field type: A
data[, 25] <- as.character(data[, 25])
attributes(data)$variable.labels[25] <- "[I will tell others what I think to make sure my understanding is the same as theirs.] 	Evaluate the following statements"
data[, 25] <- factor(data[, 25], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[25] <- "J01_SQ003"
# LimeSurvey Field type: A
data[, 26] <- as.character(data[, 26])
attributes(data)$variable.labels[26] <- "[When I have finished saying something, I will ask the other person if it is necessary to repeat to make sure he/she understands exactly what I mean.] 	Evaluate the following statements"
data[, 26] <- factor(data[, 26], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[26] <- "J01_SQ004"
# LimeSurvey Field type: A
data[, 27] <- as.character(data[, 27])
attributes(data)$variable.labels[27] <- "[When communicating with others, I will give others time to think about what we just discussed.] 	Evaluate the following statements"
data[, 27] <- factor(data[, 27], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[27] <- "J01_SQ005"
# LimeSurvey Field type: A
data[, 28] <- as.character(data[, 28])
attributes(data)$variable.labels[28] <- "[In team discussion, I will actively share my experience with others.] 	Evaluate the following statements"
data[, 28] <- factor(data[, 28], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[28] <- "B02_SQ001"
# LimeSurvey Field type: A
data[, 29] <- as.character(data[, 29])
attributes(data)$variable.labels[29] <- "[In my work team, my teammates and I will share life or work experience with each other.] 	Evaluate the following statements"
data[, 29] <- factor(data[, 29], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[29] <- "B02_SQ002"
# LimeSurvey Field type: A
data[, 30] <- as.character(data[, 30])
attributes(data)$variable.labels[30] <- "[During group discussion, I try to find out others’ opinions, thoughts and other information.] 	Evaluate the following statements"
data[, 30] <- factor(data[, 30], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[30] <- "B02_SQ003"
# LimeSurvey Field type: A
data[, 31] <- as.character(data[, 31])
attributes(data)$variable.labels[31] <- "[During discussion, I will bring out some concepts, thoughts or ideas.  I often encourage others to express their thoughts] 	Evaluate the following statements"
data[, 31] <- factor(data[, 31], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[31] <- "B02_SQ004"
# LimeSurvey Field type: A
data[, 32] <- as.character(data[, 32])
attributes(data)$variable.labels[32] <- "[Before team discussion, I will collect necessary information and show it to my teammates.] 	Evaluate the following statements"
data[, 32] <- factor(data[, 32], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[32] <- "B02_SQ005"
# LimeSurvey Field type: A
data[, 33] <- as.character(data[, 33])
attributes(data)$variable.labels[33] <- "[I like to get to know the people whom I will work with before going into a project together.] 	Evaluate the following statements"
data[, 33] <- factor(data[, 33], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[33] <- "B02_SQ006"
# LimeSurvey Field type: A
data[, 34] <- as.character(data[, 34])
attributes(data)$variable.labels[34] <- "[During the discussion, I tend to help organize ideas and make conclusion to facilitate the discussion] 	Evaluate the following statements"
data[, 34] <- factor(data[, 34], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "trongly agree"))
names(data)[34] <- "E01_SQ001"
# LimeSurvey Field type: A
data[, 35] <- as.character(data[, 35])
attributes(data)$variable.labels[35] <- "[When coming across problems, I tend to use my experience to help solving problems.] 	Evaluate the following statements"
data[, 35] <- factor(data[, 35], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "trongly agree"))
names(data)[35] <- "E01_SQ002"
# LimeSurvey Field type: A
data[, 36] <- as.character(data[, 36])
attributes(data)$variable.labels[36] <- "[After every event, I have the habit of organizing and making summary of what happened.] 	Evaluate the following statements"
data[, 36] <- factor(data[, 36], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "trongly agree"))
names(data)[36] <- "E01_SQ003"
# LimeSurvey Field type: A
data[, 37] <- as.character(data[, 37])
attributes(data)$variable.labels[37] <- "[During discussion, I will organize everyone’s thoughts in my mind. ] 	Evaluate the following statements"
data[, 37] <- factor(data[, 37], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "trongly agree"))
names(data)[37] <- "E01_SQ004"
# LimeSurvey Field type: A
data[, 38] <- as.character(data[, 38])
attributes(data)$variable.labels[38] <- "[I like to collect new information, and making connection of new and old knowledge to work up new concepts. ] 	Evaluate the following statements"
data[, 38] <- factor(data[, 38], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "trongly agree"))
names(data)[38] <- "E01_SQ005"
# LimeSurvey Field type: A
data[, 39] <- as.character(data[, 39])
attributes(data)$variable.labels[39] <- "[I like to organize ambiguous concepts into structure.] 	Evaluate the following statements"
data[, 39] <- factor(data[, 39], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "trongly agree"))
names(data)[39] <- "E01_SQ006"
# LimeSurvey Field type: A
data[, 40] <- as.character(data[, 40])
attributes(data)$variable.labels[40] <- "[I expect to be rewarded with a higher salary in return for sharing knowledge with my colleagues] 	Evaluate the following statements"
data[, 40] <- factor(data[, 40], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[40] <- "G01_SQ001"
# LimeSurvey Field type: A
data[, 41] <- as.character(data[, 41])
attributes(data)$variable.labels[41] <- "[I expect to receive monetary rewards (i.e. additional bonus ) in return for sharing knowledge with my colleagues] 	Evaluate the following statements"
data[, 41] <- factor(data[, 41], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[41] <- "G01_SQ002"
# LimeSurvey Field type: A
data[, 42] <- as.character(data[, 42])
attributes(data)$variable.labels[42] <- "[I expect to receive opportunities to learn from others in return for sharing knowledge with my colleagues] 	Evaluate the following statements"
data[, 42] <- factor(data[, 42], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[42] <- "G01_SQ003"
# LimeSurvey Field type: A
data[, 43] <- as.character(data[, 43])
attributes(data)$variable.labels[43] <- "[I expect to be rewarded with an increased job security in return for sharing knowledge with my colleagues] 	Evaluate the following statements"
data[, 43] <- factor(data[, 43], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[43] <- "G01_SQ004"
# LimeSurvey Field type: A
data[, 44] <- as.character(data[, 44])
attributes(data)$variable.labels[44] <- "[My knowledge sharing would expand the scope of my associations with other members in my company] 	Evaluate the following statements"
data[, 44] <- factor(data[, 44], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[44] <- "H01_SQ001"
# LimeSurvey Field type: A
data[, 45] <- as.character(data[, 45])
attributes(data)$variable.labels[45] <- "[My knowledge sharing would strengthen the tie between the existing members in my company and myself] 	Evaluate the following statements"
data[, 45] <- factor(data[, 45], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[45] <- "H01_SQ002"
# LimeSurvey Field type: A
data[, 46] <- as.character(data[, 46])
attributes(data)$variable.labels[46] <- "[My knowledge sharing would draw smooth cooperation from my colleagues in the future] 	Evaluate the following statements"
data[, 46] <- factor(data[, 46], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[46] <- "H01_SQ003"
# LimeSurvey Field type: A
data[, 47] <- as.character(data[, 47])
attributes(data)$variable.labels[47] <- "[My knowledge sharing would enable me to make friends in my company] 	Evaluate the following statements"
data[, 47] <- factor(data[, 47], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[47] <- "H01_SQ004"
# LimeSurvey Field type: A
data[, 48] <- as.character(data[, 48])
attributes(data)$variable.labels[48] <- "[Our team is provided with IT support for collaboration work regardless of time and place] 	Evaluate the following statements"
data[, 48] <- factor(data[, 48], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[48] <- "C01_SQ001"
# LimeSurvey Field type: A
data[, 49] <- as.character(data[, 49])
attributes(data)$variable.labels[49] <- "[Our team is provided with IT support for communication among team members] 	Evaluate the following statements"
data[, 49] <- factor(data[, 49], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[49] <- "C01_SQ002"
# LimeSurvey Field type: A
data[, 50] <- as.character(data[, 50])
attributes(data)$variable.labels[50] <- "[Our team is provided with IT support for searching and accessing necessary information] 	Evaluate the following statements"
data[, 50] <- factor(data[, 50], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[50] <- "C01_SQ003"
# LimeSurvey Field type: A
data[, 51] <- as.character(data[, 51])
attributes(data)$variable.labels[51] <- "[Our team is provided with IT support for systematic storing] 	Evaluate the following statements"
data[, 51] <- factor(data[, 51], levels=c("A1","A2","A3","A4","A5"),labels=c("Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"))
names(data)[51] <- "C01_SQ004"
# LimeSurvey Field type: F
data[, 52] <- as.numeric(data[, 52])
attributes(data)$variable.labels[52] <- "[Trainings(both formal and informal) ] 	In your opinion, Which types of techniques will improve knowledge sharing in the organisation"
data[, 52] <- factor(data[, 52], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[52] <- "B01_SQ001"
# LimeSurvey Field type: F
data[, 53] <- as.numeric(data[, 53])
attributes(data)$variable.labels[53] <- "[Workshops/Seminar ] 	In your opinion, Which types of techniques will improve knowledge sharing in the organisation"
data[, 53] <- factor(data[, 53], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[53] <- "B01_SQ002"
# LimeSurvey Field type: F
data[, 54] <- as.numeric(data[, 54])
attributes(data)$variable.labels[54] <- "[Cross-functional teams ] 	In your opinion, Which types of techniques will improve knowledge sharing in the organisation"
data[, 54] <- factor(data[, 54], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[54] <- "B01_SQ003"
# LimeSurvey Field type: F
data[, 55] <- as.numeric(data[, 55])
attributes(data)$variable.labels[55] <- "[Teamwork ] 	In your opinion, Which types of techniques will improve knowledge sharing in the organisation"
data[, 55] <- factor(data[, 55], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[55] <- "B01_SQ004"
# LimeSurvey Field type: F
data[, 56] <- as.numeric(data[, 56])
attributes(data)$variable.labels[56] <- "[Meetings and discussion] 	In your opinion, Which types of techniques will improve knowledge sharing in the organisation"
data[, 56] <- factor(data[, 56], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[56] <- "B01_SQ005"
# LimeSurvey Field type: F
data[, 57] <- as.numeric(data[, 57])
attributes(data)$variable.labels[57] <- "[Tools and networks ( e.g. emails, EDRMS, JIRA, Shared folders)] 	In your opinion, Which types of techniques will improve knowledge sharing in the organisation"
data[, 57] <- factor(data[, 57], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[57] <- "B01_SQ006"
# LimeSurvey Field type: F
data[, 58] <- as.numeric(data[, 58])
attributes(data)$variable.labels[58] <- "Please select your gender"
data[, 58] <- factor(data[, 58], levels=c(1,2),labels=c("Female", "Male"))
names(data)[58] <- "A0"
# LimeSurvey Field type: A
data[, 59] <- as.character(data[, 59])
attributes(data)$variable.labels[59] <- "Please select your age group	 "
data[, 59] <- factor(data[, 59], levels=c("A1","A2","A3","A4","A5","A6"),labels=c("Under 20 years old", "20-29 years", "30-39 years", "40-49 years", "50-59 years", "60 years or over"))
names(data)[59] <- "A01"
# LimeSurvey Field type: A
data[, 60] <- as.character(data[, 60])
attributes(data)$variable.labels[60] <- "What is your ethnic group"
data[, 60] <- factor(data[, 60], levels=c("A1","A2","A3","A4","A5"),labels=c("Maori", "NZ European", "Pacific Island", "Asian", "Other"))
names(data)[60] <- "A04"
# LimeSurvey Field type: A
data[, 61] <- as.character(data[, 61])
attributes(data)$variable.labels[61] <- "What is your length of service in this organisation"
data[, 61] <- factor(data[, 61], levels=c("A1","A2","A3","A4","A5"),labels=c("Less than 2 years", "2-5 years", "6-10 years", "11-20 years", "20 years +"))
names(data)[61] <- "A03"
# LimeSurvey Field type: A
data[, 62] <- as.character(data[, 62])
attributes(data)$variable.labels[62] <- "What is the highest level of education you have completed?"
data[, 62] <- factor(data[, 62], levels=c("A1","A2","A3","A4","A5","A6","A7","A8","A9","A10","A11"),labels=c("High School or Below", "Certificate", "Diploma", "Bachelor's Degree", "Graduate Certificate", "Graduate Diploma", "Bachelor Honours Degree", "Postgraduate Certificate", "Postgraduate Diploma", "Master's Degree", "Doctoral Degree"))
names(data)[62] <- "A02"
# LimeSurvey Field type: A
data[, 63] <- as.character(data[, 63])
attributes(data)$variable.labels[63] <- "The industry sector that you work in"
data[, 63] <- factor(data[, 63], levels=c("A1","A2","A3","A4","A5","A6","A7","A8","A9","A10","A11","A12","A13","A14","A15","A16","A17","A18","A19"),labels=c("Agriculture, Forestry and Fishing", "Mining", "Manufacturing", "Electricity, Gas, Water and Waste Services", "Construction", "Wholesale Trade", "Retail Trade", "Accommodation and Food Services", "Transport, Postal and Warehousing", "Information Media and Telecommunication", "Financial and Insurance Services", "Rental, Hiring and Real Estate Services", "Professional, Scientific and Technical Services", "Administrative and Support Services", "Public Administration and Safety", "Education and Training", "Health Care and Social Assistance", "Arts and Recreation Services", "Other Services"))
names(data)[63] <- "A"
# LimeSurvey Field type: F
data[, 64] <- as.numeric(data[, 64])
attributes(data)$variable.labels[64] <- "Would you like to be in a prize draw to win 2 movie vouchers (valid until July 2016) or receive a report summarising the findings?	 "
data[, 64] <- factor(data[, 64], levels=c(1,2),labels=c("Yes", "No"))
names(data)[64] <- "P1"
# LimeSurvey Field type: A
data[, 65] <- as.character(data[, 65])
attributes(data)$variable.labels[65] <- "Please enter your email address to be in the prize draw"
names(data)[65] <- "P2"
# LimeSurvey Field type: 
data[, 66] <- as.character(data[, 66])
attributes(data)$variable.labels[66] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 67] <- as.character(data[, 67])
attributes(data)$variable.labels[67] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 68] <- as.character(data[, 68])
attributes(data)$variable.labels[68] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 69] <- as.character(data[, 69])
attributes(data)$variable.labels[69] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 70] <- as.character(data[, 70])
attributes(data)$variable.labels[70] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 71] <- as.character(data[, 71])
attributes(data)$variable.labels[71] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 72] <- as.character(data[, 72])
attributes(data)$variable.labels[72] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 73] <- as.character(data[, 73])
attributes(data)$variable.labels[73] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 74] <- as.character(data[, 74])
attributes(data)$variable.labels[74] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 75] <- as.character(data[, 75])
attributes(data)$variable.labels[75] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 76] <- as.character(data[, 76])
attributes(data)$variable.labels[76] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 77] <- as.character(data[, 77])
attributes(data)$variable.labels[77] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 78] <- as.character(data[, 78])
attributes(data)$variable.labels[78] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 79] <- as.character(data[, 79])
attributes(data)$variable.labels[79] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 80] <- as.character(data[, 80])
attributes(data)$variable.labels[80] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 81] <- as.character(data[, 81])
attributes(data)$variable.labels[81] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 82] <- as.character(data[, 82])
attributes(data)$variable.labels[82] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 83] <- as.character(data[, 83])
attributes(data)$variable.labels[83] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 84] <- as.character(data[, 84])
attributes(data)$variable.labels[84] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 85] <- as.character(data[, 85])
attributes(data)$variable.labels[85] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 86] <- as.character(data[, 86])
attributes(data)$variable.labels[86] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 87] <- as.character(data[, 87])
attributes(data)$variable.labels[87] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 88] <- as.character(data[, 88])
attributes(data)$variable.labels[88] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 89] <- as.character(data[, 89])
attributes(data)$variable.labels[89] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 90] <- as.character(data[, 90])
attributes(data)$variable.labels[90] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 91] <- as.character(data[, 91])
attributes(data)$variable.labels[91] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 92] <- as.character(data[, 92])
attributes(data)$variable.labels[92] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 93] <- as.character(data[, 93])
attributes(data)$variable.labels[93] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 94] <- as.character(data[, 94])
attributes(data)$variable.labels[94] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 95] <- as.character(data[, 95])
attributes(data)$variable.labels[95] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 96] <- as.character(data[, 96])
attributes(data)$variable.labels[96] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 97] <- as.character(data[, 97])
attributes(data)$variable.labels[97] <- ""
#sql_name not set
