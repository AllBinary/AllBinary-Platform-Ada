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
limited with org.allbinary.media.audio.CompositeSound_Package;
package org.allbinary.media.audio.CompositeSound_Package_References is
   type CompositeSound_Access is access all org.allbinary.media.audio.CompositeSound_Package.CompositeSound'Class;
   type CompositeSound_Access_Array is array (Natural range <>) of CompositeSound_Access;
   type CompositeSound_Access_Array_Access is access all CompositeSound_Access_Array;
   type CompositeSound_Access_Array_Access_Array is array (Natural range <>) of CompositeSound_Access_Array_Access;
   type CompositeSound_Access_Array_Access_Array_Access is access all CompositeSound_Access_Array_Access_Array;
   type CompositeSound_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CompositeSound_Access_Array_Access;
   end record;
   function Java_Box (Value : CompositeSound_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CompositeSound_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CompositeSound_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CompositeSound_Access_Array_Access is (if Value /= null and then Value.all in CompositeSound_Access_Array_Object'Class then CompositeSound_Access_Array_Object'Class (Value.all).Value else null);
   type CompositeSound_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CompositeSound_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CompositeSound_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CompositeSound_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CompositeSound_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CompositeSound_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CompositeSound_Access_Array_Access_Array_Object'Class then CompositeSound_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.audio.CompositeSound_Package_References;

with org.allbinary.media.audio.CompositeSound_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.media.audio.Sound_Package; use org.allbinary.media.audio.Sound_Package;

package org.allbinary.media.audio.CompositeSound_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype CompositeSound_Access is org.allbinary.media.audio.CompositeSound_Package_References.CompositeSound_Access;
   function "=" (Left, Right : CompositeSound_Access) return Boolean renames org.allbinary.media.audio.CompositeSound_Package_References."=";
   subtype CompositeSound_Access_Array is org.allbinary.media.audio.CompositeSound_Package_References.CompositeSound_Access_Array;
   function "=" (Left, Right : CompositeSound_Access_Array) return Boolean renames org.allbinary.media.audio.CompositeSound_Package_References."=";
   subtype CompositeSound_Access_Array_Access is org.allbinary.media.audio.CompositeSound_Package_References.CompositeSound_Access_Array_Access;
   function "=" (Left, Right : CompositeSound_Access_Array_Access) return Boolean renames org.allbinary.media.audio.CompositeSound_Package_References."=";
   function Java_Box (Value : CompositeSound_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.CompositeSound_Package_References.Java_Box;
   function Java_Unbox_CompositeSound_Access_Array (Value : access Java_Object'Class) return CompositeSound_Access_Array_Access renames org.allbinary.media.audio.CompositeSound_Package_References.Java_Unbox_CompositeSound_Access_Array;
   subtype CompositeSound_Access_Array_Access_Array is org.allbinary.media.audio.CompositeSound_Package_References.CompositeSound_Access_Array_Access_Array;
   function "=" (Left, Right : CompositeSound_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.CompositeSound_Package_References."=";
   subtype CompositeSound_Access_Array_Access_Array_Access is org.allbinary.media.audio.CompositeSound_Package_References.CompositeSound_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CompositeSound_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.CompositeSound_Package_References."=";
   function Java_Box (Value : CompositeSound_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.CompositeSound_Package_References.Java_Box;
   function Java_Unbox_CompositeSound_Access_Array_Access_Array (Value : access Java_Object'Class) return CompositeSound_Access_Array_Access_Array_Access renames org.allbinary.media.audio.CompositeSound_Package_References.Java_Unbox_CompositeSound_Access_Array_Access_Array;

   type CompositeSound is new Sound with null record;

   procedure Initialize (This : in out CompositeSound'Class; resource : Unbounded_String);
   function Create (resource : Unbounded_String) return CompositeSound_Access;
   procedure init (This : in out CompositeSound);

end org.allbinary.media.audio.CompositeSound_Package;


