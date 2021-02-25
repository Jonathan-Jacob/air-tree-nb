const initAnchor = () => {
  document.addEventListener('scroll', () => {
    document.getElementById("treehouse_map").style.top = `${document.getElementById('navbar').getBoundingClientRect().height}px`;
  });
}

export { initAnchor };
