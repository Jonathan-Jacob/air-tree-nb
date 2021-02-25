const initAnchor = () => {
  document.addEventListener('scroll', () => {
    document.getElementById("treehouse_map").style.top = `${document.getElementById('navbar-container').getBoundingClientRect().height}px`;
  });
}

export { initAnchor };
