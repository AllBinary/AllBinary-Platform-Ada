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
limited with org.allbinary.media.audio.NullControl_Package;
package org.allbinary.media.audio.NullControl_Package_References is
   type NullControl_Access is access all org.allbinary.media.audio.NullControl_Package.NullControl'Class;
   type NullControl_Access_Array is array (Natural range <>) of NullControl_Access;
   type NullControl_Access_Array_Access is access all NullControl_Access_Array;
   type NullControl_Access_Array_Access_Array is array (Natural range <>) of NullControl_Access_Array_Access;
   type NullControl_Access_Array_Access_Array_Access is access all NullControl_Access_Array_Access_Array;
   type NullControl_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullControl_Access_Array_Access;
   end record;
   function Java_Box (Value : NullControl_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullControl_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullControl_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullControl_Access_Array_Access is (if Value /= null and then Value.all in NullControl_Access_Array_Object'Class then NullControl_Access_Array_Object'Class (Value.all).Value else null);
   type NullControl_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullControl_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NullControl_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullControl_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullControl_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullControl_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NullControl_Access_Array_Access_Array_Object'Class then NullControl_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.audio.NullControl_Package_References;

with org.allbinary.media.audio.NullControl_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.media.Control_Package; use javax.microedition.media.Control_Package;

package org.allbinary.media.audio.NullControl_Package is

   package Control_Package renames Standard.javax.microedition.media.Control_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NullControl_Access is org.allbinary.media.audio.NullControl_Package_References.NullControl_Access;
   function "=" (Left, Right : NullControl_Access) return Boolean renames org.allbinary.media.audio.NullControl_Package_References."=";
   subtype NullControl_Access_Array is org.allbinary.media.audio.NullControl_Package_References.NullControl_Access_Array;
   function "=" (Left, Right : NullControl_Access_Array) return Boolean renames org.allbinary.media.audio.NullControl_Package_References."=";
   subtype NullControl_Access_Array_Access is org.allbinary.media.audio.NullControl_Package_References.NullControl_Access_Array_Access;
   function "=" (Left, Right : NullControl_Access_Array_Access) return Boolean renames org.allbinary.media.audio.NullControl_Package_References."=";
   function Java_Box (Value : NullControl_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.NullControl_Package_References.Java_Box;
   function Java_Unbox_NullControl_Access_Array (Value : access Java_Object'Class) return NullControl_Access_Array_Access renames org.allbinary.media.audio.NullControl_Package_References.Java_Unbox_NullControl_Access_Array;
   subtype NullControl_Access_Array_Access_Array is org.allbinary.media.audio.NullControl_Package_References.NullControl_Access_Array_Access_Array;
   function "=" (Left, Right : NullControl_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.NullControl_Package_References."=";
   subtype NullControl_Access_Array_Access_Array_Access is org.allbinary.media.audio.NullControl_Package_References.NullControl_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullControl_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.NullControl_Package_References."=";
   function Java_Box (Value : NullControl_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.NullControl_Package_References.Java_Box;
   function Java_Unbox_NullControl_Access_Array_Access_Array (Value : access Java_Object'Class) return NullControl_Access_Array_Access_Array_Access renames org.allbinary.media.audio.NullControl_Package_References.Java_Unbox_NullControl_Access_Array_Access_Array;

   type NullControl is new Java_Object and Control with null record;

   procedure Initialize (This : in out NullControl'Class);
   function Create return NullControl_Access;

end org.allbinary.media.audio.NullControl_Package;


