const initAnchor = () => {
    document.getElementById("treehouse_map").style.top = `${document.getElementById('navbar-container').getBoundingClientRect().height}px`;
    if (document.getElementById("treehouse_map").style.height > window.innerHeight - document.getElementById('navbar-container').getBoundingClientRect().height - document.getElementById('footer').getBoundingClientRect().height) {
      document.getElementById("treehouse_map").style.height > window.innerHeight - document.getElementById('navbar-container').getBoundingClientRect().height - document.getElementById('footer').getBoundingClientRect().height;     
    }
}

export { initAnchor };
