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


package body org.allbinary.graphics.paint.NullPaintable_Package is

   procedure Initialize_Fields (This : in out NullPaintable'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out NullPaintable'Class) is
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return NullPaintable_Access is
      This : constant NullPaintable_Access := new NullPaintable;
   begin
      NullPaintable_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return Paintable_Access is
   begin
        return NullPaintable_Package.SINGLETON;
   end getInstance;

begin
   null;
   SINGLETON := NullPaintable_Package.Create;

end org.allbinary.graphics.paint.NullPaintable_Package;


