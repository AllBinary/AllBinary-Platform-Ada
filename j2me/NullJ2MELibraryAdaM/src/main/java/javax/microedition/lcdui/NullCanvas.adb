--  Generated Code Do Not Modify


package body javax.microedition.lcdui.NullCanvas_Package is

   procedure Initialize_Fields (This : in out NullCanvas'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out NullCanvas'Class) is
   begin
      Canvas_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return NullCanvas_Access is
      This : constant NullCanvas_Access := new NullCanvas;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure setFullScreenMode (This : in out NullCanvas; mode : Boolean) is
   begin
        null;
   end setFullScreenMode;

   procedure sizeChanged (This : in out NullCanvas; w : Integer; h : Integer) is
   begin
        null;
   end sizeChanged;

   function getCommandStack (This : in out NullCanvas) return Stack_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getCommandStack;

   function isCommand (This : in out NullCanvas; command : Command_Access) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end isCommand;

   procedure addCommand (This : in out NullCanvas; command : Command_Access) is
   begin
        null;
   end addCommand;

   procedure removeCommand (This : in out NullCanvas; command : Command_Access) is
   begin
        null;
   end removeCommand;

   procedure removeAllCommands (This : in out NullCanvas) is
   begin
        null;
   end removeAllCommands;

   procedure setCommandListener (This : in out NullCanvas; l : CommandListener_Access) is
   begin
        null;
   end setCommandListener;

   function getCustomCommandListener (This : in out NullCanvas) return CommandListener_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getCustomCommandListener;

   function isPaused (This : in out NullCanvas) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end isPaused;

   procedure removePauseCommand (This : in out NullCanvas) is
   begin
        null;
   end removePauseCommand;

   procedure pause (This : in out NullCanvas) is
   begin
        null;
   end pause;

   procedure unPause (This : in out NullCanvas) is
   begin
        null;
   end unPause;

   --  throws Exception
   procedure process (This : in out NullCanvas) is
   begin
        null;
   end process;

   procedure paint (This : in out NullCanvas; graphics : Graphics_Access) is
   begin
        null;
   end paint;

   procedure destroy (This : in out NullCanvas) is
   begin
        null;
   end destroy;

   procedure setPaused (This : in out NullCanvas; isPaused : Boolean) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end setPaused;

   procedure pointerDragged (This : in out NullCanvas; x : Integer; y : Integer) is
   begin
        null;
   end pointerDragged;

   procedure pointerPressed (This : in out NullCanvas; x : Integer; y : Integer) is
   begin
        null;
   end pointerPressed;

   procedure pointerReleased (This : in out NullCanvas; x : Integer; y : Integer) is
   begin
        null;
   end pointerReleased;

   procedure getCommandStack (This : in out NullCanvas) is
      Java_Result : constant Stack_Access := NullCanvas'Class (This).getCommandStack;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCommandStack;

   procedure isCommand (This : in out NullCanvas; command : Command_Access) is
      Java_Result : constant Boolean := NullCanvas'Class (This).isCommand (command);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCommand;

   procedure getCustomCommandListener (This : in out NullCanvas) is
      Java_Result : constant CommandListener_Access := NullCanvas'Class (This).getCustomCommandListener;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCustomCommandListener;

   procedure isPaused (This : in out NullCanvas) is
      Java_Result : constant Boolean := NullCanvas'Class (This).isPaused;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isPaused;

begin
   null;
   NULL_CANVAS := NullCanvas_Package.Create;

end javax.microedition.lcdui.NullCanvas_Package;


