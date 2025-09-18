// main.js

// AOS Animation (للاستخدام مع data-aos في HTML)
document.addEventListener("DOMContentLoaded", function () {
  const icons = document.querySelectorAll(".icon");
  icons.forEach(icon => {
    icon.addEventListener("mouseenter", () => {
      icon.style.transform = "rotate(10deg)";
    });
    icon.addEventListener("mouseleave", () => {
      icon.style.transform = "rotate(0deg)";
    });
  });
});

// تحريك الشعار عند التمرير
window.addEventListener('scroll', () => {
  const logo = document.querySelector('.logo');
  if (logo) {
    const scrollPosition = window.scrollY;
    logo.style.transform = `rotate(${scrollPosition * 0.05}deg)`;
  }
});


