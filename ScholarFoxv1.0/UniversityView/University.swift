//
//  University.swift
//  ScholarFoxv1.0
//
//  Created by Luis Alvarado on 9/13/22.
//

import Foundation

// @Breif: A struct for CSU universities
struct University: Identifiable {
    var id = UUID()
    
    var image: String

    var name: String
    
    var city: String
    
    var gpa: Double

    var acceptanceRating: String
    
    var average_cost: String
    
    var out_of_state: String
    
    var description: String
    
    var web: String
}

// @Breif: A struct for the UC universities
struct Uuniversity: Identifiable {
    var id = UUID()
    
    var image: String

    var name: String
    
    var city: String
    
    var gpa: Double

    var acceptanceRating: String
    
    var transfer: String
    
    var rating: Double
    
    var average_cost: String
    
    var out_of_state: String
    
    var description: String
    
    var mascot: String
    
    var campus_setting: String
    
    var academic_calander: String
    
    var web: String
}

// @Breif: University storage for later use.
var csu = [
    University(image: "Fullerton", name: "California State University, Fullerton", city: "Fullerton, CA", gpa: 3.4, acceptanceRating: "69%", average_cost: "$8K", out_of_state: "18.9K", description: "California State University—Fullerton is a public institution that was founded in 1957. It has a total undergraduate enrollment of 35,401 (fall 2021), its setting is city, and the campus size is 236 acres. It utilizes a semester-based academic calendar. California State University—Fullerton's ranking in the 2022-2023 edition of Best Colleges is National Universities, #166.", web: "http://admissions.fullerton.edu/prospectivestudent/admissions_ftf.php"),
    University(image: "LongBeach", name: "California State University, Long Beach", city: "City: Long Beach, CA", gpa: 3.61, acceptanceRating: "42%", average_cost: "$10K", out_of_state: "19K", description: "California State University, Long Beach, a vibrant, comprehensive, urban university with an enrollment of nearly 38,000 students, is one of the largest campuses in the 23-member California State University (CSU) system. Located in Long Beach, the fifth largest city in California, the 322-acre campus near the ocean offers a beautifully landscaped, garden-like setting, an excellent physical plant, and outstanding instructional facilities enhanced by attractive, aesthetically pleasing architecture and design. Strongly committed to high-quality undergraduate and graduate programs, the university has received national accolades for improving graduation rates and reducing opportunity gaps and takes great pride in the diversity of its student body. Equally as diverse is the breadth of academic offerings - students graduating with degrees in programs varying from criminal justice to engineering, business or the arts are among the most highly sought after by employers. The university also works diligently to fulfill its mission as a California State University campus and prepares the most nurses as well as elementary, secondary and special education teachers of any CSU.", web: "https://www.csulb.edu/apply"),
    University(image: "SDSU", name: "San Diego State University", city: "San Diego, CA", gpa: 3.7, acceptanceRating: "37%", average_cost: "$8.2K", out_of_state: "20K", description: "San Diego State University is a public institution that was founded in 1897. It has a total undergraduate enrollment of 30,865 (fall 2021), its setting is urban, and the campus size is 560 acres. It utilizes a semester-based academic calendar. San Diego State University's ranking in the 2022-2023 edition of Best Colleges is National Universities, #151.", web: "https://admissions.sdsu.edu/apply"),
    University(image: "DH", name: "California State University, Dominguez Hills", city: "City: Carson, CA", gpa: 3.15, acceptanceRating: "87%", average_cost: "$8.4K", out_of_state: "17.8K", description: "California State University—Dominguez Hills is a public institution that was founded in 1960. It has a total undergraduate enrollment of 15,070 (fall 2021), its setting is suburban, and the campus size is 346 acres. It utilizes a semester-based academic calendar. California State University—Dominguez Hills' ranking in the 2022-2023 edition of Best Colleges is Regional Universities West, #56. ", web: "https://www.csudh.edu/coe/apply/"),
    University(image: "Poly", name: "California State Polytechnic University", city: "San Luis Obispo, CA", gpa: 3.7, acceptanceRating: "65%", average_cost: "$7.5K", out_of_state: "26K", description: "California State Polytechnic University—Pomona is a public institution that was founded in 1938. It has a total undergraduate enrollment of 26,974 (fall 2021), its setting is suburban, and the campus size is 1,438 acres. It utilizes a semester-based academic calendar. California State Polytechnic University—Pomona's ranking in the 2022-2023 edition of Best Colleges is Regional Universities West, #14.", web: "https://www.calpoly.edu/admissions/first-year-student/how-to-apply"),
    University(image: "LA", name: "California State University, Los Angeles", city: "Los Angeles, CA", gpa: 3.43, acceptanceRating: "76%", average_cost: "6.8K", out_of_state: "$18.7K", description: "California State University—Los Angeles is a public institution that was founded in 1947. It has a total undergraduate enrollment of 23,484 (fall 2021), its setting is urban, and the campus size is 175 acres. It utilizes a semester-based academic calendar. California State University—Los Angeles' ranking in the 2022-2023 edition of Best Colleges is Regional Universities West, #24.", web: "https://www.calstatela.edu/admissions/freshman-application-and-admission"),
    University(image: "CPP", name: "Cal Poly Pomona", city: "Pomona, CA", gpa: 3.7, acceptanceRating: "65%", average_cost: "7.5K", out_of_state: "19.3K", description: "California State Polytechnic University—Pomona is a public institution that was founded in 1938. It has a total undergraduate enrollment of 26,974 (fall 2021), its setting is suburban, and the campus size is 1,438 acres. It utilizes a semester-based academic calendar. California State Polytechnic University—Pomona's ranking in the 2022-2023 edition of Best Colleges is Regional Universities West, #14.", web: "https://www.cpp.edu/admissions/intl/apply.shtml"),
    University(image: "Northridge", name: "California State University, Northridge", city: "Northridge, CA", gpa: 3.38, acceptanceRating: "66%", average_cost: "8.5K", out_of_state: "18.9K", description: "California State University—Northridge is a public institution. It has a total undergraduate enrollment of 34,275 (fall 2021), its setting is urban, and the campus size is 356 acres. It utilizes a semester-based academic calendar. California State University—Northridge's ranking in the 2022-2023 edition of Best Colleges is Regional Universities West, #32. Its in-state tuition and fees are $7,043; out-of-state tuition and fees are $18,923.", web: "https://www.csun.edu/ncod/how-apply")
]

