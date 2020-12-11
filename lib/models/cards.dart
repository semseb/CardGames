class PlayCard{
  int _number;
  String _color;
  bool figure;

  PlayCard(this._number,
      this._color,
      {this.figure}) :
        assert(_number < 14),
        assert(_number > 0),
        assert(_color == "Pique" || _color == "Cœur" || _color == "Coeur" || _color == "Trèfle" || _color == "Carreau");

  dynamic get number => _number < 11? _number : (_number == 11? "Valet" : (_number == 12? "Reine" : "Roi"));
  String get color => _color;
  bool get isFigure => _number < 11? false : true;
}