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
      Initialize (This.all);
      return This;
   end Create;

   procedure initInputProcessors (This : in out TestingInputSingleton) is
   begin
        null;
   end initInputProcessors;

   procedure initInputProcessorsForTestInput (This : in out TestingInputSingleton; aTestInputInterface : TestInputInterface_Access) is
      testInputInterface : TestInputInterface_Access;
   begin
        testInputInterface := aTestInputInterface;
        This.paintable := testInputInterface;
        This.inputProcessorArray (Canvas_Package.UP) := GameInputProcessor_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     --  throws Exception
--     procedure processEvent (This : in out ; allbinaryLayerManager : AllBinaryLayerManager_Access; gameKeyEvent : GameKeyEvent_Access) is
--     begin
--                  testInputInterface.up;
--     end processEvent;
;
        This.inputProcessorArray (Canvas_Package.DOWN) := GameInputProcessor_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     --  throws Exception
--     procedure processEvent (This : in out ; allbinaryLayerManager : AllBinaryLayerManager_Access; gameKeyEvent : GameKeyEvent_Access) is
--     begin
--                  testInputInterface.down;
--     end processEvent;
;
        This.inputProcessorArray (Canvas_Package.LEFT) := GameInputProcessor_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     --  throws Exception
--     procedure processEvent (This : in out ; allbinaryLayerManager : AllBinaryLayerManager_Access; gameKeyEvent : GameKeyEvent_Access) is
--     begin
--                  testInputInterface.left;
--     end processEvent;
;
        This.inputProcessorArray (Canvas_Package.RIGHT) := GameInputProcessor_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     --  throws Exception
--     procedure processEvent (This : in out ; allbinaryLayerManager : AllBinaryLayerManager_Access; gameKeyEvent : GameKeyEvent_Access) is
--     begin
--                  testInputInterface.right;
--     end processEvent;
;
        This.inputProcessorArray (Canvas_Package.KEY_NUM7) := GameInputProcessor_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     --  throws Exception
--     procedure processEvent (This : in out ; allbinaryLayerManager : AllBinaryLayerManager_Access; gameKeyEvent : GameKeyEvent_Access) is
--     begin
--                  testInputInterface.strafeLeft;
--     end processEvent;
;
        This.inputProcessorArray (Canvas_Package.KEY_NUM9) := GameInputProcessor_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     --  throws Exception
--     procedure processEvent (This : in out ; allbinaryLayerManager : AllBinaryLayerManager_Access; gameKeyEvent : GameKeyEvent_Access) is
--     begin
--                  testInputInterface.strafeRight;
--     end processEvent;
;
        GameInputProcessorUtil_Package.init (This.inputProcessorArray);
   end initInputProcessorsForTestInput;

   --  throws Exception
   procedure processInputList (This : in out TestingInputSingleton; allbinaryLayerManager : AllBinaryLayerManager_Access; list : BasicArrayList_Access) is
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
   procedure processInput (This : in out TestingInputSingleton; allbinaryLayerManager : AllBinaryLayerManager_Access) is
   begin
        This.processInputList (allbinaryLayerManager, This.getGameKeyEventList);
        This.getGameKeyEventList.clear;
   end processInput;

   procedure paint (This : in out TestingInputSingleton; graphics : Graphics_Access) is
   begin
        This.paintable.paint (graphics);
   end paint;

   function implmentsGameInputInterface (This : in out TestingInputSingleton) return Boolean is
   begin
        return True;
   end implmentsGameInputInterface;

   procedure getInstance is
      Java_Result : constant TestingInputSingleton_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure implmentsGameInputInterface (This : in out TestingInputSingleton) is
      Java_Result : constant Boolean := TestingInputSingleton'Class (This).implmentsGameInputInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end implmentsGameInputInterface;

begin
   null;
   instance := TestingInputSingleton_Package.Create;

end org.allbinary.game.input.TestingInputSingleton_Package;


