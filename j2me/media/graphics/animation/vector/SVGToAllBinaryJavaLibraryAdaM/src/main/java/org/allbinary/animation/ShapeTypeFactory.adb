-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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


with org.allbinary.animation.ShapeType_Package; use org.allbinary.animation.ShapeType_Package;
with org.allbinary.animation.ShapeType_Package_References;
with org.allbinary.animation.ShapeType_Package;

package body org.allbinary.animation.ShapeTypeFactory_Package is

   subtype ShapeType_Access is org.allbinary.animation.ShapeType_Package_References.ShapeType_Access;
   function "=" (Left, Right : ShapeType_Access) return Boolean renames org.allbinary.animation.ShapeType_Package_References."=";
   subtype ShapeType_Access_Array is org.allbinary.animation.ShapeType_Package_References.ShapeType_Access_Array;
   function "=" (Left, Right : ShapeType_Access_Array) return Boolean renames org.allbinary.animation.ShapeType_Package_References."=";
   subtype ShapeType_Access_Array_Access is org.allbinary.animation.ShapeType_Package_References.ShapeType_Access_Array_Access;
   function "=" (Left, Right : ShapeType_Access_Array_Access) return Boolean renames org.allbinary.animation.ShapeType_Package_References."=";
   subtype ShapeType_Access_Array_Access_Array is org.allbinary.animation.ShapeType_Package_References.ShapeType_Access_Array_Access_Array;
   function "=" (Left, Right : ShapeType_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.ShapeType_Package_References."=";
   subtype ShapeType_Access_Array_Access_Array_Access is org.allbinary.animation.ShapeType_Package_References.ShapeType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShapeType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.ShapeType_Package_References."=";
   procedure Initialize_Fields (This : in out ShapeTypeFactory'Class) is
   begin
      null;
      This.KEY_LINE := To_Unbounded_String ("line");
      This.KEY_CIRCLE := To_Unbounded_String ("circle");
      This.KEY_RECTANGLE := To_Unbounded_String ("rectangle");
      This.KEY_RECT := To_Unbounded_String ("rect");
      This.LINE := ShapeType_Package.Create (This.KEY_LINE);
      This.CIRCLE := ShapeType_Package.Create (This.KEY_CIRCLE);
      This.RECTANGLE := ShapeType_Package.Create (This.KEY_RECTANGLE);
   end Initialize_Fields;

   procedure Initialize (This : in out ShapeTypeFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ShapeTypeFactory_Access is
      This : constant ShapeTypeFactory_Access := new ShapeTypeFactory;
   begin
      ShapeTypeFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ShapeTypeFactory_Access is
   begin
        return ShapeTypeFactory_Access (ShapeTypeFactory_Package.instance);
   end getInstance;

begin
   null;
   instance := ShapeTypeFactory_Package.Create;

end org.allbinary.animation.ShapeTypeFactory_Package;


