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
limited with org.allbinary.graphics.ScreenCapture_Package;
package org.allbinary.graphics.ScreenCapture_Package_References is
   type ScreenCapture_Access is access all org.allbinary.graphics.ScreenCapture_Package.ScreenCapture'Class;
   type ScreenCapture_Access_Array is array (Natural range <>) of ScreenCapture_Access;
   type ScreenCapture_Access_Array_Access is access all ScreenCapture_Access_Array;
   type ScreenCapture_Access_Array_Access_Array is array (Natural range <>) of ScreenCapture_Access_Array_Access;
   type ScreenCapture_Access_Array_Access_Array_Access is access all ScreenCapture_Access_Array_Access_Array;
   type ScreenCapture_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ScreenCapture_Access_Array_Access;
   end record;
   function Java_Box (Value : ScreenCapture_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ScreenCapture_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ScreenCapture_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ScreenCapture_Access_Array_Access is (if Value /= null and then Value.all in ScreenCapture_Access_Array_Object'Class then ScreenCapture_Access_Array_Object'Class (Value.all).Value else null);
   type ScreenCapture_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ScreenCapture_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ScreenCapture_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ScreenCapture_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ScreenCapture_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ScreenCapture_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ScreenCapture_Access_Array_Access_Array_Object'Class then ScreenCapture_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.ScreenCapture_Package_References;

with org.allbinary.graphics.ScreenCapture_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.ScreenCapture_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ScreenCapture_Access is org.allbinary.graphics.ScreenCapture_Package_References.ScreenCapture_Access;
   function "=" (Left, Right : ScreenCapture_Access) return Boolean renames org.allbinary.graphics.ScreenCapture_Package_References."=";
   subtype ScreenCapture_Access_Array is org.allbinary.graphics.ScreenCapture_Package_References.ScreenCapture_Access_Array;
   function "=" (Left, Right : ScreenCapture_Access_Array) return Boolean renames org.allbinary.graphics.ScreenCapture_Package_References."=";
   subtype ScreenCapture_Access_Array_Access is org.allbinary.graphics.ScreenCapture_Package_References.ScreenCapture_Access_Array_Access;
   function "=" (Left, Right : ScreenCapture_Access_Array_Access) return Boolean renames org.allbinary.graphics.ScreenCapture_Package_References."=";
   function Java_Box (Value : ScreenCapture_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.ScreenCapture_Package_References.Java_Box;
   function Java_Unbox_ScreenCapture_Access_Array (Value : access Java_Object'Class) return ScreenCapture_Access_Array_Access renames org.allbinary.graphics.ScreenCapture_Package_References.Java_Unbox_ScreenCapture_Access_Array;
   subtype ScreenCapture_Access_Array_Access_Array is org.allbinary.graphics.ScreenCapture_Package_References.ScreenCapture_Access_Array_Access_Array;
   function "=" (Left, Right : ScreenCapture_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.ScreenCapture_Package_References."=";
   subtype ScreenCapture_Access_Array_Access_Array_Access is org.allbinary.graphics.ScreenCapture_Package_References.ScreenCapture_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScreenCapture_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.ScreenCapture_Package_References."=";
   function Java_Box (Value : ScreenCapture_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.ScreenCapture_Package_References.Java_Box;
   function Java_Unbox_ScreenCapture_Access_Array_Access_Array (Value : access Java_Object'Class) return ScreenCapture_Access_Array_Access_Array_Access renames org.allbinary.graphics.ScreenCapture_Package_References.Java_Unbox_ScreenCapture_Access_Array_Access_Array;

   type ScreenCapture is new Java_Object with null record;

   procedure Initialize (This : in out ScreenCapture'Class);
   function Create return ScreenCapture_Access;
   procedure saveFrame (This : in out ScreenCapture);
   procedure startRecording (This : in out ScreenCapture);
   procedure endRecording (This : in out ScreenCapture);

end org.allbinary.graphics.ScreenCapture_Package;


