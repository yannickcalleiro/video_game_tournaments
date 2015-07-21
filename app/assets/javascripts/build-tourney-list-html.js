function buildTourneyListHtml (tournaments) {
  function buildItemHtml (previous, tournament) {
    return previous + buildTourneyHtml(tournament)
  }
  console.log(tournaments)
  var listItems = tournaments.reduce(buildItemHtml, '')

  return '\
    <ul class="tourney-list" data-hook="tourney-list">\
      ' + listItems + '\
    </ul>\
  '
}
