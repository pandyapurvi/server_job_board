Job.destroy_all
j1 = Job.create(:title => 'Graduate Software Engineer', :post_date => '21/05/2019', :description => 'You will have a Bachelor’s degree in IT or technology-related field.
You have had prior commercial development experience (can include internships, casual or on a part-time basis during studies).
Experience with fintechs or renown tech companies will be highly regarded.
You will have a passion for coding and are proactive with following the latest technology trends and attending meet ups.
You are “code savvy”, have a willingness to learn and can pick up different languages quickly.
Experience with Java or Golang will be preferred but not essential', :level => 'junior', :company_type => 'IT technology', :salary => '65000', :job_type => 'Contract', :close_date => '30/06/2019', :city => 'Sydney' )

j2 = Job.create(:title => 'Junior Software Engineer', :post_date => '02/05/2019', :description => 'Work with a strong team of engineers who have the domain knowledge that can guide your innovative approach to problem solving and help you achieve excellent results.
Java/JavaScript with extreme performance requirements
creative environment working with the latest technology
collaborative approach to problem solving
complex problems, highly distributed systems
think out of the box and work with the best
Opportunity for some hands-on experience with the latest technologies and techniques.', :level => 'junior', :company_type => 'IT technology', :salary => '75000', :job_type => 'Permanent', :close_date => '25/06/2019', :city => 'Sydney')

j3 = Job.create(:title => 'Front-end Developer', :post_date => '10/06/2019', :description => 'YOUR NEW JOB

Javascript / TypeScript frontend development using React + Redux and/or Angular is and will remain your first love
Putting pixels into the all the right places excites you more than it should
‘Slackups’ are a way of life
Working with our mobile and backend developers to create beautiful digital products
Consulting work on projects for NZ, Aussie, US and UK global companies
Working with backends for games, iBeacons, Taxi Apps, Video Conferencing, Fintech - we build it all.
WHAT YOU KNOW

React + Redux and/or Angular 2+
Bonus points for experience with Vue, Node.js and GraphQL
Explain what a ‘modern frontend build pipeline’ is without googling the answer
How to tame the IE beast
Great experiences are made of stunning interfaces & clever code
All JavaScript code is not created equal (or is that ===)
Bleeding edge can cut both ways
The best products are a combination of design, code and a dash of love
CVs to the top of the stack include existing sites, web apps or GitHub repos so you can show us what you got', :level => 'Mid', :company_type => 'Fashion industries', :salary => '90000', :job_type => '12-month contract', :close_date => '30/06/2019', :city => 'Melbourne')

j4 = Job.create(:title => 'React-developer', :post_date => '11/06/2019', :description => "The Role
make decisions regarding client-side architecture & design
Build well organised, modular and reusable UI components and interfaces
Contribute a future-ready, high quality and performant code base
Implement and follow best practice engineering standards and processes.
Thrive in a agile environment to deliver features
Offer technical solutions and product improvement ideas through design and code review
To be successful in this role
3+ years' experience in a forward thinking front end development environment
Experience in React, familiarity in Redux, Golang or/and NodeJS
Proven commercial experience in designing scalable and modular UI components from thr group up
Genuine passion for design and user empathy when creating User Interface
Degree/strong fundamentals in Software Engineering & Computer Science
Attention to detail is critical, excellent time management skills and experience
Be a energetic team player, with a can-do attitude and a positive personality
Passion for solving customer centred, technical problems", :level => 'Senior', :company_type => 'IT industries', :salary => '140000', :job_type => 'Freelancing', :close_date => '14/07/2019', :city => 'Perth')

j5 = Job.create(:title => 'Software Engineer', :post_date => '01/06/2019', :description => "We’re hiring to complement our continuous investment in our innovation pipeline of development initiatives which in FY18 accounted for $76.4m and over the past five years our relentless pursuit of product enhancement has added more than 3,000 product enhancements to our global platform.

We know that great people are not defined by their tech stack or years’ experience. Which is why our approach to hiring is reflective of our culture. We operate as a meritocracy. You will be given the opportunity to show your skills throughout the hiring process, and should you be successful you will then be given the opportunity to shine in your day to day. This creates a work environment where equality and innovation flourish and you can challenge yourself to be the best version of you.

During the interview process we will test not only your technical capability but your grit and your passion. Find a way to stand out in your application, and we will help you to stand out in your career. Together we will change the world of logistics, one innovation at a time.", :level => 'Associate', :company_type => 'computer Software', :salary => '57000', :job_type => 'Contract', :close_date => '12/07/2019', :city => 'Sydney')

Application.destroy_all
a1 = Application.create(:application_date => '30/05/2019',:resume => 'coming', :cover_letter => 'coming')
a2 = Application.create(:application_date => '31/05/2019',:resume => 'coming', :cover_letter => 'coming')

User.destroy_all
u1 = User.create(:email => 'harsh@gmail.com', :password => '12345', :name => 'harsh', :phone => 431901123, :website => 'www.harsh.com', :resume => 'harsh resume', :notice_period => '2 weeks', :experience => 3, :current_title => 'Software developer', :employer => false)
u2 = User.create(:email => 'purvi@ga.co', :password => '12345', :name => 'Purvi', :phone => 432123123, :website => 'www.purvi.com',:resume => 'purvi resume', :notice_period => '1 week', :experience => 1, :current_title => 'Junior developer', :employer => false)
u3 = User.create(:email => 'hr@ga.co', :password => '12345', :name => 'General Assembly', :phone => 28549232, :website => 'www.generalassemb.ly', :employer => true, :company_size => 'medium', :company_type => 'Education', :description => 'General Assembly', :ABN => 'ABN56161756123' ,:image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTD26A_tDS6TjmxL3p9xMFxqfXptOlT8yXtjTS09RQtc_mYI31W')

u1.applications << a1
j1.applications << a1

u2.applications << a2
j2.applications << a2
