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
limited with org.allbinary.graphics.ScreenCaptureFactory_Package;
package org.allbinary.graphics.ScreenCaptureFactory_Package_References is
   type ScreenCaptureFactory_Access is access all org.allbinary.graphics.ScreenCaptureFactory_Package.ScreenCaptureFactory'Class;
   type ScreenCaptureFactory_Access_Array is array (Natural range <>) of ScreenCaptureFactory_Access;
   type ScreenCaptureFactory_Access_Array_Access is access all ScreenCaptureFactory_Access_Array;
   type ScreenCaptureFactory_Access_Array_Access_Array is array (Natural range <>) of ScreenCaptureFactory_Access_Array_Access;
   type ScreenCaptureFactory_Access_Array_Access_Array_Access is access all ScreenCaptureFactory_Access_Array_Access_Array;
   type ScreenCaptureFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ScreenCaptureFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : ScreenCaptureFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ScreenCaptureFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ScreenCaptureFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ScreenCaptureFactory_Access_Array_Access is (if Value /= null and then Value.all in ScreenCaptureFactory_Access_Array_Object'Class then ScreenCaptureFactory_Access_Array_Object'Class (Value.all).Value else null);
   type ScreenCaptureFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ScreenCaptureFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ScreenCaptureFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ScreenCaptureFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ScreenCaptureFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ScreenCaptureFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ScreenCaptureFactory_Access_Array_Access_Array_Object'Class then ScreenCaptureFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.ScreenCaptureFactory_Package_References;

with org.allbinary.graphics.ScreenCaptureFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.ScreenCapture_Package;
with org.allbinary.graphics.ScreenCapture_Package_References;

package org.allbinary.graphics.ScreenCaptureFactory_Package is

   package Reference_Types is
   subtype ScreenCapture_Access is org.allbinary.graphics.ScreenCapture_Package_References.ScreenCapture_Access;
   use type ScreenCapture_Access;
   subtype ScreenCapture_Access_Array is org.allbinary.graphics.ScreenCapture_Package_References.ScreenCapture_Access_Array;
   use type ScreenCapture_Access_Array;
   subtype ScreenCapture_Access_Array_Access is org.allbinary.graphics.ScreenCapture_Package_References.ScreenCapture_Access_Array_Access;
   use type ScreenCapture_Access_Array_Access;
   subtype ScreenCapture_Access_Array_Access_Array is org.allbinary.graphics.ScreenCapture_Package_References.ScreenCapture_Access_Array_Access_Array;
   use type ScreenCapture_Access_Array_Access_Array;
   subtype ScreenCapture_Access_Array_Access_Array_Access is org.allbinary.graphics.ScreenCapture_Package_References.ScreenCapture_Access_Array_Access_Array_Access;
   use type ScreenCapture_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ScreenCaptureFactory_Access is org.allbinary.graphics.ScreenCaptureFactory_Package_References.ScreenCaptureFactory_Access;
   function "=" (Left, Right : ScreenCaptureFactory_Access) return Boolean renames org.allbinary.graphics.ScreenCaptureFactory_Package_References."=";
   subtype ScreenCaptureFactory_Access_Array is org.allbinary.graphics.ScreenCaptureFactory_Package_References.ScreenCaptureFactory_Access_Array;
   function "=" (Left, Right : ScreenCaptureFactory_Access_Array) return Boolean renames org.allbinary.graphics.ScreenCaptureFactory_Package_References."=";
   subtype ScreenCaptureFactory_Access_Array_Access is org.allbinary.graphics.ScreenCaptureFactory_Package_References.ScreenCaptureFactory_Access_Array_Access;
   function "=" (Left, Right : ScreenCaptureFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.ScreenCaptureFactory_Package_References."=";
   function Java_Box (Value : ScreenCaptureFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.ScreenCaptureFactory_Package_References.Java_Box;
   function Java_Unbox_ScreenCaptureFactory_Access_Array (Value : access Java_Object'Class) return ScreenCaptureFactory_Access_Array_Access renames org.allbinary.graphics.ScreenCaptureFactory_Package_References.Java_Unbox_ScreenCaptureFactory_Access_Array;
   subtype ScreenCaptureFactory_Access_Array_Access_Array is org.allbinary.graphics.ScreenCaptureFactory_Package_References.ScreenCaptureFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ScreenCaptureFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.ScreenCaptureFactory_Package_References."=";
   subtype ScreenCaptureFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.ScreenCaptureFactory_Package_References.ScreenCaptureFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScreenCaptureFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.ScreenCaptureFactory_Package_References."=";
   function Java_Box (Value : ScreenCaptureFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.ScreenCaptureFactory_Package_References.Java_Box;
   function Java_Unbox_ScreenCaptureFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return ScreenCaptureFactory_Access_Array_Access_Array_Access renames org.allbinary.graphics.ScreenCaptureFactory_Package_References.Java_Unbox_ScreenCaptureFactory_Access_Array_Access_Array;

   type ScreenCaptureFactory is new Java_Object with null record;
   instance : ScreenCapture_Access;

   procedure Initialize (This : in out ScreenCaptureFactory'Class);
   function Create return ScreenCaptureFactory_Access;
   function getInstance return ScreenCapture_Access;

end org.allbinary.graphics.ScreenCaptureFactory_Package;


