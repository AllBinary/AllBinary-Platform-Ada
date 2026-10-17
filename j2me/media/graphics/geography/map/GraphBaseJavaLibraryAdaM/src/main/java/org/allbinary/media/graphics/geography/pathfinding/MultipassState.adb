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


package body org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package is

   procedure Initialize_Fields (This : in out MultipassState'Class) is
   begin
      null;
      This.step := 0;
      This.iteration := 0;
      This.iteration2 := 0;
   end Initialize_Fields;

   procedure Initialize (This : in out MultipassState'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return MultipassState_Access is
      This : constant MultipassState_Access := new MultipassState;
   begin
      Initialize (This.all);
      return This;
   end Create;


end org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;


