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

limited with org.allbinary.animation.ShapeTypeFactory_Package;
package org.allbinary.animation.ShapeTypeFactory_Package_References is
   type ShapeTypeFactory_Access is access all org.allbinary.animation.ShapeTypeFactory_Package.ShapeTypeFactory'Class;
   type ShapeTypeFactory_Access_Array is array (Natural range <>) of ShapeTypeFactory_Access;
   type ShapeTypeFactory_Access_Array_Access is access all ShapeTypeFactory_Access_Array;
   type ShapeTypeFactory_Access_Array_Access_Array is array (Natural range <>) of ShapeTypeFactory_Access_Array_Access;
   type ShapeTypeFactory_Access_Array_Access_Array_Access is access all ShapeTypeFactory_Access_Array_Access_Array;
end org.allbinary.animation.ShapeTypeFactory_Package_References;

with org.allbinary.animation.ShapeTypeFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.animation.ShapeType_Package;
with org.allbinary.animation.ShapeType_Package_References;

package org.allbinary.animation.ShapeTypeFactory_Package is

   package Reference_Types is
   subtype ShapeType_Access is org.allbinary.animation.ShapeType_Package_References.ShapeType_Access;
   use type ShapeType_Access;
   subtype ShapeType_Access_Array is org.allbinary.animation.ShapeType_Package_References.ShapeType_Access_Array;
   use type ShapeType_Access_Array;
   subtype ShapeType_Access_Array_Access is org.allbinary.animation.ShapeType_Package_References.ShapeType_Access_Array_Access;
   use type ShapeType_Access_Array_Access;
   subtype ShapeType_Access_Array_Access_Array is org.allbinary.animation.ShapeType_Package_References.ShapeType_Access_Array_Access_Array;
   use type ShapeType_Access_Array_Access_Array;
   subtype ShapeType_Access_Array_Access_Array_Access is org.allbinary.animation.ShapeType_Package_References.ShapeType_Access_Array_Access_Array_Access;
   use type ShapeType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ShapeTypeFactory_Access is org.allbinary.animation.ShapeTypeFactory_Package_References.ShapeTypeFactory_Access;
   function "=" (Left, Right : ShapeTypeFactory_Access) return Boolean renames org.allbinary.animation.ShapeTypeFactory_Package_References."=";
   subtype ShapeTypeFactory_Access_Array is org.allbinary.animation.ShapeTypeFactory_Package_References.ShapeTypeFactory_Access_Array;
   function "=" (Left, Right : ShapeTypeFactory_Access_Array) return Boolean renames org.allbinary.animation.ShapeTypeFactory_Package_References."=";
   subtype ShapeTypeFactory_Access_Array_Access is org.allbinary.animation.ShapeTypeFactory_Package_References.ShapeTypeFactory_Access_Array_Access;
   function "=" (Left, Right : ShapeTypeFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.ShapeTypeFactory_Package_References."=";
   subtype ShapeTypeFactory_Access_Array_Access_Array is org.allbinary.animation.ShapeTypeFactory_Package_References.ShapeTypeFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ShapeTypeFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.ShapeTypeFactory_Package_References."=";
   subtype ShapeTypeFactory_Access_Array_Access_Array_Access is org.allbinary.animation.ShapeTypeFactory_Package_References.ShapeTypeFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShapeTypeFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.ShapeTypeFactory_Package_References."=";

   type ShapeTypeFactory is new Java_Object with record
      KEY_LINE : Unbounded_String;
      KEY_CIRCLE : Unbounded_String;
      KEY_RECTANGLE : Unbounded_String;
      KEY_RECT : Unbounded_String;
      LINE : ShapeType_Access;
      CIRCLE : ShapeType_Access;
      RECTANGLE : ShapeType_Access;
   end record;
   instance : ShapeTypeFactory_Access;

   procedure Initialize (This : in out ShapeTypeFactory'Class);
   function Create return ShapeTypeFactory_Access;
   function getInstance return ShapeTypeFactory_Access;

end org.allbinary.animation.ShapeTypeFactory_Package;


