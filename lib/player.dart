class Player {
  String nama;
  String role;
  String gambar;
  String biografi;

  Player({
    required this.nama,
    required this.role,
    required this.gambar,
    required this.biografi,
  });

  static List<Player> dummyData = [
    Player(
        nama: 'Brimstone',
        role: 'Controller',
        gambar: '1.png',
        biografi:
            'Joining from the U.S.A., Brimstones orbital arsenal ensures his squad always has the advantage. His ability to deliver utility precisely and safely make him the unmatched boots-on-the-ground commander.'),
    Player(
        nama: 'Phoenix',
        role: 'Duelist',
        gambar: '2.png',
        biografi:
            'Hailing from the U.K., Phoenix star power shines through in his fighting style, igniting the battlefield with flash and flare. Whether he is got backup or not, he will rush into a fight on his own terms.'),
    Player(
        nama: 'Sage',
        role: 'Sentinel',
        gambar: '3.png',
        biografi:
            'The stronghold of China, Sage creates safety for herself and her team wherever she goes. Able to revive fallen friends and stave off aggressive pushes, she provides a calm center to a hellish fight.'),
    Player(
        nama: 'Sova',
        role: 'Initiator',
        gambar: '4.png',
        biografi:
            'Born from the eternal winter of Russia is tundra, Sova tracks, finds, and eliminates enemies with ruthless efficiency and precision. His custom bow and incredible scouting abilities ensure that even if you run, you cannot hide.'),
    Player(
        nama: 'Viper',
        role: 'Controller',
        gambar: '5.png',
        biografi:
            'The American Chemist, Viper deploys an array of poisonous chemical devices to control the battlefield and choke the enemy vision. If the toxins dont kill her prey, her mindgames surely will.'),
    Player(
        nama: 'Cypher',
        role: 'Sentinel',
        gambar: '6.png',
        biografi:
            'The Moroccan information broker, Cypher is a one-man surveillance network who keeps tabs on the enemy every move. No secret is safe. No maneuver goes unseen. Cypher is always watching.'),
    Player(
        nama: 'Reyna',
        role: 'Duelist',
        gambar: '7.png',
        biografi:
            'Forged in the heart of Mexico, Reyna dominates single combat, popping off with each kill she scores. Her capability is only limited by her raw skill, making her highly dependent on performance.'),
    Player(
        nama: 'Killjoy',
        role: 'Sentinel',
        gambar: '8.png',
        biografi:
            'The genius of Germany. Killjoy secures the battlefield with ease using her arsenal of inventions. If the damage from her gear does not stop her enemies, her robots debuff will help make short work of them.'),
    Player(
        nama: 'Breach',
        role: 'Initiator',
        gambar: '9.png',
        biografi:
            'Breach, the bionic Swede, fires powerful, targeted kinetic blasts to aggressively clear a path through enemy ground. The damage and disruption he inflicts ensures no fight is ever fair.'),
  ];
}
