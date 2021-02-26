
const initActiveNavbar = () => {
  if (document.getElementById("home") && document.getElementById("dashboard")){
    if (window.location.pathname === "/treehouses"){
      document.getElementById("home").classList.add("active");
      document.getElementById("dashboard").classList.remove("active")
    }
    else
    if (window.location.pathname === "/dashboard") {
      document.getElementById("home").classList.remove("active");
      document.getElementById("dashboard").classList.add("active")
    }
    else {
    document.getElementById("home").classList.remove("active");
    document.getElementById("dashboard").classList.remove("active")
  };
  };
};
export { initActiveNavbar };
