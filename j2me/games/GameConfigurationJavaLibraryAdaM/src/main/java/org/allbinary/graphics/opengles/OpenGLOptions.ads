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

with AllBinary_Java;
limited with org.allbinary.graphics.opengles.OpenGLOptions_Package;
package org.allbinary.graphics.opengles.OpenGLOptions_Package_References is
   type OpenGLOptions_Access is access all org.allbinary.graphics.opengles.OpenGLOptions_Package.OpenGLOptions'Class;
   type OpenGLOptions_Access_Array is array (Natural range <>) of OpenGLOptions_Access;
   type OpenGLOptions_Access_Array_Access is access all OpenGLOptions_Access_Array;
   type OpenGLOptions_Access_Array_Access_Array is array (Natural range <>) of OpenGLOptions_Access_Array_Access;
   type OpenGLOptions_Access_Array_Access_Array_Access is access all OpenGLOptions_Access_Array_Access_Array;
   type OpenGLOptions_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLOptions_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLOptions_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLOptions_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLOptions_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLOptions_Access_Array_Access is (if Value /= null and then Value.all in OpenGLOptions_Access_Array_Object'Class then OpenGLOptions_Access_Array_Object'Class (Value.all).Value else null);
   type OpenGLOptions_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLOptions_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLOptions_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLOptions_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLOptions_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLOptions_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OpenGLOptions_Access_Array_Access_Array_Object'Class then OpenGLOptions_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.opengles.OpenGLOptions_Package_References;

with org.allbinary.graphics.opengles.OpenGLOptions_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.opengles.OpenGLOptions_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLOptions_Access is org.allbinary.graphics.opengles.OpenGLOptions_Package_References.OpenGLOptions_Access;
   function "=" (Left, Right : OpenGLOptions_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLOptions_Package_References."=";
   subtype OpenGLOptions_Access_Array is org.allbinary.graphics.opengles.OpenGLOptions_Package_References.OpenGLOptions_Access_Array;
   function "=" (Left, Right : OpenGLOptions_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLOptions_Package_References."=";
   subtype OpenGLOptions_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLOptions_Package_References.OpenGLOptions_Access_Array_Access;
   function "=" (Left, Right : OpenGLOptions_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLOptions_Package_References."=";
   function Java_Box (Value : OpenGLOptions_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.OpenGLOptions_Package_References.Java_Box;
   function Java_Unbox_OpenGLOptions_Access_Array (Value : access Java_Object'Class) return OpenGLOptions_Access_Array_Access renames org.allbinary.graphics.opengles.OpenGLOptions_Package_References.Java_Unbox_OpenGLOptions_Access_Array;
   subtype OpenGLOptions_Access_Array_Access_Array is org.allbinary.graphics.opengles.OpenGLOptions_Package_References.OpenGLOptions_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLOptions_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLOptions_Package_References."=";
   subtype OpenGLOptions_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLOptions_Package_References.OpenGLOptions_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLOptions_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLOptions_Package_References."=";
   function Java_Box (Value : OpenGLOptions_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.OpenGLOptions_Package_References.Java_Box;
   function Java_Unbox_OpenGLOptions_Access_Array_Access_Array (Value : access Java_Object'Class) return OpenGLOptions_Access_Array_Access_Array_Access renames org.allbinary.graphics.opengles.OpenGLOptions_Package_References.Java_Unbox_OpenGLOptions_Access_Array_Access_Array;

   type OpenGLOptions is new Java_Object with null record;

   procedure Initialize (This : in out OpenGLOptions'Class);
   function Create return OpenGLOptions_Access;
   procedure init (This : in out OpenGLOptions);

end org.allbinary.graphics.opengles.OpenGLOptions_Package;


