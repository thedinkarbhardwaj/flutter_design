
import 'dart:ui';

class Model{

  var img;
  var itename;
  var itemprice;
  var backgroundcolour;

  var names_of_options;

  Model.name_option(this.names_of_options);

  Model(this.img,this.itename, this.itemprice,this.backgroundcolour);

  Model.bottom_featured_data(this.backgroundcolour,this.img,this.itename,this.itemprice);

}