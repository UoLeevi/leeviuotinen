<template>
  <div id="app">
    <header class="uo-header">
      <div class="uo-content">
        <div class="uo-bar">
          <h2>Projects by Leevi</h2>
        </div>
        <h1>Check out these cool projects
          <br>I've been tinkering on!
        </h1>
        <p>Most of my projects can also be found on <a href="https://github.com/UoLeevi">GitHub</a>.</p>
        <div></div>
      </div>
      <div class="uo-pg"></div>
    </header>
    <main class="uo-main">
      <div class="uo-content">
        <section>
          <article>
            <h2>Project Fina</h2>
            <p>This project is an attempt to combine two of my passions, finance and technology, to build a platform for better investment portfolio management. There are still few todo items to tackle but once ready, <b>Project Fina</b> will help you to make smarter investments. At <b>projectfina.com</b> you can create watchlists, set alerts, perform analytics and make notes about financial instruments.
            </p>
          </article>
        </section>
        <section>
          <article>
            <h2>Smart Mirror</h2>
            <p>If you are looking for a fun tinkering project involving Raspberry Pi 3, home automation and a little bit of woodworking then you also might want to take a look at my <b>Smart Mirror</b> project. The end product is an AI-powered, modern piece of furniture that can also tell you the weather or switch off your living room lights if you ask it to.</p>
          </article>
        </section>
        <section>
          <article>
            <h2>libuo</h2>
            <p>This is the C library that provides the building blocks for many of my software projects. <b>libuo</b> aims to be a modular, cross-platform, high-performance C library that raises the level of abstraction of C programming just enough to enable the programmer to be productive and able to write code that is also readable and extensible.</p>
          </article>
        </section>
          <section>
          <article>
            <h2>Self-hosted server</h2>
            <p>I like to keep control over the hardware that I'm running my programs. I also feel that it is often a nice challenge to try to make stuff work for free instead of just buying the managed service. The Ubuntu server that runs on my old Dell laptop, hosts a Postfix email server, Nginx reverse proxy web server for my websites and few Postgres databases.</p>
          </article>
        </section>
      </div>
    </main>
    <footer class="uo-footer">
      <div class="uo-content">
        <div class="uo-bar">
          <a href="https://github.com/UoLeevi">
            <img src="assets/logos/github.svg" alt="GitHub logo">
          </a>
          <a href="https://www.linkedin.com/in/leevi-uotinen">
            <img class="scale-130pct" src="assets/logos/linkedin.svg" alt="LinkedIn logo">
          </a>
        </div>
      </div>
    </footer>
  </div>
</template>

<script>
export default {
  name: "app",
  components: {}
};
</script>

<style>
#app {
  display: flex;
  flex-direction: column;
  min-height: 100vh;
}

.uo-header h1 {
  padding-top: 60px;
  text-align: center;
}

.uo-header h2 {
  margin: 0;
  padding: 0;
  font-weight: 300;
}

.uo-header p {
  font-size: 1.3em;
  max-width: 800px;
  text-align: center;
}

@media only screen and (max-width: 600px) {
  .uo-header h1 {
    padding-top: 36px;
    font-size: 1.6em;
  }
  .uo-header p {
    font-size: 1.1em;
  }
}

.uo-content {
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  align-items: center;
  padding-left: 30px;
  padding-right: 30px;
  max-width: 1030px;
  width: calc(100vw - 60px);
}

.uo-bar {
  display: flex;
  flex-direction: row;
  justify-content: flex-start;
  align-items: center;
  width: 100%;
}

.uo-header {
  display: flex;
  justify-content: center;
  width: 100%;
  height: 600px;
  position: relative;
  overflow: hidden;
}

@media only screen and (max-width: 600px) {
  .uo-header {
    height: 520px;
  }
}

.uo-header .uo-bar {
  height: 70px;
}

.uo-header * {
  color: #ffffff;
}

.uo-header > .uo-pg {
  position: absolute;
  overflow: visible;
  left: -50px;
  top: -100px;
  background: linear-gradient(115deg, #1081f6 0%, #082d92 100%);
  transform: rotate(-4deg);
  z-index: -1;
  transform-origin: 50% 100%;
  height: 100%;
  width: calc(110% + 100px);
  animation-name: tilt;
  animation-timing-function: linear;
  animation-iteration-count: infinite;
  animation-direction: alternate;
  animation-duration: 40s;
}

.uo-main {
  display: flex;
  justify-content: center;
  width: 100%;
  margin-bottom: 30px;
}

.uo-main section {
  margin-bottom: 40px;
}

.uo-footer {
  display: flex;
  justify-content: center;
  width: 100%;
  margin-top: auto;
  background: linear-gradient(115deg, #eeeeee 0%, #f4f4f4 100%);
}

.uo-footer .uo-bar {
  height: 70px;
}

.uo-bar a {
  display: flex;
  align-items: center;
  justify-content: center;
  margin-right: 50px;
}
.uo-bar a img {
  height: 19px;
}

.scale-130pct {
  transform: scale(1.3);
  transform-origin: 0 50%;
}

b {
  font-weight: 400;
}

a {
  font-weight: 400;
  text-decoration: none;
}

a:hover {
  text-decoration: underline;
}

@keyframes tilt {
  100% {
    transform: rotate(4deg);
  }
}
</style>
