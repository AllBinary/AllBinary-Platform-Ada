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
      Initialize (This.all);
      return This;
   end Create;


   procedure commandAction (This : in out NullCommandListener; c : Command_Access; d : Displayable_Access) is
   begin
        null;
   end commandAction;

begin
   null;
   NULL_COMMAND_LISTENER := NullCommandListener_Package.Create;

end javax.microedition.lcdui.NullCommandListener_Package;


