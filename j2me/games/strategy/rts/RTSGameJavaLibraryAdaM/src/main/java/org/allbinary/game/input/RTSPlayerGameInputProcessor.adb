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


package body org.allbinary.game.input.RTSPlayerGameInputProcessor_Package is

   procedure Initialize_Fields (This : in out RTSPlayerGameInputProcessor'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out RTSPlayerGameInputProcessor'Class; rtsPlayerGameInput : RTSPlayerGameInput_Access) is
   begin
      GameInputProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        This.rtsPlayerGameInput := rtsPlayerGameInput;
   end Initialize;

   function Create (rtsPlayerGameInput : RTSPlayerGameInput_Access) return RTSPlayerGameInputProcessor_Access is
      This : constant RTSPlayerGameInputProcessor_Access := new RTSPlayerGameInputProcessor;
   begin
      RTSPlayerGameInputProcessor_Package.Initialize (This.all, rtsPlayerGameInput);
      return This;
   end Create;

end org.allbinary.game.input.RTSPlayerGameInputProcessor_Package;


