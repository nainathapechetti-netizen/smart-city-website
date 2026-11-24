
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Smart City - Future Living</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', sans-serif;
    scroll-behavior: smooth;
}

body {
    background: #f4f8fb;
    color: #263445;
}

/* Navigation */
header {
    background: #102b46;
    color: white;
    padding: 20px 7%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-wrap: wrap;
}

.logo {
    font-size: 27px;
    font-weight: bold;
    color: #35d5bd;
}

nav a {
    color: white;
    text-decoration: none;
    margin: 10px;
    font-size: 15px;
}

nav a:hover {
    color: #35d5bd;
}

/* Hero Section */
.hero {
    min-height: 480px;
    background: linear-gradient(90deg,
        rgba(7,30,55,.9), rgba(7,30,55,.35)),
        url('https://images.unsplash.com/photo-1519501025264-65ba15a82390?w=1600')
        center/cover;
    display: flex;
    align-items: center;
    padding: 60px 8%;
    color: white;
}

.hero-content {
    max-width: 650px;
}

.hero h1 {
    font-size: 52px;
    margin-bottom: 20px;
}

.hero h1 span {
    color: #35d5bd;
}

.hero p {
    font-size: 18px;
    line-height: 1.7;
    margin-bottom: 25px;
}

.btn {
    display: inline-block;
    background: #35d5bd;
    color: #102b46;
    padding: 13px 25px;
    border-radius: 6px;
    text-decoration: none;
    font-weight: bold;
}

/* Common Sections */
section {
    padding: 65px 8%;
}

.section-title {
    text-align: center;
    font-size: 32px;
    color: #102b46;
    margin-bottom: 12px;
}

.subtitle {
    text-align: center;
    color: #68798a;
    margin-bottom: 40px;
}

/* Statistics */
.stats {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
    gap: 20px;
}

.stat-card {
    background: white;
    text-align: center;
    padding: 28px;
    border-radius: 12px;
    box-shadow: 0 4px 15px #00000010;
}

.stat-card h2 {
    color: #10a995;
    font-size: 32px;
}

.stat-card p {
    margin-top: 8px;
    color: #637384;
}

/* Service Cards */
.services {
    background: #eaf2f7;
}

.card-container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
    gap: 25px;
}

.card {
    background: white;
    border-radius: 12px;
    padding: 28px 22px;
    text-align: center;
    box-shadow: 0 5px 15px #0000000c;
    transition: .3s;
}

.card:hover {
    transform: translateY(-8px);
    box-shadow: 0 10px 25px #00000018;
}

.card .icon {
    font-size: 45px;
    margin-bottom: 15px;
}

.card h3 {
    color: #102b46;
    margin-bottom: 12px;
}

.card p {
    color: #68798a;
    line-height: 1.6;
}

/* Important Locations */
.locations {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 25px;
}

.location-card {
    background: white;
    border-radius: 12px;
    overflow: hidden;
    box-shadow: 0 5px 15px #00000010;
}

.location-card img {
    width: 100%;
    height: 180px;
    object-fit: cover;
}

.location-card div {
    padding: 20px;
}

.location-card h3 {
    margin-bottom: 10px;
    color: #102b46;
}

.location-card p {
    color: #68798a;
    line-height: 1.5;
}

/* Emergency */
.emergency {
    background: #fff0ed;
    text-align: center;
}

.emergency h2 {
    color: #d93636;
    font-size: 32px;
    margin-bottom: 15px;
}

.emergency-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
    gap: 20px;
    margin-top: 30px;
}

.emergency-box {
    background: white;
    padding: 25px;
    border-radius: 10px;
}

.emergency-box h3 {
    margin: 10px 0;
    color: #c52e2e;
    font-size: 25px;
}

/* Public Services */
.public-services {
    background: #eaf2f7;
}

/* Footer */
footer {
    background: #102b46;
    color: white;
    text-align: center;
    padding: 30px 15px;
}

footer span {
    color: #35d5bd;
}

@media(max-width: 700px) {
    header {
        justify-content: center;
        gap: 15px;
    }

    nav {
        text-align: center;
    }

    nav a {
        display: inline-block;
        margin: 7px;
    }

    .hero h1 {
        font-size: 36px;
    }

    .hero {
        min-height: 400px;
    }
}
</style>
</head>

<body>

<!-- Navigation -->
<header>
    <div class="logo">🏙 SmartCity</div>
    <nav>
        <a href="#home">Home</a>
        <a href="#about">About</a>
        <a href="#services">Services</a>
        <a href="#locations">Locations</a>
        <a href="#emergency">Emergency</a>
    </nav>
</header>

<!-- Hero -->
<div class="hero" id="home">
    <div class="hero-content">
        <h1>Welcome to the <span>Smart City</span></h1>
        <p>
            Building a better tomorrow with smart technology,
            modern transportation, digital services and sustainable living.
            Experience the city of the future today!
        </p>
        <a href="#services" class="btn">Explore City</a>
    </div>
