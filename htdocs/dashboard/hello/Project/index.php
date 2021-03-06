<!DOCTYPE html>
<html>

<head>
    <title>
        Home Page
    </title>
    <meta charset = "UTF-8">
    <meta name = "viewport" content = "width = device-width, initial-scale = 1.0">
    <link rel="stylesheet" media="screen and (max-width: 480px)" href="mobileHomePage.css" />
    <link rel="stylesheet" media="screen and (min-width: 481px) and (max-width: 768px)" href="tabletHomePage.css" />
   <link rel="stylesheet" media="screen and (min-width: 769px)" href="desktopHomePage.css" />

</head>

<body>
    <header>
        <h1>Rohan Maharjan</h1>
        <nav>
            <img src="images/navBar.png" id="navBarPic">
            <section id="navLinks">
                <ul>
                    <li><a href="education.html">Education</a></li>
                    <li><a href="project.html">Projects</a></li>
                    <li><a href="resume.html">Resume</a></li>
                    <li><a href="contact.html">Contact</a></li>
                </ul>
            </section>
        </nav>
    </header>

    <section id="homePage">

        <div class="container">
            <figure>
                <img src="images/homePic.jpg" id="homePic">
            </figure>

            <div class="middle">
                <div class="text"><a href = "contact.html">Contact me</a></div>
            </div>
        </div>
        <article>
            <h1>Hello! I'm Rohan</h1>
            <p>I'm a Full Stack Web Developer.<br />Check out my portfolio too see some interesting projects. </p>
        </article>
    </section>

    <footer>
        <section>
            <h3><a href = "contact.html">Contact me</a></h3>
            <hr>
            <p>
                <strong>Phone:</strong>
                <br />
                <span>318-538-9201</span>
            </p>
            
            <p>
                <strong>Email:</strong>
                <br />
                <span>Rohan9841@gmail.com</span>
            </p>
            <p>
                <strong>Address:</strong>
                <br />
                <span>700 University Avenue<br />Monroe, LA 71209</span>
            </p>
        </section>

    </footer>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="enquire.js"></script>
    <script type="text/javascript" src="jsSelector.js"></script>

</body>

</html>