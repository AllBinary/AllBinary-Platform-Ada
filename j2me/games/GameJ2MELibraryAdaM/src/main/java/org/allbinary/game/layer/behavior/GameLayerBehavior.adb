-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.game.layer.behavior.GameLayerBehavior_Package is

   procedure Initialize_Fields (This : in out GameLayerBehavior'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out GameLayerBehavior'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GameLayerBehavior_Access is
      This : constant GameLayerBehavior_Access := new GameLayerBehavior;
   begin
      Initialize (This.all);
      return This;
   end Create;


end org.allbinary.game.layer.behavior.GameLayerBehavior_Package;


