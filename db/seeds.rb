Statistic.destroy_all
Player.destroy_all
Team.destroy_all
Match.destroy_all

teams = Team.create!([
                    {title: "Zenit"},
                    {title: "Spartak"}
                    ])

p "Created #{Team.count} teams"


players = Player.create!([
                        {name: "Vasytin", team_id: teams[0].id},
                        {name: "Adamov", team_id: teams[0].id},
                        {name: "Karataev", team_id: teams[0].id},
                        {name: "Sobolev", team_id: teams[1].id},
                        {name: "Promes", team_id: teams[1].id},
                        {name: "Teo", team_id: teams[1].id}
                        ])

p "Created #{Player.count} players"

matches = Match.create!([
                       {title: "#{teams[0].title}-#{teams[1].title}",
                        team1: teams[0].id,
                        team2: teams[1].id},

                       {title: "#{teams[1].title}-#{teams[0].title}",
                        team1: teams[0].id, 
                        team2: teams[1].id},

                        {title: "#{teams[1].title}-#{teams[0].title}",
                        team1: teams[0].id, 
                        team2: teams[1].id}
                       ])

p "Created #{Match.count} matches"

statistic = Statistic.create!([
                             {player_id: players[0].id,
                              team_id: players[0].team_id,
                              match_id: matches[0].id,
                              distance: 8,
                              accuracy: 87},
                              {player_id: players[1].id,
                              team_id: players[1].team_id,
                              match_id: matches[0].id,
                              distance: 12},
                              {player_id: players[2].id,
                              team_id: players[2].team_id,
                              match_id: matches[0].id,
                              distance: 14},
                              {player_id: players[3].id,
                              team_id: players[3].team_id,
                              match_id: matches[0].id,
                              accuracy: 90},
                              {player_id: players[4].id,
                              team_id: players[4].team_id,
                              match_id: matches[0].id,
                              accuracy: 90},
                              {player_id: players[5].id,
                              team_id: players[5].team_id,
                              match_id: matches[0].id,
                              accuracy: 95},

                              {player_id: players[0].id,
                              team_id: players[0].team_id,
                              match_id: matches[1].id,
                              accuracy: 93},
                              {player_id: players[1].id,
                              team_id: players[1].team_id,
                              match_id: matches[1].id,
                              accuracy: 87},
                              {player_id: players[2].id,
                              team_id: players[2].team_id,
                              match_id: matches[1].id,
                              accuracy: 74},
                              {player_id: players[3].id,
                              team_id: players[3].team_id,
                              match_id: matches[1].id,
                              distance: 11},
                              {player_id: players[4].id,
                              team_id: players[4].team_id,
                              match_id: matches[1].id,
                              distance: 7},
                              {player_id: players[5].id,
                              team_id: players[5].team_id,
                              match_id: matches[1].id,
                              distance: 14},

                              {player_id: players[0].id,
                              team_id: players[0].team_id,
                              match_id: matches[2].id,
                              distance: 11,
                              accuracy: 74},
                              {player_id: players[1].id,
                              team_id: players[1].team_id,
                              match_id: matches[2].id,
                              accuracy: 79},
                              {player_id: players[2].id,
                              team_id: players[2].team_id,
                              match_id: matches[2].id},
                              {player_id: players[3].id,
                              team_id: players[3].team_id,
                              match_id: matches[2].id,
                              accuracy: 86},
                              {player_id: players[4].id,
                              team_id: players[4].team_id,
                              match_id: matches[2].id},
                              {player_id: players[5].id,
                              team_id: players[5].team_id,
                              match_id: matches[2].id,
                              distance: 10}
                             ])

p "Created #{Statistic.count} statistics"