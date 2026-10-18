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


with javax.microedition.lcdui.NullCanvas_Package; use javax.microedition.lcdui.NullCanvas_Package;
with org.allbinary.game.commands.GameCommandsFactory_Package; use org.allbinary.game.commands.GameCommandsFactory_Package;
with org.allbinary.game.input.GameInputStrings_Package; use org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body org.allbinary.game.displayable.canvas.DemoCanvasBasicStartInputProcessor_Package is

   package NullCanvas_Package renames Standard.javax.microedition.lcdui.NullCanvas_Package;
   package GameCommandsFactory_Package renames Standard.org.allbinary.game.commands.GameCommandsFactory_Package;
   package GameInputStrings_Package renames Standard.org.allbinary.game.input.GameInputStrings_Package;
   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out DemoCanvasBasicStartInputProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out DemoCanvasBasicStartInputProcessor'Class; gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; gameCanvas_Param : access RunnableCanvas_Package.RunnableCanvas'Class) is
      gameKeyEventList : constant BasicArrayList_Access := BasicArrayList_Access (gameKeyEventList_Param);
      gameCanvas : constant RunnableCanvas_Access := RunnableCanvas_Access (gameCanvas_Param);
   begin
        BasicMenuInputProcessor_Package.Initialize (This, gameKeyEventList, -(1), gameCanvas);
   end Initialize;

   function Create (gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; gameCanvas_Param : access RunnableCanvas_Package.RunnableCanvas'Class) return DemoCanvasBasicStartInputProcessor_Access is
      This : constant DemoCanvasBasicStartInputProcessor_Access := new DemoCanvasBasicStartInputProcessor;
   begin
      DemoCanvasBasicStartInputProcessor_Package.Initialize (This.all, gameKeyEventList_Param, gameCanvas_Param);
      return This;
   end Create;

   --  throws Exception
   function processInputList (This : in out DemoCanvasBasicStartInputProcessor) return Integer is
      list : BasicArrayList_Access;
      size : Integer;
      gameKeyEvent : GameKeyEvent_Access;
      index : Integer;
   begin
        list := DemoCanvasBasicStartInputProcessor'Class (This).getGameKeyEventList;
        size := list.size;
        gameKeyEvent := null;
        for index in 0 .. (size) - 1 loop
            gameKeyEvent := GameKeyEvent_Access (list.objectArray (index));
            This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Start GameKey: ")).append (StringUtil_Package.getInstance.toString (gameKeyEvent)).toString, DemoCanvasBasicStartInputProcessor_Access'(This'Unchecked_Access), GameInputStrings_Package.getInstance.PROCESS_INPUT);
        end loop;
        DemoCanvasBasicStartInputProcessor'Class (This).getCanvas.getCustomCommandListener.commandAction (GameCommandsFactory_Package.getInstance.START_COMMAND, NullCanvas_Package.NULL_CANVAS);
        return size;
   end processInputList;

end org.allbinary.game.displayable.canvas.DemoCanvasBasicStartInputProcessor_Package;


