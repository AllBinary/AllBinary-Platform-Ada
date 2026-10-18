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



package body org.allbinary.graphics.paint.NullInitUpdatePaintable_Package is

   procedure Initialize_Fields (This : in out NullInitUpdatePaintable'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out NullInitUpdatePaintable'Class) is
   begin
      InitUpdatePaintable_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return NullInitUpdatePaintable_Access is
      This : constant NullInitUpdatePaintable_Access := new NullInitUpdatePaintable;
   begin
      NullInitUpdatePaintable_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return InitUpdatePaintable_Access is
   begin
        return NullInitUpdatePaintable_Package.SINGLETON;
   end getInstance;

begin
   null;
   SINGLETON := NullInitUpdatePaintable_Package.Create;

end org.allbinary.graphics.paint.NullInitUpdatePaintable_Package;


