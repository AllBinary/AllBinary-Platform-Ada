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
limited with org.allbinary.image.opengles.OpenGLESImageProperties_Package;
package org.allbinary.image.opengles.OpenGLESImageProperties_Package_References is
   type OpenGLESImageProperties_Access is access all org.allbinary.image.opengles.OpenGLESImageProperties_Package.OpenGLESImageProperties'Class;
   type OpenGLESImageProperties_Access_Array is array (Natural range <>) of OpenGLESImageProperties_Access;
   type OpenGLESImageProperties_Access_Array_Access is access all OpenGLESImageProperties_Access_Array;
   type OpenGLESImageProperties_Access_Array_Access_Array is array (Natural range <>) of OpenGLESImageProperties_Access_Array_Access;
   type OpenGLESImageProperties_Access_Array_Access_Array_Access is access all OpenGLESImageProperties_Access_Array_Access_Array;
   type OpenGLESImageProperties_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLESImageProperties_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLESImageProperties_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLESImageProperties_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLESImageProperties_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLESImageProperties_Access_Array_Access is (if Value /= null and then Value.all in OpenGLESImageProperties_Access_Array_Object'Class then OpenGLESImageProperties_Access_Array_Object'Class (Value.all).Value else null);
   type OpenGLESImageProperties_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLESImageProperties_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLESImageProperties_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLESImageProperties_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLESImageProperties_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLESImageProperties_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OpenGLESImageProperties_Access_Array_Access_Array_Object'Class then OpenGLESImageProperties_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.image.opengles.OpenGLESImageProperties_Package_References;

with org.allbinary.image.opengles.OpenGLESImageProperties_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.image.opengles.OpenGLESImageProperties_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLESImageProperties_Access is org.allbinary.image.opengles.OpenGLESImageProperties_Package_References.OpenGLESImageProperties_Access;
   function "=" (Left, Right : OpenGLESImageProperties_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImageProperties_Package_References."=";
   subtype OpenGLESImageProperties_Access_Array is org.allbinary.image.opengles.OpenGLESImageProperties_Package_References.OpenGLESImageProperties_Access_Array;
   function "=" (Left, Right : OpenGLESImageProperties_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLESImageProperties_Package_References."=";
   subtype OpenGLESImageProperties_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImageProperties_Package_References.OpenGLESImageProperties_Access_Array_Access;
   function "=" (Left, Right : OpenGLESImageProperties_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImageProperties_Package_References."=";
   function Java_Box (Value : OpenGLESImageProperties_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.opengles.OpenGLESImageProperties_Package_References.Java_Box;
   function Java_Unbox_OpenGLESImageProperties_Access_Array (Value : access Java_Object'Class) return OpenGLESImageProperties_Access_Array_Access renames org.allbinary.image.opengles.OpenGLESImageProperties_Package_References.Java_Unbox_OpenGLESImageProperties_Access_Array;
   subtype OpenGLESImageProperties_Access_Array_Access_Array is org.allbinary.image.opengles.OpenGLESImageProperties_Package_References.OpenGLESImageProperties_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLESImageProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLESImageProperties_Package_References."=";
   subtype OpenGLESImageProperties_Access_Array_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImageProperties_Package_References.OpenGLESImageProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLESImageProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImageProperties_Package_References."=";
   function Java_Box (Value : OpenGLESImageProperties_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.opengles.OpenGLESImageProperties_Package_References.Java_Box;
   function Java_Unbox_OpenGLESImageProperties_Access_Array_Access_Array (Value : access Java_Object'Class) return OpenGLESImageProperties_Access_Array_Access_Array_Access renames org.allbinary.image.opengles.OpenGLESImageProperties_Package_References.Java_Unbox_OpenGLESImageProperties_Access_Array_Access_Array;

   type OpenGLESImageProperties is new Java_Object with record
      textureID : Integer;
      scaleX : Float;
      scaleY : Float;
      scaleX2 : Float;
      scaleY2 : Float;
      angle : Integer;
      redf : Float;
      greenf : Float;
      bluef : Float;
      alphaf : Float;
   end record;

   procedure Initialize (This : in out OpenGLESImageProperties'Class);
   function Create return OpenGLESImageProperties_Access;

end org.allbinary.image.opengles.OpenGLESImageProperties_Package;


