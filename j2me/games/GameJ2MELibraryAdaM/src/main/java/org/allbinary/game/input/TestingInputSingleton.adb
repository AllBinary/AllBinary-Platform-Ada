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


package body org.allbinary.game.input.TestingInputSingleton_Package is

   procedure Initialize_Fields (This : in out TestingInputSingleton'Class) is
   begin
      null;
      This.inputProcessorArray := new GameInputProcessor_Access_Array'(0 .. (InputFactory_Package.getInstance.MAX) - 1 => null);
      This.paintable := NullPaintable_Package.getInstance;
   end Initialize_Fields;


   function getInstance return TestingInputSingleton_Access is
   begin
        return TestingInputSingleton_Package.instance;
   end getInstance;

   procedure Initialize (This : in out TestingInputSingleton'Class) is
   begin
        AllBinaryGameLayer_Package.Initialize (This, StringUtil_Package.getInstance.EMPTY_STRING, RectangleFactory_Package.SINGLETON, ViewPosition_Package.getInstanceD);
        Initialize_Fields (This);
        GameInputProcessorUtil_Package.init (This.inputProcessorArray);
   end Initialize;

   function Create return TestingInputSingleton_Access is
      This : constant TestingInputSingleton_Access := new TestingInputSingleton;
   begin
      TestingInputSingleton_Package.Initialize (This.all);
      return This;
   end Create;

   procedure initInputProcessors (This : in out TestingInputSingleton) is
   begin
        null;
   end initInputProcessors;

   procedure initInputProcessorsForTestInput (This : in out TestingInputSingleton; aTestInputInterface_Param : access TestInputInterface_Package.TestInputInterface'Class) is
      aTestInputInterface : constant TestInputInterface_Access := TestInputInterface_Access (aTestInputInterface_Param);
      testInputInterface : TestInputInterface_Access;
   begin
        testInputInterface := aTestInputInterface;
        This.paintable := testInputInterface;
        This.inputProcessorArray (Canvas_Package.UP) := GameInputProcessor_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     --  throws Exception
--     procedure processEvent (This : in out ; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
--        allbinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
--        gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
--     begin
--                  testInputInterface.up;
--     end processEvent;
;
        This.inputProcessorArray (Canvas_Package.DOWN) := GameInputProcessor_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     --  throws Exception
--     procedure processEvent (This : in out ; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
--        allbinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
--        gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
--     begin
--                  testInputInterface.down;
--     end processEvent;
;
        This.inputProcessorArray (Canvas_Package.LEFT) := GameInputProcessor_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     --  throws Exception
--     procedure processEvent (This : in out ; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
--        allbinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
--        gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
--     begin
--                  testInputInterface.left;
--     end processEvent;
;
        This.inputProcessorArray (Canvas_Package.RIGHT) := GameInputProcessor_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     --  throws Exception
--     procedure processEvent (This : in out ; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
--        allbinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
--        gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
--     begin
--                  testInputInterface.right;
--     end processEvent;
;
        This.inputProcessorArray (Canvas_Package.KEY_NUM7) := GameInputProcessor_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     --  throws Exception
--     procedure processEvent (This : in out ; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
--        allbinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
--        gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
--     begin
--                  testInputInterface.strafeLeft;
--     end processEvent;
;
        This.inputProcessorArray (Canvas_Package.KEY_NUM9) := GameInputProcessor_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     --  throws Exception
--     procedure processEvent (This : in out ; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
--        allbinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
--        gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
--     begin
--                  testInputInterface.strafeRight;
--     end processEvent;
;
        GameInputProcessorUtil_Package.init (This.inputProcessorArray);
   end initInputProcessorsForTestInput;

   --  throws Exception
   procedure processInputList (This : in out TestingInputSingleton; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      allbinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      key : Integer;
      gameKeyEvent : GameKeyEvent_Access;
      size : Integer;
      index : Integer;
   begin
        key := 0;
        gameKeyEvent := null;
        size := list.size;
        for index in 0 .. (size) - 1 loop
            gameKeyEvent := (GameKeyEvent_Access (list.objectArray (index)));
            key := gameKeyEvent.getKey;
            This.inputProcessorArray (key).processEvent (allbinaryLayerManager, GameKeyEvent_Package.NONE);
        end loop;
   end processInputList;

   --  throws Exception
   procedure processInput (This : in out TestingInputSingleton; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allbinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
   begin
        TestingInputSingleton'Class (This).processInputList (allbinaryLayerManager, TestingInputSingleton'Class (This).getGameKeyEventList);
        TestingInputSingleton'Class (This).getGameKeyEventList.clear;
   end processInput;

   procedure paint (This : in out TestingInputSingleton; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.paintable.paint (graphics);
   end paint;

   function implmentsGameInputInterface (This : in out TestingInputSingleton) return Boolean is
   begin
        return True;
   end implmentsGameInputInterface;

begin
   null;
   instance := TestingInputSingleton_Package.Create;

end org.allbinary.game.input.TestingInputSingleton_Package;


