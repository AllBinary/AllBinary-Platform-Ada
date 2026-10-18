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



package body org.allbinary.graphics.paint.StatePaintable_Package is

   procedure Initialize_Fields (This : in out StatePaintable'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out StatePaintable'Class) is
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return StatePaintable_Access is
      This : constant StatePaintable_Access := new StatePaintable;
   begin
      StatePaintable_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setState (This : in out StatePaintable; state : Integer) is
   begin
        null;
   end setState;

end org.allbinary.graphics.paint.StatePaintable_Package;


