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
limited with org.allbinary.media.audio.SelectSound_Package;
package org.allbinary.media.audio.SelectSound_Package_References is
   type SelectSound_Access is access all org.allbinary.media.audio.SelectSound_Package.SelectSound'Class;
   type SelectSound_Access_Array is array (Natural range <>) of SelectSound_Access;
   type SelectSound_Access_Array_Access is access all SelectSound_Access_Array;
   type SelectSound_Access_Array_Access_Array is array (Natural range <>) of SelectSound_Access_Array_Access;
   type SelectSound_Access_Array_Access_Array_Access is access all SelectSound_Access_Array_Access_Array;
   type SelectSound_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SelectSound_Access_Array_Access;
   end record;
   function Java_Box (Value : SelectSound_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SelectSound_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SelectSound_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SelectSound_Access_Array_Access is (if Value /= null and then Value.all in SelectSound_Access_Array_Object'Class then SelectSound_Access_Array_Object'Class (Value.all).Value else null);
   type SelectSound_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SelectSound_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SelectSound_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SelectSound_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SelectSound_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SelectSound_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SelectSound_Access_Array_Access_Array_Object'Class then SelectSound_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.audio.SelectSound_Package_References;

with org.allbinary.media.audio.SelectSound_Package_References;
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

package org.allbinary.media.audio.SelectSound_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype SelectSound_Access is org.allbinary.media.audio.SelectSound_Package_References.SelectSound_Access;
   function "=" (Left, Right : SelectSound_Access) return Boolean renames org.allbinary.media.audio.SelectSound_Package_References."=";
   subtype SelectSound_Access_Array is org.allbinary.media.audio.SelectSound_Package_References.SelectSound_Access_Array;
   function "=" (Left, Right : SelectSound_Access_Array) return Boolean renames org.allbinary.media.audio.SelectSound_Package_References."=";
   subtype SelectSound_Access_Array_Access is org.allbinary.media.audio.SelectSound_Package_References.SelectSound_Access_Array_Access;
   function "=" (Left, Right : SelectSound_Access_Array_Access) return Boolean renames org.allbinary.media.audio.SelectSound_Package_References."=";
   function Java_Box (Value : SelectSound_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.SelectSound_Package_References.Java_Box;
   function Java_Unbox_SelectSound_Access_Array (Value : access Java_Object'Class) return SelectSound_Access_Array_Access renames org.allbinary.media.audio.SelectSound_Package_References.Java_Unbox_SelectSound_Access_Array;
   subtype SelectSound_Access_Array_Access_Array is org.allbinary.media.audio.SelectSound_Package_References.SelectSound_Access_Array_Access_Array;
   function "=" (Left, Right : SelectSound_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.SelectSound_Package_References."=";
   subtype SelectSound_Access_Array_Access_Array_Access is org.allbinary.media.audio.SelectSound_Package_References.SelectSound_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SelectSound_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.SelectSound_Package_References."=";
   function Java_Box (Value : SelectSound_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.SelectSound_Package_References.Java_Box;
   function Java_Unbox_SelectSound_Access_Array_Access_Array (Value : access Java_Object'Class) return SelectSound_Access_Array_Access_Array_Access renames org.allbinary.media.audio.SelectSound_Package_References.Java_Unbox_SelectSound_Access_Array_Access_Array;

   type SelectSound is new CompositeSound with null record;
   soundInterface : Sound_Access;

   procedure Initialize (This : in out SelectSound'Class);
   function Create return SelectSound_Access;
   function getInstance return Sound_Access;

end org.allbinary.media.audio.SelectSound_Package;


