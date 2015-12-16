#Up next for this project:
<p>I had some issues with rspec.  In order to implement the show/hide feature for references I added a scripts file (app/assets/javascripts/scripts.js).  Rspec did not seem to like this and any spec I wrote got hung up on this file.  I googled around and could not find a solution.  Thus, I have two failing specs for adding comments to a post.</p>
#Author Name: Ian Bevel
#Program Name: Personal Portfolio
#NOTES: IMPORTANT!!!
<p>There is a single seeded admin.  This is the only user with all capabilities of the site, including adding and deleting most items.  Here are the details:</p>
<ul>
<li>Username: "admin"</li>
<li>Password: "1234"</li>
</ul>
<p>These parameters should be edited <u>immediately</u> to avoid another user taking control of your admin privilages!</p>
#Description: 
<p>The personal_portfolio program is a ruby on rails program that will allow the user to add, edit and delete skills and competencies to a home page along with project information using those skills/competencies.  It also contains a blog portion of the site where an admin can add blog posts and other users can post comments to those posts.  Ajax functionality was introduced in the most recent version of the program when dealing with comments and references.</p>
#Set-up instructions: 
<p>All gems in Gemfile must be bundled and a Gemfile.lock file created prior to running this app.</p>
<p>Phantomjs must be installed in order to test specs for any ajax related functions.  This is accomplished by typing: "npm install phantomjs" in the command line.</p>
<ol>
<li>Go to www.github.com/ianofearth</li>
<li>Check the repositories tab and locate the "personal_portfolio" project folder</li>
<li>In the right hand column it will say "HTTPS clone URL, click on the clipboard icon below that</li>
<li>Enter your terminal, change to Desktop directory, in command line: cd Desktop</li>
<li>Into the command line type: git clone (copy and paste the clone URL)</li>
<li>This will create a folder on your desktop called "personal_portfolio" holding the project folders and files</li>
<li>Change directory to personal_portfolio: cd personal_portfolio</li>
<li>Download and install bundler</li>
<li>To gain access to the proper versions of gems, in the command line run: bundle</li>
<li>In the command line type: 'rake db:create' to create the database</li>
<li>In the command line type: 'rake db:migrate' to load the tables</li>
<li>To initiate a postgress session type the following in the command line: postgres</li>
<li>In a new command line window type: 'rails server' to start the server</li>
<li>Visit localhost:3000 to begin creating your own personal portfolio!</li>
</ol>
</p>

#Bug reports: 
<p>There are currently no known bugs to personal_portfolio.  Any discovered bugs should be reoprted directly to the programs creator at thisisnotarealemail@gmail.com</p>
#Licenses and Copywright info: 
<p>ianofearth License.  Copyright 2015 ianofearth industries.</p>
#<h2>You are not granted rights or licenses to the trademarks of ianofearth industries without the express written consent of ianofearth industries.</h2>
