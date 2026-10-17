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


   procedure Initialize (This : in out RTSPlayerRightGameInputProcessor'Class; rtsPlayerGameInput : RTSPlayerGameInput_Access) is
   begin
        RTSPlayerGameInputProcessor_Package.Initialize (This, rtsPlayerGameInput);
   end Initialize;

   function Create (rtsPlayerGameInput : RTSPlayerGameInput_Access) return RTSPlayerRightGameInputProcessor_Access is
      This : constant RTSPlayerRightGameInputProcessor_Access := new RTSPlayerRightGameInputProcessor;
   begin
      RTSPlayerRightGameInputProcessor_Package.Initialize (This.all, rtsPlayerGameInput);
      return This;
   end Create;

   --  throws Exception
   procedure processEvent (This : in out RTSPlayerRightGameInputProcessor; allbinaryLayerManager : AllBinaryLayerManager_Access; gameKeyEvent : GameKeyEvent_Access) is
   begin
        This.rtsPlayerGameInput.right;
   end processEvent;

end org.allbinary.game.input.RTSPlayerRightGameInputProcessor_Package;


