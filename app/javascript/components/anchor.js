const initAnchor = () => {
  if (document.getElementById("treehouse_map")){
    document.getElementById("treehouse_map").style.top = `${document.getElementById('navbar-container').getBoundingClientRect().height}px`;
  }
  if (document.getElementById("bookings-host")){
    document.getElementById("bookings-host").style["scroll-margin-top"] = `${document.getElementById('navbar-container').getBoundingClientRect().height}px`;
  }
  if (document.getElementById("treehouses-host")){
    document.getElementById("treehouses-host").style["scroll-margin-top"] = `${document.getElementById('navbar-container').getBoundingClientRect().height}px`;
  }
}

export { initAnchor };
