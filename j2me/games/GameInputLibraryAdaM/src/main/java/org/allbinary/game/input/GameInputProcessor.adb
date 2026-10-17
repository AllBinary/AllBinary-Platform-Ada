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


package body org.allbinary.game.input.GameInputProcessor_Package is

   procedure Initialize_Fields (This : in out GameInputProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return GameInputProcessor_Access is
   begin
        return GameInputProcessor_Package.instance;
   end getInstance;

   procedure Initialize (This : in out GameInputProcessor'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GameInputProcessor_Access is
      This : constant GameInputProcessor_Access := new GameInputProcessor;
   begin
      GameInputProcessor_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure processEvent (This : in out GameInputProcessor; allbinaryLayerManager_Param : access AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent'Class) is
      allbinaryLayerManager : AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
      gameKeyEvent : GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        null;
   end processEvent;

   --  throws Exception
   procedure processReleasedEvent (This : in out GameInputProcessor; allbinaryLayerManager_Param : access AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent'Class) is
      allbinaryLayerManager : AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
      gameKeyEvent : GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        null;
   end processReleasedEvent;

   --  throws Exception
   procedure processAnalog (This : in out GameInputProcessor; allbinaryLayerManager_Param : access AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent'Class; analogValue : Integer) is
      allbinaryLayerManager : AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
      gameKeyEvent : GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        null;
   end processAnalog;

   --  throws Exception
   procedure process (This : in out GameInputProcessor; allbinaryLayerManager_Param : access AllBinaryLayerManager'Class; keyAsInteger : Integer) is
      allbinaryLayerManager : AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
   begin
        null;
   end process;

   --  throws Exception
   procedure processReleased (This : in out GameInputProcessor; allbinaryLayerManager_Param : access AllBinaryLayerManager'Class; keyAsInteger : Integer) is
      allbinaryLayerManager : AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
   begin
        null;
   end processReleased;

begin
   null;
   instance := GameInputProcessor_Package.Create;

end org.allbinary.game.input.GameInputProcessor_Package;


