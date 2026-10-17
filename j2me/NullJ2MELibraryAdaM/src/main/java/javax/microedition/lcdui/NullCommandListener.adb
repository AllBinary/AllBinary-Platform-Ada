--  Generated Code Do Not Modify


package body javax.microedition.lcdui.NullCommandListener_Package is

   procedure Initialize_Fields (This : in out NullCommandListener'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullCommandListener'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullCommandListener_Access is
      This : constant NullCommandListener_Access := new NullCommandListener;
   begin
      NullCommandListener_Package.Initialize (This.all);
      return This;
   end Create;


   procedure commandAction (This : in out NullCommandListener; c_Param : access Command_Package.Command'Class; d_Param : access Displayable_Package.Displayable'Class) is
      c : constant Command_Access := Command_Access (c_Param);
      d : constant Displayable_Access := Displayable_Access (d_Param);
   begin
        null;
   end commandAction;

begin
   null;
   NULL_COMMAND_LISTENER := NullCommandListener_Package.Create;

end javax.microedition.lcdui.NullCommandListener_Package;


