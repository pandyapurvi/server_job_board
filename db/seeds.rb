Job.destroy_all
j1 = Job.create(:title => 'Graduate Software Enginner', :post_date => '21/05/2019', :description => 'You will have a Bachelor’s degree in IT or technology-related field.
You have had prior commercial development experience (can include internships, casual or on a part-time basis during studies).
Experience with fintechs or renown tech companies will be highly regarded.
You will have a passion for coding and are proactive with following the latest technology trends and attending meet ups.
You are “code savvy”, have a willingness to learn and can pick up different languages quickly.
Experience with Java or Golang will be preferred but not essential', :level => 'junior', :company_type => 'IT technology', :salary => '65000', :job_type => 'Contract', :close_date => '30/06/2019', :city => 'Sydney' )

j2 = Job.create(:title => 'Junior Software Enginner', :post_date => '02/05/2019', :description => 'Work with a strong team of engineers who have the domain knowledge that can guide your innovative approach to problem solving and help you achieve excellent results.
Java/JavaScript with extreme performance requirements
creative environment working with the latest technology
collaborative approach to problem solving
complex problems, highly distributed systems
think out of the box and work with the best
Opportunity for some hands-on experience with the latest technologies and techniques.', :level => 'junior', :company_type => 'IT technology', :salary => '75000', :job_type => 'Permanent', :close_date => '25/06/2019', :city => 'Sydney')

Application.destroy_all
a1 = Application.create(:application_date => '30/05/2019',:resume => 'coming', :cover_letter => 'coming')

User.destroy_all
u1 = User.create(:email => 'harsh@gmail.com', :password_digest => '12345', :name => 'harsh', :phone => 431901123, :website => 'www.harsh.com', :resume => 'harsh resume', :notice_period => '2 weeks', :experience => 3, :current_title => 'Software developer', :employer => false)
u2 = User.create(:email => 'purvi@ga.co', :password_digest => '12345', :name => 'Purvi', :phone => 432123123, :website => 'www.purvi.com',:resume => 'purvi resume', :notice_period => '1 week', :experience => 1, :current_title => 'Junior developer', :employer => false)
u3 = User.create(:email => 'hr@ga.co', :password_digest => '12345', :name => 'General Assembly', :phone => 28549232, :website => 'www.generalassemb.ly', :employer => true, :company_size => 'medium', :company_type => 'Education', :description => 'General Assembly', :ABN => 'ABN56161756123' ,:image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTD26A_tDS6TjmxL3p9xMFxqfXptOlT8yXtjTS09RQtc_mYI31W')
