var Robot;

Robot = (function() {

  function Robot(name) {
    this.name = name;
    this.life = 100;
  }

  Robot.prototype.isAlive = function() {
    return this.life > 0;
  };

  Robot.prototype.takeDamage = function(dmg) {
    return this.life -= dmg;
  };

  return Robot;

})();