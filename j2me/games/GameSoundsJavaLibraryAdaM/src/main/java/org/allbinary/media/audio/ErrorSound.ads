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
limited with org.allbinary.media.audio.ErrorSound_Package;
package org.allbinary.media.audio.ErrorSound_Package_References is
   type ErrorSound_Access is access all org.allbinary.media.audio.ErrorSound_Package.ErrorSound'Class;
   type ErrorSound_Access_Array is array (Natural range <>) of ErrorSound_Access;
   type ErrorSound_Access_Array_Access is access all ErrorSound_Access_Array;
   type ErrorSound_Access_Array_Access_Array is array (Natural range <>) of ErrorSound_Access_Array_Access;
   type ErrorSound_Access_Array_Access_Array_Access is access all ErrorSound_Access_Array_Access_Array;
   type ErrorSound_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ErrorSound_Access_Array_Access;
   end record;
   function Java_Box (Value : ErrorSound_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ErrorSound_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ErrorSound_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ErrorSound_Access_Array_Access is (if Value /= null and then Value.all in ErrorSound_Access_Array_Object'Class then ErrorSound_Access_Array_Object'Class (Value.all).Value else null);
   type ErrorSound_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ErrorSound_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ErrorSound_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ErrorSound_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ErrorSound_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ErrorSound_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ErrorSound_Access_Array_Access_Array_Object'Class then ErrorSound_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.audio.ErrorSound_Package_References;

with org.allbinary.media.audio.ErrorSound_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.media.audio.CompositeSound_Package; use org.allbinary.media.audio.CompositeSound_Package;
with org.allbinary.media.audio.Sound_Package; use org.allbinary.media.audio.Sound_Package;

package org.allbinary.media.audio.ErrorSound_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ErrorSound_Access is org.allbinary.media.audio.ErrorSound_Package_References.ErrorSound_Access;
   function "=" (Left, Right : ErrorSound_Access) return Boolean renames org.allbinary.media.audio.ErrorSound_Package_References."=";
   subtype ErrorSound_Access_Array is org.allbinary.media.audio.ErrorSound_Package_References.ErrorSound_Access_Array;
   function "=" (Left, Right : ErrorSound_Access_Array) return Boolean renames org.allbinary.media.audio.ErrorSound_Package_References."=";
   subtype ErrorSound_Access_Array_Access is org.allbinary.media.audio.ErrorSound_Package_References.ErrorSound_Access_Array_Access;
   function "=" (Left, Right : ErrorSound_Access_Array_Access) return Boolean renames org.allbinary.media.audio.ErrorSound_Package_References."=";
   function Java_Box (Value : ErrorSound_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.ErrorSound_Package_References.Java_Box;
   function Java_Unbox_ErrorSound_Access_Array (Value : access Java_Object'Class) return ErrorSound_Access_Array_Access renames org.allbinary.media.audio.ErrorSound_Package_References.Java_Unbox_ErrorSound_Access_Array;
   subtype ErrorSound_Access_Array_Access_Array is org.allbinary.media.audio.ErrorSound_Package_References.ErrorSound_Access_Array_Access_Array;
   function "=" (Left, Right : ErrorSound_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.ErrorSound_Package_References."=";
   subtype ErrorSound_Access_Array_Access_Array_Access is org.allbinary.media.audio.ErrorSound_Package_References.ErrorSound_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ErrorSound_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.ErrorSound_Package_References."=";
   function Java_Box (Value : ErrorSound_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.ErrorSound_Package_References.Java_Box;
   function Java_Unbox_ErrorSound_Access_Array_Access_Array (Value : access Java_Object'Class) return ErrorSound_Access_Array_Access_Array_Access renames org.allbinary.media.audio.ErrorSound_Package_References.Java_Unbox_ErrorSound_Access_Array_Access_Array;

   type ErrorSound is new CompositeSound with null record;
   soundInterface : Sound_Access;

   procedure Initialize (This : in out ErrorSound'Class);
   function Create return ErrorSound_Access;
   function getInstance return Sound_Access;

end org.allbinary.media.audio.ErrorSound_Package;


