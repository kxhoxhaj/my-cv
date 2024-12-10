import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["home", "about", "reviews"];

  connect() {
    this.setActiveLink();
  }

  setActiveLink() {
    const currentPath = window.location.pathname;
    this.removeActiveClasses();

    if (currentPath === "/") {
      this.homeTarget.classList.add("active");
    } else if (currentPath === "/cv") {
      this.aboutTarget.classList.add("active");
    } else if (currentPath === "/reviews") {
      this.reviewsTarget.classList.add("active");
    }
  }

  toggleHome() {
    this.removeActiveClasses();
    this.homeTarget.classList.add("active");
  }

  toggleAbout() {
    this.removeActiveClasses();
    this.aboutTarget.classList.add("active");
  }

  toggleReviews() {
    this.removeActiveClasses();
    this.reviewsTarget.classList.add("active");
  }

  removeActiveClasses() {
    this.element.querySelectorAll(".nav-link").forEach((link) => {
      link.classList.remove("active");
    });
  }
};
