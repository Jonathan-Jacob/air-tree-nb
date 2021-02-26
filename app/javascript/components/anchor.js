const initAnchor = () => {
  if (document.getElementById("treehouse_map")){
    document.getElementById("treehouse_map").style.top = `${document.getElementById('navbar-container').getBoundingClientRect().height}px`;
  }
}

export { initAnchor };
