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


with org.allbinary.graphics.paint.StatePaintable_Package; use org.allbinary.graphics.paint.StatePaintable_Package;
with org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package;
with org.allbinary.graphics.displayable.StateControlledInterface_Package;
with org.allbinary.graphics.paint.StatePaintable_Package;

package body org.allbinary.graphics.paint.StatePaintableFactory_Package is

   subtype StatePaintable_Access is org.allbinary.graphics.paint.StatePaintable_Package_References.StatePaintable_Access;
   function "=" (Left, Right : StatePaintable_Access) return Boolean renames org.allbinary.graphics.paint.StatePaintable_Package_References."=";
   subtype StatePaintable_Access_Array is org.allbinary.graphics.paint.StatePaintable_Package_References.StatePaintable_Access_Array;
   function "=" (Left, Right : StatePaintable_Access_Array) return Boolean renames org.allbinary.graphics.paint.StatePaintable_Package_References."=";
   subtype StatePaintable_Access_Array_Access is org.allbinary.graphics.paint.StatePaintable_Package_References.StatePaintable_Access_Array_Access;
   function "=" (Left, Right : StatePaintable_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.StatePaintable_Package_References."=";
   subtype StatePaintable_Access_Array_Access_Array is org.allbinary.graphics.paint.StatePaintable_Package_References.StatePaintable_Access_Array_Access_Array;
   function "=" (Left, Right : StatePaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.paint.StatePaintable_Package_References."=";
   subtype StatePaintable_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.StatePaintable_Package_References.StatePaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StatePaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.StatePaintable_Package_References."=";
   procedure Initialize_Fields (This : in out StatePaintableFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out StatePaintableFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return StatePaintableFactory_Access is
      This : constant StatePaintableFactory_Access := new StatePaintableFactory;
   begin
      StatePaintableFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return StatePaintable_Access is
   begin
        return StatePaintable_Access (StatePaintableFactory_Package.instance);
   end getInstance;

begin
   null;
   instance := StatePaintable_Package.Create;

end org.allbinary.graphics.paint.StatePaintableFactory_Package;


