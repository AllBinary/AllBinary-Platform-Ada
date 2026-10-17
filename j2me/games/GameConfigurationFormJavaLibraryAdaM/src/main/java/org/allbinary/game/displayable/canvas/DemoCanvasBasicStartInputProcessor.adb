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


package body org.allbinary.game.displayable.canvas.DemoCanvasBasicStartInputProcessor_Package is

   procedure Initialize_Fields (This : in out DemoCanvasBasicStartInputProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out DemoCanvasBasicStartInputProcessor'Class; gameKeyEventList_Param : access BasicArrayList'Class; gameCanvas_Param : access RunnableCanvas'Class) is
      gameKeyEventList : BasicArrayList_Access := BasicArrayList_Access (gameKeyEventList_Param);
      gameCanvas : RunnableCanvas_Access := RunnableCanvas_Access (gameCanvas_Param);
   begin
        BasicMenuInputProcessor_Package.Initialize (This, gameKeyEventList, -(1), gameCanvas);
   end Initialize;

   function Create (gameKeyEventList_Param : access BasicArrayList'Class; gameCanvas_Param : access RunnableCanvas'Class) return DemoCanvasBasicStartInputProcessor_Access is
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
        list := This.getGameKeyEventList;
        size := list.size;
        gameKeyEvent := null;
        for index in 0 .. (size) - 1 loop
            gameKeyEvent := GameKeyEvent_Access (list.objectArray (index));
            This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Start GameKey: ")).append (StringUtil_Package.getInstance.toString (gameKeyEvent)).toString, DemoCanvasBasicStartInputProcessor_Access'(This'Unchecked_Access), GameInputStrings_Package.getInstance.PROCESS_INPUT);
        end loop;
        This.getCanvas.getCustomCommandListener.commandAction (GameCommandsFactory_Package.getInstance.START_COMMAND, NullCanvas_Package.NULL_CANVAS);
        return size;
   end processInputList;

end org.allbinary.game.displayable.canvas.DemoCanvasBasicStartInputProcessor_Package;


