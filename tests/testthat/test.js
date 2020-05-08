function get_github(repo) {

  return new Promise((resolve, reject) => {

    const xhr = new XMLHttpRequest();
    var url = "https://api.github.com/repos/" + repo;
    xhr.open('GET', url);

    xhr.onload = function() {
      if (xhr.status >= 200 && xhr.status < 400) {
        resolve(JSON.parse(xhr.responseText));
      } else {
        resolve(xhr.responseText);
      }
    };
    xhr.onerror = () => reject(xhr.statusText);
    xhr.send();
  });
}

function add_repo(repo, id) {
  get_github(repo).then(data => {
    var logo;
    switch (data.language) {
      case 'R':
        logo = '<i class="fab fa-r-project"></i>';
        break;
      case 'JavaScript':
        logo = '<i class="fab fa-js-square"></i>';
        break;
      case 'Dockerfile':
        logo = '<i class="fab fa-docker"></i>';
        break;
      case 'Java':
        logo = '<i class="fab fa-java"></i>';
        break;
      case 'HTML':
        logo = '<i class="fab fa-html5"></i>';
        break;
      case 'CSS':
        logo = '<i class="fab fa-css3-alt"></i>';
        break;
      case 'Python':
        logo = '<i class="fab fa-python"></i>';
        break;
      case 'Vue':
        logo = '<i class="fab fa-vuejs"></i>';
        break;
      case 'Shell':
        logo = '<i class="fab fa-terminal"></i>';
        break;
      case 'PHP':
        logo = '<i class="fab fa-php"></i>';
        break;
      default:
        logo = '<i class="fas fa-archive"></i>';
        break;
    }
    var parent_node = document.createElement('div');
    parent_node.setAttribute('class', 'column');

    parent_node.innerHTML = "<li class = 'package'>" + logo + "<b> — <a href ='" + data.html_url + "'>" + data.name + "</a></b> <br><span class = 'page__meta'> " + data.description + "</span><br><a href='" + data.html_url + "'><button class = 'button'><i class='fas fa-star'></i> " + data.stargazers_count + "</button></a>" + "<a href='" + data.html_url + "'><button class = 'button'><i class= 'fas fa-code-branch'></i> " + data.forks_count + "</button></a>";
    var target = document.getElementById(id);
    target.appendChild(parent_node);
})
}

function add_repos(vec, id){

  var parent_node = document.createElement('div');
  parent_node.setAttribute('class', 'sqfolio');
  parent_node.setAttribute('id', id + "_innerdre");

  for (var i = 0; i < vec.length; i++){
    add_repo(vec[i], id + "_innerdre", "package");
  }

  var target = document.getElementById(id);
  target.appendChild(parent_node);
}
