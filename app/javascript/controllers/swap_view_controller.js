import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["profile", "projects", "education"];

  displayProfile() {
    this.profileTarget.classList.remove("d-none")
    this.projectsTarget.classList.add("d-none")
    this.educationTarget.classList.add("d-none")
  }

  displayProjects() {
    this.projectsTarget.classList.remove("d-none")
    this.profileTarget.classList.add("d-none")
    this.educationTarget.classList.add("d-none")
  }

  displayEducation() {
    this.educationTarget.classList.remove("d-none")
    this.profileTarget.classList.add("d-none")
    this.projectsTarget.classList.add("d-none")
  }
}
