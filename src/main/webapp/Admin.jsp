<!DOCTYPE html> 
<html lang="en"> 

<head> 
	<meta charset="UTF-8"> 
	<meta http-equiv="X-UA-Compatible"
		content="IE=edge"> 
	<meta name="viewport"
		content="width=device-width, 
				initial-scale=1.0"> 
	<title>Admin tasks</title> 
	<link rel="stylesheet"
		href="style.css"> 
	<link rel="stylesheet"
		href="responsive.css"> 
</head> 

<body> 
	
	<!-- for header part -->
	<header> 

		<div class="logosec"> 
			<div class="logo">Welcome to Admin Panel</div> 
			<img src= 
"https://media.geeksforgeeks.org/wp-content/uploads/20221210182541/Untitled-design-(30).png"
				class="icn menuicn"
				id="menuicn"
				alt="menu-icon"> 
		</div> 

		<div class="searchbar"> 
			<input type="text"
				placeholder="Search"> 
			<div class="searchbtn"> 
			<img src= 
"https://media.geeksforgeeks.org/wp-content/uploads/20221210180758/Untitled-design-(28).png"
					class="icn srchicn"
					alt="search-icon"> 
			</div> 
		</div> 

		<div class="message"> 
			<div class="circle"></div> 
			<img src= 
"https://media.geeksforgeeks.org/wp-content/uploads/20221210183322/8.png"
				class="icn"
				alt=""> 
			<div class="dp"> 
			<img src= 
"https://media.geeksforgeeks.org/wp-content/uploads/20221210180014/profile-removebg-preview.png"
					class="dpicn"
					alt="dp"> 
			</div> 
		</div> 

	</header> 

	<div class="main-container"> 
		<div class="navcontainer"> 
			<nav class="nav"> 
				<div class="nav-upper-options"> 
					<div class="nav-option option1"> 
						<img src= 
"https://media.geeksforgeeks.org/wp-content/uploads/20221210182148/Untitled-design-(29).png"
							class="nav-img"
							alt="dashboard"> 
						<h3> Home</h3> 
					</div> 


					<div class="nav-option option3"> 
						<img src= 
"https://media.geeksforgeeks.org/wp-content/uploads/20221210183320/5.png"
							class="nav-img"
							alt="report"> 
						<h3> About us</h3> 
					</div> 

					<div class="nav-option option4"> 
						<img src= 
"https://media.geeksforgeeks.org/wp-content/uploads/20221210183321/6.png"
							class="nav-img"
							alt="institution"> 
						<h3>Inbox</h3> 
					</div> 

					<div class="nav-option option5"> 
						<img src= 
"https://media.geeksforgeeks.org/wp-content/uploads/20221210183323/10.png"
							class="nav-img"
							alt="blog"> 
						<h3> Help-centre</h3> 
					</div> 

					<div class="nav-option option6"> 
						<img src= 
"https://media.geeksforgeeks.org/wp-content/uploads/20221210183320/4.png"
							class="nav-img"
							alt="settings"> 
						<h3> Terms of use</h3> 
					</div> 

					<div class="nav-option logout"> 
						<img src= 
"https://media.geeksforgeeks.org/wp-content/uploads/20221210183321/7.png"
							class="nav-img"
							alt="logout"> 
						<h3>Logout</h3> 
					</div> 

				</div> 
			</nav> 
		</div> 
		<div class="main"> 

			<div class="searchbar2"> 
				<input type="text"
					name=""
					id=""
					placeholder="Search"> 
				<div class="searchbtn"> 
				<img src= 
"https://media.geeksforgeeks.org/wp-content/uploads/20221210180758/Untitled-design-(28).png"
						class="icn srchicn"
						alt="search-button"> 
				</div> 
			</div> 

			<div class="box-container"> 

				<div class="box box1"> 
					<a href="DisplayTableServlet"><div class="text"> 
						<h2 class="topic-heading">Registerd voters</h2> 
						<h2 class="topic">Total candidates:</h2> 
						 
					
						
					</div> 
                    </a>
				</div> 

				<div class="box box2"> 
				<a href="DisplayTableServlet1"><div class="text"> 
				
						<h2 class="topic-heading">Registered candidates</h2> 
						<h2 class="topic">Total candidates:</h2> 
					</div> 
</a>
					
				</div> 

				<div class="box box3"> 
					<a href="displayVoters.jsp"><div class="text"> 

						<h2 class="topic-heading">Result</h2> 
					
					</div> 
</a>
					
				</div> 

				<div class="box box4"> 
					<div class="text"> 
						<h2 class="topic-heading">Voting Schedule</h2> 
						
					</div> 

					<img src= 
"https://media.geeksforgeeks.org/wp-content/uploads/20221210185029/13.png" alt="published"> 
				</div> 
			</div> 

			
				</div> 
			</div> 
		</div> 
	</div> 

	<script src="./index.js"></script> 
</body> 
</html>
