public class grid.Grid : Gtk.Grid{

    public int position { get; set;}
    public int space { get; set;}

    public Grid(){
        Object(
            position:0,
            space:50
        );
    }

    public void add_space(){
        var label = new Gtk.Label("");
        attach(label,0,position*space);
        position++;
    }

    public void add_info_log(string text){
        var label = new Gtk.Label("[Info] "+text);
        attach(label,0,position*space);
        position++;
    }

    public void add_error_log(string text){
        var label = new Gtk.Label("");
        label.set_markup("<b><i>[Error] "+text+"</i></b>");
        attach(label,0,position*space);
        position++;
    }

    public void add_full_line(string expression,string command){
        var label1 = new Gtk.Label(expression);
        attach(label1,0,position*space);

        var label2=new Gtk.Label("\t");
        attach_next_to(label2,label1,Gtk.PositionType.RIGHT);
        
        var label3 = new Gtk.Label(command);
        attach_next_to(label3,label2,Gtk.PositionType.RIGHT);

        var label4=new Gtk.Label("\t");
        attach_next_to(label4,label3,Gtk.PositionType.RIGHT);

        Gtk.Button button1 = new Gtk.Button.with_label ("Explain");
        attach_next_to(button1,label4,Gtk.PositionType.RIGHT);

        Gtk.Button button2 = new Gtk.Button.with_label ("Delete");
        attach_next_to(button2,button1,Gtk.PositionType.RIGHT);

        position++;
    }

    public void add_empty_line(){
        var entry1 = new Gtk.Entry();
        attach(entry1,0,position*space);

        var label2=new Gtk.Label("\t");
        attach_next_to(label2,entry1,Gtk.PositionType.RIGHT);
        
        var entry2 = new Gtk.Entry();
        attach_next_to(entry2,label2,Gtk.PositionType.RIGHT);

        var label4=new Gtk.Label("\t");
        attach_next_to(label4,entry2,Gtk.PositionType.RIGHT);

        Gtk.Button button1 = new Gtk.Button.with_label ("Explain");
        attach_next_to(button1,label4,Gtk.PositionType.RIGHT);

        Gtk.Button button2 = new Gtk.Button.with_label ("Add");
        attach_next_to(button2,button1,Gtk.PositionType.RIGHT);

        position++;
    }
}