</div>

<!-- City Statistics -->
<section id="about">
    <h2 class="section-title">Our City at a Glance</h2>
    <p class="subtitle">A growing city powered by innovation and technology.</p>

    <div class="stats">
        <div class="stat-card">
            <h2>12L+</h2>
            <p>Population</p>
        </div>
        <div class="stat-card">
            <h2>250+</h2>
            <p>Smart Buses</p>
        </div>
        <div class="stat-card">
            <h2>45+</h2>
            <p>Hospitals</p>
        </div>
        <div class="stat-card">
            <h2>120+</h2>
            <p>Schools & Colleges</p>
        </div>
    </div>
</section>

<!-- Main Services -->
<section class="services" id="services">
    <h2 class="section-title">City Services</h2>
    <p class="subtitle">Everything you need for comfortable city living.</p>

    <div class="card-container">

        <div class="card">
            <div class="icon">🚌</div>
            <h3>Transportation</h3>
            <p>Smart buses, metro connectivity, digital tickets and traffic management.</p>
        </div>

        <div class="card">
            <div class="icon">🏥</div>
            <h3>Healthcare</h3>
            <p>Modern hospitals, emergency care, health centers and digital medical services.</p>
        </div>

        <div class="card">
            <div class="icon">🎓</div>
            <h3>Education</h3>
            <p>Smart schools, digital classrooms, libraries and advanced learning facilities.</p>
        </div>

        <div class="card">
            <div class="icon">🌳</div>
            <h3>Environment</h3>
            <p>Green parks, clean energy, waste management and pollution control.</p>
        </div>

        <div class="card">
            <div class="icon">💡</div>
            <h3>Smart Technology</h3>
            <p>Smart streetlights, free public Wi-Fi and digital city monitoring.</p>
        </div>

        <div class="card">
            <div class="icon">🚰</div>
            <h3>Water Supply</h3>
            <p>Smart water management, clean drinking water and drainage facilities.</p>
        </div>

    </div>
</section>

<!-- Public Services -->
<section class="public-services">
    <h2 class="section-title">Public Services</h2>
    <p class="subtitle">Easy and accessible services for every citizen.</p>

    <div class="card-container">

        <div class="card">
            <div class="icon">🏛️</div>
            <h3>Municipal Office</h3>
            <p>Property tax, certificates and city administration services.</p>
        </div>

        <div class="card">
            <div class="icon">🗑️</div>
            <h3>Waste Management</h3>
            <p>Garbage collection, recycling and cleanliness programs.</p>
        </div>

        <div class="card">
            <div class="icon">💻</div>
            <h3>Digital Services</h3>
            <p>Online applications, bill payments and citizen support.</p>
        </div>

        <div class="card">
            <div class="icon">🚓</div>
            <h3>Public Safety</h3>
            <p>Police services, CCTV surveillance and community safety.</p>
        </div>

    </div>
</section>

<!-- Important Locations -->
<section id="locations">
    <h2 class="section-title">Important Locations</h2>
    <p class="subtitle">Discover important places around our smart city.</p>

    <div class="locations">

        <div class="location-card">
            <img src="https://images.unsplash.com/photo-1538108149393-fbbd81895907?w=600" alt="Hospital">
            <div>
                <h3>City General Hospital</h3>
                <p>Healthcare and emergency medical facilities.</p>
            </div>
        </div>

        <div class="location-card">
            <img src="https://images.unsplash.com/photo-1562774053-701939374585?w=600" alt="University">
            <div>
                <h3>Smart University</h3>
                <p>Advanced education and digital learning facilities.</p>
            </div>
        </div>

        <div class="location-card">
            <img src="https://images.unsplash.com/photo-1519331379826-f10be5486c6f?w=600" alt="Park">
            <div>
                <h3>Green City Park</h3>
                <p>A beautiful place for relaxation and recreation.</p>
            </div>
        </div>

    </div>
</section>

<!-- Emergency Information -->
<section class="emergency" id="emergency">
    <h2>🚨 Emergency Information</h2>
    <p>Important emergency contact numbers in India.</p>

    <div class="emergency-grid">

        <div class="emergency-box">
            <div class="icon">🚓</div>
            <h3>112</h3>
            <p>Emergency Helpline</p>
        </div>

        <div class="emergency-box">
            <div class="icon">🚑</div>
            <h3>108</h3>
            <p>Ambulance</p>
        </div>

        <div class="emergency-box">
            <div class="icon">🔥</div>
            <h3>101</h3>
            <p>Fire Service</p>
        </div>

        <div class="emergency-box">
            <div class="icon">👮</div>
            <h3>100</h3>
            <p>Police</p>
        </div>

    </div>
</section>

<!-- Footer -->
<footer>
    <h2>🏙 SmartCity</h2>
    <p>Creating a smarter, greener and safer future.</p>
    <br>
    <p>© 2026 Smart City Project | Designed with <span>❤</span></p>
</footer>

</body>
</html>
