--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


with javax.microedition.lcdui.NullCommandListener_Package; use javax.microedition.lcdui.NullCommandListener_Package;
with org.allbinary.graphics.displayable.command.MyCommandsFactory_Package; use org.allbinary.graphics.displayable.command.MyCommandsFactory_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;

package body org.allbinary.graphics.displayable.MyCanvas_Package is

   package NullCommandListener_Package renames Standard.javax.microedition.lcdui.NullCommandListener_Package;
   package MyCommandsFactory_Package renames Standard.org.allbinary.graphics.displayable.command.MyCommandsFactory_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   procedure Initialize_Fields (This : in out MyCanvas'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.canvasStrings := CanvasStrings_Package.getInstance;
      This.stringUtil := StringUtil_Package.getInstance;
      This.displayInfo := DisplayInfoSingleton_Package.getInstance;
      
      
      
      This.commandListener := NullCommandListener_Package.NULL_COMMAND_LISTENER;
      This.paused := False;
      This.touchME := TouchJ2ME_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out MyCanvas'Class; name : Unbounded_String; childNameList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      childNameList : constant BasicArrayList_Access := BasicArrayList_Access (childNameList_Param);
   begin
      Canvas_Package.Initialize (This);
      Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.CONSTRUCTOR, MyCanvas_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        This.displayInfo.update (MyCanvas_Access'(This'Unchecked_Access), This.canvasStrings.CONSTRUCTOR);
        This.name := name;
        This.childNameList := childNameList;
        This.commandStack := StdUtil_Package.getInstance.createStack;
   end Initialize;

   function Create (name : Unbounded_String; childNameList_Param : access BasicArrayList_Package.BasicArrayList'Class) return MyCanvas_Access is
      This : constant MyCanvas_Access := new MyCanvas;
   begin
      MyCanvas_Package.Initialize (This.all, name, childNameList_Param);
      return This;
   end Create;

   procedure setFullScreenMode (This : in out MyCanvas; mode : Boolean) is
   begin
        Canvas (This).setFullScreenMode (mode);
        This.displayInfo.update (MyCanvas_Access'(This'Unchecked_Access), This.canvasStrings.SET_FULL_SCREEN_MODE);
   end setFullScreenMode;

   procedure sizeChanged (This : in out MyCanvas; w : Integer; h : Integer) is
   begin
        This.displayInfo.update (MyCanvas_Access'(This'Unchecked_Access), This.canvasStrings.SIZE_CHANGED);
   end sizeChanged;

   function getCommandStack (This : in out MyCanvas) return ABStack_Access is
   begin
        return This.commandStack;
   end getCommandStack;

   function isCommand (This : in out MyCanvas; command_Param : access Command_Package.Command'Class) return Boolean is
      command : constant Command_Access := Command_Access (command_Param);
   begin
        return This.commandStack.contains (command);
   end isCommand;

   procedure addCommand (This : in out MyCanvas; command_Param : access Command_Package.Command'Class) is
      command : constant Command_Access := Command_Access (command_Param);
   begin
        if not (This.commandStack.contains (command)) then
            This.commandStack.push (command);
            Canvas (This).addCommand (command);
        end if;
   end addCommand;

   procedure removeCommand (This : in out MyCanvas; command_Param : access Command_Package.Command'Class) is
      command : constant Command_Access := Command_Access (command_Param);
   begin
        This.commandStack.removeElement (command);
        Canvas (This).removeCommand (command);
   end removeCommand;

   procedure removeAllCommands (This : in out MyCanvas) is
      size : Integer;
      index : Integer;
   begin
        size := This.commandStack.size;
        for index in 0 .. (size) - 1 loop
            Canvas (This).removeCommand (Command_Access (This.commandStack.pop));
        end loop;
   end removeAllCommands;

   procedure setCommandListener (This : in out MyCanvas; l_Param : access CommandListener_Package.CommandListener'Class) is
      l : constant CommandListener_Access := CommandListener_Access (l_Param);
   begin
        Canvas (This).setCommandListener (l);
        This.commandListener := l;
   end setCommandListener;

   function getCustomCommandListener (This : in out MyCanvas) return CommandListener_Access is
   begin
        return This.commandListener;
   end getCustomCommandListener;

   function isPaused (This : in out MyCanvas) return Boolean is
   begin
        return This.paused;
   end isPaused;

   procedure removePauseCommand (This : in out MyCanvas) is
   begin
        MyCanvas'Class (This).removeCommand (MyCommandsFactory_Package.getInstance.PAUSE_COMMAND);
   end removePauseCommand;

   procedure pause (This : in out MyCanvas) is
   begin
        This.logUtil.putF (This.commonStrings.START, MyCanvas_Access'(This'Unchecked_Access), This.canvasStrings.PAUSE);
        MyCanvas'Class (This).removePauseCommand;
        MyCanvas'Class (This).addCommand (MyCommandsFactory_Package.getInstance.RESUME_COMMAND);
        MyCanvas'Class (This).setPaused (True);
   end pause;

   procedure unPause (This : in out MyCanvas) is
   begin
        This.logUtil.putF (This.commonStrings.START, MyCanvas_Access'(This'Unchecked_Access), This.canvasStrings.UN_PAUSE);
        MyCanvas'Class (This).removeCommand (MyCommandsFactory_Package.getInstance.RESUME_COMMAND);
        MyCanvas'Class (This).addCommand (MyCommandsFactory_Package.getInstance.PAUSE_COMMAND);
        MyCanvas'Class (This).setPaused (False);
   end unPause;

   --  throws Exception
   procedure process (This : in out MyCanvas) is
   begin
        This.displayInfo.process;
   end process;

   procedure paint (This : in out MyCanvas; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paint;

   procedure draw (This : in out MyCanvas; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end draw;

   function hasChild (This : in out MyCanvas; displayable_Param : access MyCanvas_Package.MyCanvas'Class) return Boolean is
      displayable : constant MyCanvas_Access := MyCanvas_Access (displayable_Param);
   begin
        return This.childNameList.contains (displayable.name);
   end hasChild;

   procedure destroy (This : in out MyCanvas) is
   begin
        This.logUtil.putF (To_Unbounded_String ("Destroyed MyCanvas"), MyCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("destroy"));
   end destroy;

   procedure setPaused (This : in out MyCanvas; isPaused : Boolean) is
   begin
        This.paused := isPaused;
   end setPaused;

   procedure keyPressedByDevice (This : in out MyCanvas; keyCode : Integer; deviceId : Integer) is
   begin
        null;
   end keyPressedByDevice;

   procedure keyRepeatedByDevice (This : in out MyCanvas; keyCode : Integer; deviceId : Integer) is
   begin
        null;
   end keyRepeatedByDevice;

   procedure keyReleasedByDevice (This : in out MyCanvas; keyCode : Integer; deviceId : Integer) is
   begin
        null;
   end keyReleasedByDevice;

   procedure pointerDragged (This : in out MyCanvas; x : Integer; y : Integer) is
   begin
        This.touchME.pointerDragged (x, y);
   end pointerDragged;

   procedure pointerPressed (This : in out MyCanvas; x : Integer; y : Integer) is
   begin
        This.touchME.pointerPressed (x, y);
   end pointerPressed;

   procedure pointerReleased (This : in out MyCanvas; x : Integer; y : Integer) is
   begin
        This.touchME.pointerReleased (x, y);
   end pointerReleased;

   procedure nextSong (This : in out MyCanvas; nextSongSound_Param : access Sound_Package.Sound'Class; leftVolume : Integer; rightVolume : Integer) is
      nextSongSound : constant Sound_Access := Sound_Access (nextSongSound_Param);
   begin
        null;
   end nextSong;

   procedure isCommand (This : in out MyCanvas; command_Param : access Command_Package.Command'Class) is
      Java_Result : constant Boolean := MyCanvas'Class (This).isCommand (command_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCommand;

   procedure hasChild (This : in out MyCanvas; displayable_Param : access MyCanvas_Package.MyCanvas'Class) is
      Java_Result : constant Boolean := MyCanvas'Class (This).hasChild (displayable_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end hasChild;

end org.allbinary.graphics.displayable.MyCanvas_Package;


