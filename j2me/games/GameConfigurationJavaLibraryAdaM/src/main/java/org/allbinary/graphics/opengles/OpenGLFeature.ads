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
limited with org.allbinary.graphics.opengles.OpenGLFeature_Package;
package org.allbinary.graphics.opengles.OpenGLFeature_Package_References is
   type OpenGLFeature_Access is access all org.allbinary.graphics.opengles.OpenGLFeature_Package.OpenGLFeature'Class;
   type OpenGLFeature_Access_Array is array (Natural range <>) of OpenGLFeature_Access;
   type OpenGLFeature_Access_Array_Access is access all OpenGLFeature_Access_Array;
   type OpenGLFeature_Access_Array_Access_Array is array (Natural range <>) of OpenGLFeature_Access_Array_Access;
   type OpenGLFeature_Access_Array_Access_Array_Access is access all OpenGLFeature_Access_Array_Access_Array;
   type OpenGLFeature_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLFeature_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLFeature_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLFeature_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLFeature_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLFeature_Access_Array_Access is (if Value /= null and then Value.all in OpenGLFeature_Access_Array_Object'Class then OpenGLFeature_Access_Array_Object'Class (Value.all).Value else null);
   type OpenGLFeature_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLFeature_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLFeature_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLFeature_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLFeature_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLFeature_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OpenGLFeature_Access_Array_Access_Array_Object'Class then OpenGLFeature_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.opengles.OpenGLFeature_Package_References;

with org.allbinary.graphics.opengles.OpenGLFeature_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.configuration.feature.Feature_Package; use org.allbinary.game.configuration.feature.Feature_Package;

package org.allbinary.graphics.opengles.OpenGLFeature_Package is

   package Feature_Package renames Standard.org.allbinary.game.configuration.feature.Feature_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLFeature_Access is org.allbinary.graphics.opengles.OpenGLFeature_Package_References.OpenGLFeature_Access;
   function "=" (Left, Right : OpenGLFeature_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLFeature_Package_References."=";
   subtype OpenGLFeature_Access_Array is org.allbinary.graphics.opengles.OpenGLFeature_Package_References.OpenGLFeature_Access_Array;
   function "=" (Left, Right : OpenGLFeature_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLFeature_Package_References."=";
   subtype OpenGLFeature_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLFeature_Package_References.OpenGLFeature_Access_Array_Access;
   function "=" (Left, Right : OpenGLFeature_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLFeature_Package_References."=";
   function Java_Box (Value : OpenGLFeature_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.OpenGLFeature_Package_References.Java_Box;
   function Java_Unbox_OpenGLFeature_Access_Array (Value : access Java_Object'Class) return OpenGLFeature_Access_Array_Access renames org.allbinary.graphics.opengles.OpenGLFeature_Package_References.Java_Unbox_OpenGLFeature_Access_Array;
   subtype OpenGLFeature_Access_Array_Access_Array is org.allbinary.graphics.opengles.OpenGLFeature_Package_References.OpenGLFeature_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLFeature_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLFeature_Package_References."=";
   subtype OpenGLFeature_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLFeature_Package_References.OpenGLFeature_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLFeature_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLFeature_Package_References."=";
   function Java_Box (Value : OpenGLFeature_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.OpenGLFeature_Package_References.Java_Box;
   function Java_Unbox_OpenGLFeature_Access_Array_Access_Array (Value : access Java_Object'Class) return OpenGLFeature_Access_Array_Access_Array_Access renames org.allbinary.graphics.opengles.OpenGLFeature_Package_References.Java_Unbox_OpenGLFeature_Access_Array_Access_Array;

   type OpenGLFeature is new Feature_Package.Feature with null record;

   procedure Initialize (This : in out OpenGLFeature'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return OpenGLFeature_Access;

end org.allbinary.graphics.opengles.OpenGLFeature_Package;


