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


with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.Paintable_Package_References;
with org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package;

package body org.allbinary.graphics.paint.PaintableFactory_Package is

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
   procedure Initialize_Fields (This : in out PaintableFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out PaintableFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PaintableFactory_Access is
      This : constant PaintableFactory_Access := new PaintableFactory;
   begin
      PaintableFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out PaintableFactory) return Paintable_Access is
   begin
        return NullPaintable_Package.getInstance;
   end getInstance;

end org.allbinary.graphics.paint.PaintableFactory_Package;


