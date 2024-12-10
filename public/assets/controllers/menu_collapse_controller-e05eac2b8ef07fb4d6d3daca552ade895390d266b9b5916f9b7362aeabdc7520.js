import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["links", "contents"];

  toggleMenu() {
    // Toggle the 'active' class on the links container
    this.linksTarget.classList.toggle("active");

    this.element.classList.toggle("menu-open");
  }
};
