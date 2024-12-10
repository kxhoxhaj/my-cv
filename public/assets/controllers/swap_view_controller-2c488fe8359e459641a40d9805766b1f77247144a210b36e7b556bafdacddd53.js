import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["profile", "projects", "education", "contact", "profileLink", "projectsLink", "educationLink", "contactLink"];

  displayProfile() {
    this.clearActiveClasses()
    this.profileTarget.classList.remove("d-none")
    this.projectsTarget.classList.add("d-none")
    this.educationTarget.classList.add("d-none")
    this.profileLinkTarget.classList.add("active")
  }

  displayProjects() {
    this.clearActiveClasses()
    this.projectsTarget.classList.remove("d-none")
    this.profileTarget.classList.add("d-none")
    this.educationTarget.classList.add("d-none")
    this.projectsLinkTarget.classList.add("active")
  }

  displayEducation() {
    this.clearActiveClasses()
    this.educationTarget.classList.remove("d-none")
    this.profileTarget.classList.add("d-none")
    this.projectsTarget.classList.add("d-none")
    this.educationLinkTarget.classList.add("active")
  }

  clearActiveClasses() {
    this.profileLinkTarget.classList.remove("active");
    this.projectsLinkTarget.classList.remove("active");
    this.educationLinkTarget.classList.remove("active");
  }
};
