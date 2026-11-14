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
limited with org.allbinary.media.audio.SoundsFactoryInterface_Package;
package org.allbinary.media.audio.SoundsFactoryInterface_Package_References is
   type SoundsFactoryInterface_Access is access all org.allbinary.media.audio.SoundsFactoryInterface_Package.SoundsFactoryInterface'Class;
   type SoundsFactoryInterface_Access_Array is array (Natural range <>) of SoundsFactoryInterface_Access;
   type SoundsFactoryInterface_Access_Array_Access is access all SoundsFactoryInterface_Access_Array;
   type SoundsFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of SoundsFactoryInterface_Access_Array_Access;
   type SoundsFactoryInterface_Access_Array_Access_Array_Access is access all SoundsFactoryInterface_Access_Array_Access_Array;
   type SoundsFactoryInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SoundsFactoryInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : SoundsFactoryInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SoundsFactoryInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SoundsFactoryInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SoundsFactoryInterface_Access_Array_Access is (if Value /= null and then Value.all in SoundsFactoryInterface_Access_Array_Object'Class then SoundsFactoryInterface_Access_Array_Object'Class (Value.all).Value else null);
   type SoundsFactoryInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SoundsFactoryInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SoundsFactoryInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SoundsFactoryInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SoundsFactoryInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SoundsFactoryInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SoundsFactoryInterface_Access_Array_Access_Array_Object'Class then SoundsFactoryInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.audio.SoundsFactoryInterface_Package_References;

with org.allbinary.media.audio.SoundsFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.audio.Sound_Package;
with org.allbinary.media.audio.Sound_Package_References;

package org.allbinary.media.audio.SoundsFactoryInterface_Package is

   package Reference_Types is
   subtype Sound_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access;
   use type Sound_Access;
   subtype Sound_Access_Array is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array;
   use type Sound_Access_Array;
   subtype Sound_Access_Array_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access;
   use type Sound_Access_Array_Access;
   subtype Sound_Access_Array_Access_Array is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access_Array;
   use type Sound_Access_Array_Access_Array;
   subtype Sound_Access_Array_Access_Array_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access_Array_Access;
   use type Sound_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type SoundsFactoryInterface is interface;
   subtype SoundsFactoryInterface_Access is org.allbinary.media.audio.SoundsFactoryInterface_Package_References.SoundsFactoryInterface_Access;
   function "=" (Left, Right : SoundsFactoryInterface_Access) return Boolean renames org.allbinary.media.audio.SoundsFactoryInterface_Package_References."=";
   subtype SoundsFactoryInterface_Access_Array is org.allbinary.media.audio.SoundsFactoryInterface_Package_References.SoundsFactoryInterface_Access_Array;
   function "=" (Left, Right : SoundsFactoryInterface_Access_Array) return Boolean renames org.allbinary.media.audio.SoundsFactoryInterface_Package_References."=";
   subtype SoundsFactoryInterface_Access_Array_Access is org.allbinary.media.audio.SoundsFactoryInterface_Package_References.SoundsFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : SoundsFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.media.audio.SoundsFactoryInterface_Package_References."=";
   function Java_Box (Value : SoundsFactoryInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.SoundsFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_SoundsFactoryInterface_Access_Array (Value : access Java_Object'Class) return SoundsFactoryInterface_Access_Array_Access renames org.allbinary.media.audio.SoundsFactoryInterface_Package_References.Java_Unbox_SoundsFactoryInterface_Access_Array;
   subtype SoundsFactoryInterface_Access_Array_Access_Array is org.allbinary.media.audio.SoundsFactoryInterface_Package_References.SoundsFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : SoundsFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.SoundsFactoryInterface_Package_References."=";
   subtype SoundsFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.media.audio.SoundsFactoryInterface_Package_References.SoundsFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SoundsFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.SoundsFactoryInterface_Package_References."=";
   function Java_Box (Value : SoundsFactoryInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.SoundsFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_SoundsFactoryInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return SoundsFactoryInterface_Access_Array_Access_Array_Access renames org.allbinary.media.audio.SoundsFactoryInterface_Package_References.Java_Unbox_SoundsFactoryInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_SoundsFactoryInterface (Value : SoundsFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure init (This : in out SoundsFactoryInterface) is abstract;
   function getSoundInterfaceArray (This : in out SoundsFactoryInterface) return Sound_Access_Array_Access is abstract;
   procedure setInitialized (This : in out SoundsFactoryInterface; initialized : Boolean) is abstract;
   function isInitialized (This : in out SoundsFactoryInterface) return Boolean is abstract;

end org.allbinary.media.audio.SoundsFactoryInterface_Package;


