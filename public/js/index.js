'use strict';

document.querySelectorAll('.hoge').forEach(function (elm) {
  elm.addEventListener('click', async function (event) {
    const selecter = document.querySelector('select');
    fetch(`./team_${this.id}.json`)
      .then((res) => {
        return res.ok ? res.json() : { "error": true, "status": res.status, "message": res.statusText } ;
      })
      .then((jsn) => {
        if (jsn.error) {
          selecter.disabled = true;
          selecter.innerHTML = ''
        }
        else {
          selecter.disabled = false;
          selecter.innerHTML = ''

          jsn.member.forEach((val) => {
            const opt = document.createElement('option');
            opt.text = val.name;
            opt.value = val.age;
            selecter.add(opt);
          })
        }
      });
  })
})
