# numberOfRounds = 1000

# rounds = []

# for i in [1..numberOfRounds]
#     round = {
#         round: i,
#         objects: [
#             type: 'tank'
#             id: 'tank001',
#             position:
#                 x: 10 + (i / 3)
#                 y: 100 + (i / 6)
#             health:
#                 100 - (i / 20)
#             angle:
#                 (i / 10)
#             cannonAngle:
#                 (i / 8)
#         ],

#         events: []
#     }

#     round.events.push(
#         type: 'moving',
#         id: 'tank001'
#     ) if i == 1

#     round.events.push(
#         type: 'backwards',
#         id: 'tank001'
#     ) if i == (numberOfRounds / 2)

#     round.events.push(
#         type: 'stopped',
#         id: 'tank001'
#     ) if i == numberOfRounds

#     round.events.push(
#         type: 'exploded',
#         id: 'bullet001'
#     ) if i == numberOfRounds - 10

#     round.objects.push(
#         type: 'bullet'
#         id: 'bullet001',
#         position:
#             x: round.objects[0].position.x + 100
#             y: round.objects[0].position.y + 100
#         angle:
#             45
#     ) if i >= 3 * numberOfRounds / 4

#     rounds.push(round)

robotA = new SampleRobot("a")
robotB = new SampleRobot("b")
engine = new Engine(robotA, robotB)

engine.robotsStatus[0].position = new Vector2(100, 100)
engine.robotsStatus[1].position = new Vector2(250, 250)

rounds = engine.fight()


board = $('.board')
game = new Game(board, rounds,
    msPerRound: 3
)
game.initialize()