var uc = [
    Uuniversity(image: "Irvine", name: "University of California, Irvine", city: "Irvine, CA", gpa: 4.0, acceptanceRating: "27%", transfer: "42%", rating: 4, average_cost: "11.4K", out_of_state: "30K", description: "The University of California in Irvine was founded in 1965 in the town and state of the same name, and is the youngest member of the Association of American Universities. This high-research institution offers 92 majors and 86 minors and the campus is home to 10 student housing communities, an urban garden, and a variety of research centers and institutes. UC Irvine offers a Campuswide Honors Program which comes with a number of benefits, including priority class enrollment, the opportunity to engage in undergraduate research, and honors academic advising. Graduation rates at UCI for Pell Grant recipients are at 85 percent within 6 years, beating the national average by more than 25 percent, emphasizing UC Irvine’s dedication to the American Dream. ", mascot: "Anteaters", campus_setting: "Major City", academic_calander: "Quarter System", web: "https://www.admissions.uci.edu/apply/how-to-apply/index.php"),
    Uuniversity(image: "SB", name: "University of California, Santa Barbara", city: "Santa Barbara, CA", gpa: 4.0, acceptanceRating: "30%", transfer: "57%", rating: 4, average_cost: "17.2K", out_of_state: "44.2K", description: "University of California in Santa Barbara is a leading research institution in the city and state of the same name. UCSB is a member of the Association of American Universities, home to the National Center for Ecological Analysis, as well as an Hispanic-Serving Institution. UC Santa Barbara offers more than 200 programs of study from its campus atop cliffs, which is bordered by the Pacific Ocean on two sides. The university is also home to a number of national and research center and units, the unique College of Creative Studies, and is the editorial headquarters for The Writings of Henry D. Thoreau.", mascot: "Gauchos", campus_setting: "Suburb/Town", academic_calander: "Quarter", web: "https://admissions.sa.ucsb.edu"),
    Uuniversity(image: "SC", name: "University of California, Santa Cruz", city: "Santa Cruz, CA", gpa: 3.5, acceptanceRating: "51%", transfer: "68%", rating: 4, average_cost: "18K", out_of_state: "30K", description: "Founded in 1965, the University of California-Santa Cruz is a public institution and part of the University of California System. UCSC offers undergraduate degrees in 65 academic majors within departments of Arts, Humanities, Physical Sciences, Engineering, and Social Sciences. Additionally, UCSC is home to the Real Food Campus Commitment program providing sustainable food to its students as well as maintaining the oldest organic farm and garden programs in the nation. For sports fans, UC Santa Cruz fields 15 men’s and women’s athletic teams known as the Banana Slugs.", mascot: "Sammy the Slug", campus_setting: "Small City" , academic_calander: "Quarter System", web: "https://admissions.ucsc.edu"),
    Uuniversity(image: "Merced", name: "University of California, Merced", city: "Merced, CA", gpa: 3.6, acceptanceRating: "72%", transfer: "53%", rating: 3.8, average_cost: "39K", out_of_state: "43.8K", description: "Besides being a world-class public research university with the feel of a small, private campus, there are a lot of reasons why people are increasingly interested in becoming Bobcats. UC Merced is a special place where intelligent, spirited people gather to learn, grow and reach their highest potentials. Bobcats are people who care about each others' success and ability to thrive, and care about the world around them. UC Merced is a place where nature touches every part of the campus. It's an extremely green place that is, by design, transforming the region economically, academically and environmentally. It's a place where students at all levels have opportunities to stretch themselves intellectually and experientially, in close concert with faculty members who are stars and rising stars in their fields. ", mascot: "Bobcats", campus_setting: "Suburb/Town", academic_calander: "Quarter System", web: "https://admissions.ucmerced.edu/apply"),
    Uuniversity(image: "Davis", name: "University of California, Davis", city: "Davis, CA", gpa: 4.0, acceptanceRating: "39%", transfer: "55%", rating: 4.2, average_cost: "17K", out_of_state: "45K", description: "The University of California in Davis is a public institution in northern California and one of the largest universities by enrollment in the UC System. UC Davis is home to four colleges conferring undergraduate degrees and six professional schools. To demonstrate a commitment to sustainability, UC Davis features 20 LEED certified buildings and the Agricultural Sustainability Institute, an ode to its beginning as a farming school. The university campus is also home to a botanical conservatory, arboretum, and honey bee haven.", mascot: "Cow", campus_setting: "Suburb or town", academic_calander: "Quarter System", web: "https://www.ucdavis.edu/admissions/undergraduate/apply"),
    Uuniversity(image: "Riverside", name: "University Of California, Riverside ", city: "Riverside, CA", gpa: 3.8, acceptanceRating: "57%", transfer: "67%", rating: 3.7, average_cost: "12K", out_of_state: "43.8K", description: "The University of California-Riverside is a public institution on 1,200 acres of land in Southern California’s Inland Empire. A part of the UC system, UCR is home to colleges of Humanities, Engineering, and Natural Sciences conferring undergraduate degrees in more than 80 academic majors. A diverse commuter school and a member of the University Innovation Alliance, Riverside features the highest percentage of African Americans and the second highest percentage of Latino students of all UC schools. As a research institution, UCR is home to a number of centers and facilities, including the Brain Game Center and Center for Advanced Neuroimaging, and is currently developing two multidisciplinary research centers, as well. The Riverside campus also includes one thousand varieties of citrus trees and the university utilizes them to research plant sciences and biology.", mascot: "Scott Highlander", campus_setting: "Major City", academic_calander: "Quarter System", web: "https://www.ucr.edu/apply"),
    Uuniversity(image: "UCLA", name: "University of California, Los Angeles", city: "Los Angeles, CA", gpa: 3.9, acceptanceRating: "12%", transfer: "24%", rating: 4.25, average_cost: "14K", out_of_state: "43K", description: "The University of California in Los Angeles, better known as UCLA, is one of 10 campuses in the UC system. With 109 academic departments and more than 125 majors offered, as well as an average of one billion dollars funded for research every year and half a million patrons attending visual, performing, and media arts events, UCLA has no shortage of opportunities for students to showcase achievement, breakthrough, and optimism. Bruin alumni have a collection of awards, honors, and titles, including Nobel Laureate and MacArthur Fellow, Olympic gold medals and NCAA titles. UCLA admission is selective, but students who are admitted get to experience the “True Bruin” code of living, award-winning dining halls, and to live the LA Lifestyle.", mascot: "Joe Bruin", campus_setting: "Major City", academic_calander: "Quarter System", web: "https://admission.ucla.edu/apply"),
    Uuniversity(image: "UCB", name: "University of California, Berkeley", city: "Berkeley, CA", gpa: 3.7, acceptanceRating: "16%", transfer: "22%", rating: 3.9, average_cost: "15K", out_of_state: "45K", description: "Founded in 1868, the University of California at Berkeley is the flagship of the University of California system of higher education, with a campus overlooking the San Francisco Bay. UC Berkeley is known for its academic excellence, student activism, and public service. Offering 289 degree programs across 14 colleges and schools, the university also maintains a wide variety of resources, including the Regional Oral History Office, Hearst Museum of Anthropology, Environmental Design Archives, an Art Museum & Pacific Film Archive, and much more.", mascot: "Oski", campus_setting: "Small City", academic_calander: "Semester Calendar", web: "https://grad.berkeley.edu/admissions/steps-to-apply/apply/"),
    Uuniversity(image: "UCSD", name: "University of California, San Diego", city: "La Jolla, CA", gpa: 4.0, acceptanceRating: "31%", transfer: "54%", rating: 3.9, average_cost: "16K", out_of_state: "45K", description: "Founded in 1960, the University of California of San Diego is a research institution located in La Jolla, CA. The 1,200 coastal woodland campus along the Pacific Ocean is home to six undergraduate colleges, five academic divisions, 5 graduate and professional schools, as well as 19 research units, including the Center for Energy Research, the Qualcomm Institute, and the San Diego Supercomputer Center. UC San Diego also features a 5,000-seat arena and eight other sports facilities, as well as the La Jolla Playhouse and The Loft, a performance lounge.", mascot: "King Triton", campus_setting: "Major City", academic_calander: "Quarter Semester", web: "https://admissions.ucsd.edu/")
]
