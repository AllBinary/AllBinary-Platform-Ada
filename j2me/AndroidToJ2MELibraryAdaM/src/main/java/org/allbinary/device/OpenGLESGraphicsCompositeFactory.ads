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

with AllBinary_Java;
limited with org.allbinary.device.OpenGLESGraphicsCompositeFactory_Package;
package org.allbinary.device.OpenGLESGraphicsCompositeFactory_Package_References is
   type OpenGLESGraphicsCompositeFactory_Access is access all org.allbinary.device.OpenGLESGraphicsCompositeFactory_Package.OpenGLESGraphicsCompositeFactory'Class;
   type OpenGLESGraphicsCompositeFactory_Access_Array is array (Natural range <>) of OpenGLESGraphicsCompositeFactory_Access;
   type OpenGLESGraphicsCompositeFactory_Access_Array_Access is access all OpenGLESGraphicsCompositeFactory_Access_Array;
   type OpenGLESGraphicsCompositeFactory_Access_Array_Access_Array is array (Natural range <>) of OpenGLESGraphicsCompositeFactory_Access_Array_Access;
   type OpenGLESGraphicsCompositeFactory_Access_Array_Access_Array_Access is access all OpenGLESGraphicsCompositeFactory_Access_Array_Access_Array;
   type OpenGLESGraphicsCompositeFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLESGraphicsCompositeFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLESGraphicsCompositeFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLESGraphicsCompositeFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLESGraphicsCompositeFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLESGraphicsCompositeFactory_Access_Array_Access is (if Value /= null and then Value.all in OpenGLESGraphicsCompositeFactory_Access_Array_Object'Class then OpenGLESGraphicsCompositeFactory_Access_Array_Object'Class (Value.all).Value else null);
   type OpenGLESGraphicsCompositeFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLESGraphicsCompositeFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLESGraphicsCompositeFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLESGraphicsCompositeFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLESGraphicsCompositeFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLESGraphicsCompositeFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OpenGLESGraphicsCompositeFactory_Access_Array_Access_Array_Object'Class then OpenGLESGraphicsCompositeFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.device.OpenGLESGraphicsCompositeFactory_Package_References;

with org.allbinary.device.OpenGLESGraphicsCompositeFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.device.OpenGLESGraphicsFactory_Package;
with org.allbinary.device.OpenGLESGraphicsFactory_Package_References;

package org.allbinary.device.OpenGLESGraphicsCompositeFactory_Package is

   package Reference_Types is
   subtype OpenGLESGraphicsFactory_Access is org.allbinary.device.OpenGLESGraphicsFactory_Package_References.OpenGLESGraphicsFactory_Access;
   use type OpenGLESGraphicsFactory_Access;
   subtype OpenGLESGraphicsFactory_Access_Array is org.allbinary.device.OpenGLESGraphicsFactory_Package_References.OpenGLESGraphicsFactory_Access_Array;
   use type OpenGLESGraphicsFactory_Access_Array;
   subtype OpenGLESGraphicsFactory_Access_Array_Access is org.allbinary.device.OpenGLESGraphicsFactory_Package_References.OpenGLESGraphicsFactory_Access_Array_Access;
   use type OpenGLESGraphicsFactory_Access_Array_Access;
   subtype OpenGLESGraphicsFactory_Access_Array_Access_Array is org.allbinary.device.OpenGLESGraphicsFactory_Package_References.OpenGLESGraphicsFactory_Access_Array_Access_Array;
   use type OpenGLESGraphicsFactory_Access_Array_Access_Array;
   subtype OpenGLESGraphicsFactory_Access_Array_Access_Array_Access is org.allbinary.device.OpenGLESGraphicsFactory_Package_References.OpenGLESGraphicsFactory_Access_Array_Access_Array_Access;
   use type OpenGLESGraphicsFactory_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLESGraphicsCompositeFactory_Access is org.allbinary.device.OpenGLESGraphicsCompositeFactory_Package_References.OpenGLESGraphicsCompositeFactory_Access;
   function "=" (Left, Right : OpenGLESGraphicsCompositeFactory_Access) return Boolean renames org.allbinary.device.OpenGLESGraphicsCompositeFactory_Package_References."=";
   subtype OpenGLESGraphicsCompositeFactory_Access_Array is org.allbinary.device.OpenGLESGraphicsCompositeFactory_Package_References.OpenGLESGraphicsCompositeFactory_Access_Array;
   function "=" (Left, Right : OpenGLESGraphicsCompositeFactory_Access_Array) return Boolean renames org.allbinary.device.OpenGLESGraphicsCompositeFactory_Package_References."=";
   subtype OpenGLESGraphicsCompositeFactory_Access_Array_Access is org.allbinary.device.OpenGLESGraphicsCompositeFactory_Package_References.OpenGLESGraphicsCompositeFactory_Access_Array_Access;
   function "=" (Left, Right : OpenGLESGraphicsCompositeFactory_Access_Array_Access) return Boolean renames org.allbinary.device.OpenGLESGraphicsCompositeFactory_Package_References."=";
   function Java_Box (Value : OpenGLESGraphicsCompositeFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.device.OpenGLESGraphicsCompositeFactory_Package_References.Java_Box;
   function Java_Unbox_OpenGLESGraphicsCompositeFactory_Access_Array (Value : access Java_Object'Class) return OpenGLESGraphicsCompositeFactory_Access_Array_Access renames org.allbinary.device.OpenGLESGraphicsCompositeFactory_Package_References.Java_Unbox_OpenGLESGraphicsCompositeFactory_Access_Array;
   subtype OpenGLESGraphicsCompositeFactory_Access_Array_Access_Array is org.allbinary.device.OpenGLESGraphicsCompositeFactory_Package_References.OpenGLESGraphicsCompositeFactory_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLESGraphicsCompositeFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.device.OpenGLESGraphicsCompositeFactory_Package_References."=";
   subtype OpenGLESGraphicsCompositeFactory_Access_Array_Access_Array_Access is org.allbinary.device.OpenGLESGraphicsCompositeFactory_Package_References.OpenGLESGraphicsCompositeFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLESGraphicsCompositeFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.device.OpenGLESGraphicsCompositeFactory_Package_References."=";
   function Java_Box (Value : OpenGLESGraphicsCompositeFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.device.OpenGLESGraphicsCompositeFactory_Package_References.Java_Box;
   function Java_Unbox_OpenGLESGraphicsCompositeFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return OpenGLESGraphicsCompositeFactory_Access_Array_Access_Array_Access renames org.allbinary.device.OpenGLESGraphicsCompositeFactory_Package_References.Java_Unbox_OpenGLESGraphicsCompositeFactory_Access_Array_Access_Array;

   type OpenGLESGraphicsCompositeFactory is new Java_Object with record
      openGLESGraphicsFactory : OpenGLESGraphicsFactory_Access;
   end record;
   instance : OpenGLESGraphicsCompositeFactory_Access;

   procedure Initialize (This : in out OpenGLESGraphicsCompositeFactory'Class);
   function Create return OpenGLESGraphicsCompositeFactory_Access;
   function getInstance return OpenGLESGraphicsCompositeFactory_Access;
   procedure set (This : in out OpenGLESGraphicsCompositeFactory; openGLESGraphicsFactory_Param : access OpenGLESGraphicsFactory_Package.OpenGLESGraphicsFactory'Class);
   function get (This : in out OpenGLESGraphicsCompositeFactory) return OpenGLESGraphicsFactory_Access;

end org.allbinary.device.OpenGLESGraphicsCompositeFactory_Package;


