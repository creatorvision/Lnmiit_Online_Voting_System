<%@page import="jsp.*"%>
<%@ include file="noCache.jsp"%>
<!DOCTYPE HTML>
<!--

AUTHOR                      : LNMIIT_ONLINE_VOTING_SYSTEM_DEVELOPMENT_TEAM_GROUP-26 SEPM2015
DATE OF LAST UPDATE         : 17 APRIL 2015 

-->


<html>
<head>
<title>Student_Terminal: LNMIIT ONLINE VOTING SYSTEM</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
<script src="js/jquery.min.js"></script>
<script src="js/jquery.dropotron.min.js"></script>
<script src="js/jquery.scrolly.min.js"></script>
<script src="js/jquery.scrollgress.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-layers.min.js"></script>
<script src="js/init.js"></script>

	<link rel="stylesheet" href="css/skel.css" />
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/style-wide.css" />
	<link rel="stylesheet" href="css/style-noscript.css" />

<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
<!--[if lte IE 9]><link rel="stylesheet" href="css/ie/v9.css" /><![endif]-->
</head>
<body class="index">
	<%
		String sessionID = null;
		int loginindex = 0;
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cooki : cookies) {
				if (cooki.getName().equals("JSESSIONID")) {
					sessionID = cooki.getValue();
					System.out.println("JSESSIONID=" + sessionID);
					break;
				}

			}
			for (Cookie cooki : cookies) {
				if (cooki.getName().equals("loginindex")) {
					loginindex = Integer.parseInt(cooki.getValue());
					System.out.println("loginindex=" + loginindex);
					break;
				}

			}
		}

		if (!Session.isSameSession(sessionID, loginindex)) {
			response.sendRedirect("index.jsp");
			System.out.println("different session");

		}
	%>

	<!-- Header -->
	<header id="header" class="alt">
		<h1 id="logo">
			<a href="http://www.lnmiit.ac.in"><img
				src="images/LNMIIT_logo.png" width="200px" height="100px"></a>
		</h1>
		<nav id="nav">
			<ul>
				<li><a href="index.jsp">Welcome</a></li>
				<!--<li class="submenu">
							<a href="">Layouts</a>
							<ul>
								<li><a href="left-sidebar.html">Left Sidebar</a></li>
								<li><a href="right-sidebar.html">Right Sidebar</a></li>
								<li><a href="no-sidebar.html">No Sidebar</a></li>
								<li><a href="contact.html">Contact</a></li>
								<li class="submenu">
									<a href="">Submenu</a>
									<ul>
										<li><a href="#">Dolore Sed</a></li>
										<li><a href="#">Consequat</a></li>
										<li><a href="#">Lorem Magna</a></li>
										<li><a href="#">Sed Magna</a></li>
										<li><a href="#">Ipsum Nisl</a></li>
									</ul>
								</li>
							</ul>
						</li>
						<li><a href="#" class="button special">Sign Up</a></li>-->
				<li><a href="">Election Rules</a></li>
				<li><a href="">Help Page</a></li>
				<li><a href="">Contact Us</a></li>
				<li><a href="logout.jsp" class="button special">LOGOUT</a></li>
			</ul>
		</nav>
	</header>

	<!-- Banner -->
	<section id="banner">

		<!--
					".inner" is set up as an inline-block so it automatically expands
					in both directions to fit whatever's inside it. This means it won't
					automatically wrap lines, so be sure to use line breaks where
					appropriate (<br />).
				-->
		<div class="inner">

			<header>
				<h3>
					Welcome
					<%=request.getSession(false).getAttribute("user")%></h3>
			</header>
			<br />
			<br />
			<p class="ceo_quote">
				"Elections belong to the people. It's their decision. <br />If they
				decide to turn their back on the fire <br />and burn their
				behinds,then they will just<br /> have to sit on their blisters."<br />
				<br />
			</p>
			<p class="ceo_quote">-Abraham Lincoln</p>

		</div>

	</section>
	<!--End of banner-->

	<!-- Main -->
	<article id="main">

		<header class="special container"> </header>


		<!-- CEO's Operations -->
		<section class="wrapper style3 container special">

			<header class="major">
				<h2>
					Time to <strong>Act</strong>
				</h2>
			</header>

			<div class="row">
				<div class="6u 12u(narrower)">

					<section>
						<header>
							<h3>
								<a href="apply_for_cand.jsp">APPLY FOR CANDIDATURE</a>
							</h3>
						</header>
						<p></p>
					</section>

				</div>
				<div class="6u 12u(narrower)">

					<section>
						<header>
							<h3>
								<a href="#">DELETE YOUR APPLICATION</a>
							</h3>
						</header>
						<p></p>
					</section>

				</div>
			</div>
			<div class="row">
				<div class="6u 12u(narrower)">

					<section>
						<header>
							<h3>
								<a href="#">VIEW CANDIDATE PORTFOLIOS</a>
							</h3>
						</header>
						<p></p>
					</section>

				</div>
				<div class="6u 12u(narrower)">

					<section>
						<header>
							<h3>
								<a href="#">DELETE YOUR CANDIDATURE</a>
							</h3>
						</header>
						<p></p>
					</section>

				</div>
			</div>
			<div class="row">
				<div class="6u 12u(narrower)">

					<section>
						<header>
							<h3>
								<a href="#">DELETE PORTFOLIO</a>
							</h3>
						</header>
						<p></p>
					</section>

				</div>
				<div class="6u 12u(narrower)">

					<section>
						<header>
							<h3>
								<a href="#">UPDATE PORTFOLIO</a>
							</h3>
						</header>
						<p></p>
					</section>

				</div>
			</div>

			<footer class="major">
				<ul class="buttons">
					<li><a href="#" class="button">VOTING</a></li>
				</ul>
			</footer>

		</section>
		<!--END OF CEO OPERATIONS -->

	</article>

	<!-- CTA -->
	<section id="cta">

		<header>
			<h2>
				Ready to do <strong>something</strong>?
			</h2>
			<p>Proin a ullamcorper elit, et sagittis turpis integer ut
				fermentum.</p>
		</header>
		<footer>
			<ul class="buttons">
				<li><a href="#" class="button special">Take My Money</a></li>
				<li><a href="#" class="button">LOL Wut</a></li>
			</ul>
		</footer>

	</section>

	<!-- Footer -->
	<footer id="footer">

		<ul class="icons">
			<li><a href="#" class="icon circle fa-twitter"><span
					class="label">Twitter</span></a></li>
			<li><a href="#" class="icon circle fa-facebook"><span
					class="label">Facebook</span></a></li>
			<li><a href="#" class="icon circle fa-google-plus"><span
					class="label">Google+</span></a></li>
			<li><a href="#" class="icon circle fa-github"><span
					class="label">Github</span></a></li>
			<li><a href="#" class="icon circle fa-dribbble"><span
					class="label">Dribbble</span></a></li>
		</ul>

		<ul class="copyright">
			<li>&copy; SEPM-GROUP-26</li>
		</ul>

	</footer>
</body>
</html>