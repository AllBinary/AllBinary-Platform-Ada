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


with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.Paintable_Package_References;

package body org.allbinary.graphics.displayable.screen.AboutPaintableFactory_Package is

   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
   subtype Paintable_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access;
   function "=" (Left, Right : Paintable_Access) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   subtype Paintable_Access_Array is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array;
   function "=" (Left, Right : Paintable_Access_Array) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   subtype Paintable_Access_Array_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access;
   function "=" (Left, Right : Paintable_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   subtype Paintable_Access_Array_Access_Array is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access_Array;
   function "=" (Left, Right : Paintable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   subtype Paintable_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Paintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   procedure Initialize_Fields (This : in out AboutPaintableFactory'Class) is
   begin
      null;
      This.paintableArray := new Paintable_Access_Array'(0 => NullPaintable_Package.getInstance);
   end Initialize_Fields;

   procedure Initialize (This : in out AboutPaintableFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AboutPaintableFactory_Access is
      This : constant AboutPaintableFactory_Access := new AboutPaintableFactory;
   begin
      AboutPaintableFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AboutPaintableFactory_Access is
   begin
        return AboutPaintableFactory_Access (AboutPaintableFactory_Package.instance);
   end getInstance;

begin
   null;
   instance := AboutPaintableFactory_Package.Create;

end org.allbinary.graphics.displayable.screen.AboutPaintableFactory_Package;


