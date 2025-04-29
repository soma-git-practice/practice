'use strict';

fetch('./team_a.json')
  .then((response) => { return response.json(); })
  .then((info) => {
    console.log(info.team === 'A');
  });