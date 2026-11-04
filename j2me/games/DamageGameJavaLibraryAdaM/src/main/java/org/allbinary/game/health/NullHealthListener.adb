-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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



package body org.allbinary.game.health.NullHealthListener_Package is

   procedure Initialize_Fields (This : in out NullHealthListener'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullHealthListener'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullHealthListener_Access is
      This : constant NullHealthListener_Access := new NullHealthListener;
   begin
      NullHealthListener_Package.Initialize (This.all);
      return This;
   end Create;


   procedure onHealthChange (This : in out NullHealthListener) is
   begin
        null;
   end onHealthChange;

begin
   null;
   NULL_HEALTH_LISTENER := NullHealthListener_Package.Create;

end org.allbinary.game.health.NullHealthListener_Package;


