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



package body org.allbinary.graphics.paint.StringLocationPaintable_Package is

   procedure Initialize_Fields (This : in out StringLocationPaintable'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out StringLocationPaintable'Class; value : Unbounded_String) is
   begin
      LocationPaintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.value := value;
   end Initialize;

   function Create (value : Unbounded_String) return StringLocationPaintable_Access is
      This : constant StringLocationPaintable_Access := new StringLocationPaintable;
   begin
      StringLocationPaintable_Package.Initialize (This.all, value);
      return This;
   end Create;

   procedure paintXY (This : in out StringLocationPaintable; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        graphics.drawString (This.value, x, y, 0);
   end paintXY;

end org.allbinary.graphics.paint.StringLocationPaintable_Package;


