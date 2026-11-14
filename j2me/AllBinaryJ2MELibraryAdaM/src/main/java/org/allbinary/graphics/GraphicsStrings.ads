-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

with AllBinary_Java;
limited with org.allbinary.graphics.GraphicsStrings_Package;
package org.allbinary.graphics.GraphicsStrings_Package_References is
   type GraphicsStrings_Access is access all org.allbinary.graphics.GraphicsStrings_Package.GraphicsStrings'Class;
   type GraphicsStrings_Access_Array is array (Natural range <>) of GraphicsStrings_Access;
   type GraphicsStrings_Access_Array_Access is access all GraphicsStrings_Access_Array;
   type GraphicsStrings_Access_Array_Access_Array is array (Natural range <>) of GraphicsStrings_Access_Array_Access;
   type GraphicsStrings_Access_Array_Access_Array_Access is access all GraphicsStrings_Access_Array_Access_Array;
   type GraphicsStrings_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GraphicsStrings_Access_Array_Access;
   end record;
   function Java_Box (Value : GraphicsStrings_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GraphicsStrings_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GraphicsStrings_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GraphicsStrings_Access_Array_Access is (if Value /= null and then Value.all in GraphicsStrings_Access_Array_Object'Class then GraphicsStrings_Access_Array_Object'Class (Value.all).Value else null);
   type GraphicsStrings_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GraphicsStrings_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GraphicsStrings_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GraphicsStrings_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GraphicsStrings_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GraphicsStrings_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GraphicsStrings_Access_Array_Access_Array_Object'Class then GraphicsStrings_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.GraphicsStrings_Package_References;

with org.allbinary.graphics.GraphicsStrings_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.GraphicsStrings_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GraphicsStrings_Access is org.allbinary.graphics.GraphicsStrings_Package_References.GraphicsStrings_Access;
   function "=" (Left, Right : GraphicsStrings_Access) return Boolean renames org.allbinary.graphics.GraphicsStrings_Package_References."=";
   subtype GraphicsStrings_Access_Array is org.allbinary.graphics.GraphicsStrings_Package_References.GraphicsStrings_Access_Array;
   function "=" (Left, Right : GraphicsStrings_Access_Array) return Boolean renames org.allbinary.graphics.GraphicsStrings_Package_References."=";
   subtype GraphicsStrings_Access_Array_Access is org.allbinary.graphics.GraphicsStrings_Package_References.GraphicsStrings_Access_Array_Access;
   function "=" (Left, Right : GraphicsStrings_Access_Array_Access) return Boolean renames org.allbinary.graphics.GraphicsStrings_Package_References."=";
   function Java_Box (Value : GraphicsStrings_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.GraphicsStrings_Package_References.Java_Box;
   function Java_Unbox_GraphicsStrings_Access_Array (Value : access Java_Object'Class) return GraphicsStrings_Access_Array_Access renames org.allbinary.graphics.GraphicsStrings_Package_References.Java_Unbox_GraphicsStrings_Access_Array;
   subtype GraphicsStrings_Access_Array_Access_Array is org.allbinary.graphics.GraphicsStrings_Package_References.GraphicsStrings_Access_Array_Access_Array;
   function "=" (Left, Right : GraphicsStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.GraphicsStrings_Package_References."=";
   subtype GraphicsStrings_Access_Array_Access_Array_Access is org.allbinary.graphics.GraphicsStrings_Package_References.GraphicsStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GraphicsStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.GraphicsStrings_Package_References."=";
   function Java_Box (Value : GraphicsStrings_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.GraphicsStrings_Package_References.Java_Box;
   function Java_Unbox_GraphicsStrings_Access_Array_Access_Array (Value : access Java_Object'Class) return GraphicsStrings_Access_Array_Access_Array_Access renames org.allbinary.graphics.GraphicsStrings_Package_References.Java_Unbox_GraphicsStrings_Access_Array_Access_Array;

   type GraphicsStrings is new Java_Object with record
      ANIMATION : Unbounded_String;
      ANGLE : Unbounded_String;
      MOVEMENT_ANGLE : Unbounded_String;
      ROTATION : Unbounded_String;
      OPACITY : Unbounded_String;
      HTML : Unbounded_String;
      WIDTH : Unbounded_String;
      HEIGHT : Unbounded_String;
   end record;
   instance : GraphicsStrings_Access;

   procedure Initialize (This : in out GraphicsStrings'Class);
   function Create return GraphicsStrings_Access;
   function getInstance return GraphicsStrings_Access;

end org.allbinary.graphics.GraphicsStrings_Package;


