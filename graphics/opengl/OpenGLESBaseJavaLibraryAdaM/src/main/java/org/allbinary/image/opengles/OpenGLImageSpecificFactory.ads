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
limited with org.allbinary.image.opengles.OpenGLImageSpecificFactory_Package;
package org.allbinary.image.opengles.OpenGLImageSpecificFactory_Package_References is
   type OpenGLImageSpecificFactory_Access is access all org.allbinary.image.opengles.OpenGLImageSpecificFactory_Package.OpenGLImageSpecificFactory'Class;
   type OpenGLImageSpecificFactory_Access_Array is array (Natural range <>) of OpenGLImageSpecificFactory_Access;
   type OpenGLImageSpecificFactory_Access_Array_Access is access all OpenGLImageSpecificFactory_Access_Array;
   type OpenGLImageSpecificFactory_Access_Array_Access_Array is array (Natural range <>) of OpenGLImageSpecificFactory_Access_Array_Access;
   type OpenGLImageSpecificFactory_Access_Array_Access_Array_Access is access all OpenGLImageSpecificFactory_Access_Array_Access_Array;
   type OpenGLImageSpecificFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLImageSpecificFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLImageSpecificFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLImageSpecificFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLImageSpecificFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLImageSpecificFactory_Access_Array_Access is (if Value /= null and then Value.all in OpenGLImageSpecificFactory_Access_Array_Object'Class then OpenGLImageSpecificFactory_Access_Array_Object'Class (Value.all).Value else null);
   type OpenGLImageSpecificFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLImageSpecificFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLImageSpecificFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLImageSpecificFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLImageSpecificFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLImageSpecificFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OpenGLImageSpecificFactory_Access_Array_Access_Array_Object'Class then OpenGLImageSpecificFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.image.opengles.OpenGLImageSpecificFactory_Package_References;

with org.allbinary.image.opengles.OpenGLImageSpecificFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.image.opengles.OpenGLImageFactory_Package;
with org.allbinary.image.opengles.OpenGLImageFactory_Package_References;

package org.allbinary.image.opengles.OpenGLImageSpecificFactory_Package is

   package Reference_Types is
   subtype OpenGLImageFactory_Access is org.allbinary.image.opengles.OpenGLImageFactory_Package_References.OpenGLImageFactory_Access;
   use type OpenGLImageFactory_Access;
   subtype OpenGLImageFactory_Access_Array is org.allbinary.image.opengles.OpenGLImageFactory_Package_References.OpenGLImageFactory_Access_Array;
   use type OpenGLImageFactory_Access_Array;
   subtype OpenGLImageFactory_Access_Array_Access is org.allbinary.image.opengles.OpenGLImageFactory_Package_References.OpenGLImageFactory_Access_Array_Access;
   use type OpenGLImageFactory_Access_Array_Access;
   subtype OpenGLImageFactory_Access_Array_Access_Array is org.allbinary.image.opengles.OpenGLImageFactory_Package_References.OpenGLImageFactory_Access_Array_Access_Array;
   use type OpenGLImageFactory_Access_Array_Access_Array;
   subtype OpenGLImageFactory_Access_Array_Access_Array_Access is org.allbinary.image.opengles.OpenGLImageFactory_Package_References.OpenGLImageFactory_Access_Array_Access_Array_Access;
   use type OpenGLImageFactory_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLImageSpecificFactory_Access is org.allbinary.image.opengles.OpenGLImageSpecificFactory_Package_References.OpenGLImageSpecificFactory_Access;
   function "=" (Left, Right : OpenGLImageSpecificFactory_Access) return Boolean renames org.allbinary.image.opengles.OpenGLImageSpecificFactory_Package_References."=";
   subtype OpenGLImageSpecificFactory_Access_Array is org.allbinary.image.opengles.OpenGLImageSpecificFactory_Package_References.OpenGLImageSpecificFactory_Access_Array;
   function "=" (Left, Right : OpenGLImageSpecificFactory_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLImageSpecificFactory_Package_References."=";
   subtype OpenGLImageSpecificFactory_Access_Array_Access is org.allbinary.image.opengles.OpenGLImageSpecificFactory_Package_References.OpenGLImageSpecificFactory_Access_Array_Access;
   function "=" (Left, Right : OpenGLImageSpecificFactory_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLImageSpecificFactory_Package_References."=";
   function Java_Box (Value : OpenGLImageSpecificFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.opengles.OpenGLImageSpecificFactory_Package_References.Java_Box;
   function Java_Unbox_OpenGLImageSpecificFactory_Access_Array (Value : access Java_Object'Class) return OpenGLImageSpecificFactory_Access_Array_Access renames org.allbinary.image.opengles.OpenGLImageSpecificFactory_Package_References.Java_Unbox_OpenGLImageSpecificFactory_Access_Array;
   subtype OpenGLImageSpecificFactory_Access_Array_Access_Array is org.allbinary.image.opengles.OpenGLImageSpecificFactory_Package_References.OpenGLImageSpecificFactory_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLImageSpecificFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLImageSpecificFactory_Package_References."=";
   subtype OpenGLImageSpecificFactory_Access_Array_Access_Array_Access is org.allbinary.image.opengles.OpenGLImageSpecificFactory_Package_References.OpenGLImageSpecificFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLImageSpecificFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLImageSpecificFactory_Package_References."=";
   function Java_Box (Value : OpenGLImageSpecificFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.opengles.OpenGLImageSpecificFactory_Package_References.Java_Box;
   function Java_Unbox_OpenGLImageSpecificFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return OpenGLImageSpecificFactory_Access_Array_Access_Array_Access renames org.allbinary.image.opengles.OpenGLImageSpecificFactory_Package_References.Java_Unbox_OpenGLImageSpecificFactory_Access_Array_Access_Array;

   type OpenGLImageSpecificFactory is new Java_Object with record
      imageFactory : OpenGLImageFactory_Access;
      updating : Boolean;
   end record;
   instance : OpenGLImageSpecificFactory_Access;

   procedure Initialize (This : in out OpenGLImageSpecificFactory'Class);
   function Create return OpenGLImageSpecificFactory_Access;
   function getInstance return OpenGLImageSpecificFactory_Access;
   procedure setImageFactory (This : in out OpenGLImageSpecificFactory; imageFactory_Param : access OpenGLImageFactory_Package.OpenGLImageFactory'Class);
   function getImageFactory (This : in out OpenGLImageSpecificFactory) return OpenGLImageFactory_Access;

end org.allbinary.image.opengles.OpenGLImageSpecificFactory_Package;


