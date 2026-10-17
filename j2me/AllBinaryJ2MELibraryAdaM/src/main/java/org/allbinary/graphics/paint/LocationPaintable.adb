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


package body org.allbinary.graphics.paint.LocationPaintable_Package is

   procedure Initialize_Fields (This : in out LocationPaintable'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out LocationPaintable'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LocationPaintable_Access is
      This : constant LocationPaintable_Access := new LocationPaintable;
   begin
      LocationPaintable_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return LocationPaintable_Access is
   begin
        return LocationPaintable_Package.instance;
   end getInstance;

   procedure paintXY (This : in out LocationPaintable; graphics : Graphics_Access; x : Integer; y : Integer) is
   begin
        null;
   end paintXY;

begin
   null;
   instance := LocationPaintable_Package.Create;

end org.allbinary.graphics.paint.LocationPaintable_Package;


