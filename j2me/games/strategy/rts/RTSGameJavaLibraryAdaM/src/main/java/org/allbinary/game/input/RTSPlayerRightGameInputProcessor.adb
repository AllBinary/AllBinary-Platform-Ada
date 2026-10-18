-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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



package body org.allbinary.game.input.RTSPlayerRightGameInputProcessor_Package is

   procedure Initialize_Fields (This : in out RTSPlayerRightGameInputProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out RTSPlayerRightGameInputProcessor'Class; rtsPlayerGameInput_Param : access RTSPlayerGameInput_Package.RTSPlayerGameInput'Class) is
      rtsPlayerGameInput : constant RTSPlayerGameInput_Access := RTSPlayerGameInput_Access (rtsPlayerGameInput_Param);
   begin
        RTSPlayerGameInputProcessor_Package.Initialize (This, rtsPlayerGameInput);
   end Initialize;

   function Create (rtsPlayerGameInput_Param : access RTSPlayerGameInput_Package.RTSPlayerGameInput'Class) return RTSPlayerRightGameInputProcessor_Access is
      This : constant RTSPlayerRightGameInputProcessor_Access := new RTSPlayerRightGameInputProcessor;
   begin
      RTSPlayerRightGameInputProcessor_Package.Initialize (This.all, rtsPlayerGameInput_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processEvent (This : in out RTSPlayerRightGameInputProcessor; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      allbinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        This.rtsPlayerGameInput.right;
   end processEvent;

end org.allbinary.game.input.RTSPlayerRightGameInputProcessor_Package;


