const toggleNavbarFooter = () => {
  if (window.location.pathname === "/") {
    document.getElementById("footer").hidden = true;
  } else {
    document.getElementById("footer").hidden = false;
  }
  if (window.location.pathname === "/") {
    document.getElementById("navbar").style["background-color"] = "rgba(255,255,255,0)";
  } else {
    document.getElementById("navbar").style["background-color"] = "white";
  }
}

export { toggleNavbarFooter };