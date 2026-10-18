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



package body org.allbinary.game.input.ScrollMapLeftGameInputProcessor_Package is

   procedure Initialize_Fields (This : in out ScrollMapLeftGameInputProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ScrollMapLeftGameInputProcessor'Class; scrollMapPlayerGameInput_Param : access ScrollMapPlayerGameInput_Package.ScrollMapPlayerGameInput'Class) is
      scrollMapPlayerGameInput : constant ScrollMapPlayerGameInput_Access := ScrollMapPlayerGameInput_Access (scrollMapPlayerGameInput_Param);
   begin
        ScrollMapGameInputProcessor_Package.Initialize (This, scrollMapPlayerGameInput);
   end Initialize;

   function Create (scrollMapPlayerGameInput_Param : access ScrollMapPlayerGameInput_Package.ScrollMapPlayerGameInput'Class) return ScrollMapLeftGameInputProcessor_Access is
      This : constant ScrollMapLeftGameInputProcessor_Access := new ScrollMapLeftGameInputProcessor;
   begin
      ScrollMapLeftGameInputProcessor_Package.Initialize (This.all, scrollMapPlayerGameInput_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processEvent (This : in out ScrollMapLeftGameInputProcessor; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      allbinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        This.scrollMapPlayerGameInput.left;
   end processEvent;

end org.allbinary.game.input.ScrollMapLeftGameInputProcessor_Package;


