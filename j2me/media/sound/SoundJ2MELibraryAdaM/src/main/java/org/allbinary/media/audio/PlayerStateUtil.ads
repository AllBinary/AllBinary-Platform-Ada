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
limited with org.allbinary.media.audio.PlayerStateUtil_Package;
package org.allbinary.media.audio.PlayerStateUtil_Package_References is
   type PlayerStateUtil_Access is access all org.allbinary.media.audio.PlayerStateUtil_Package.PlayerStateUtil'Class;
   type PlayerStateUtil_Access_Array is array (Natural range <>) of PlayerStateUtil_Access;
   type PlayerStateUtil_Access_Array_Access is access all PlayerStateUtil_Access_Array;
   type PlayerStateUtil_Access_Array_Access_Array is array (Natural range <>) of PlayerStateUtil_Access_Array_Access;
   type PlayerStateUtil_Access_Array_Access_Array_Access is access all PlayerStateUtil_Access_Array_Access_Array;
   type PlayerStateUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlayerStateUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : PlayerStateUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlayerStateUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlayerStateUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlayerStateUtil_Access_Array_Access is (if Value /= null and then Value.all in PlayerStateUtil_Access_Array_Object'Class then PlayerStateUtil_Access_Array_Object'Class (Value.all).Value else null);
   type PlayerStateUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlayerStateUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PlayerStateUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlayerStateUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlayerStateUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlayerStateUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PlayerStateUtil_Access_Array_Access_Array_Object'Class then PlayerStateUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.audio.PlayerStateUtil_Package_References;

with org.allbinary.media.audio.PlayerStateUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package org.allbinary.media.audio.PlayerStateUtil_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PlayerStateUtil_Access is org.allbinary.media.audio.PlayerStateUtil_Package_References.PlayerStateUtil_Access;
   function "=" (Left, Right : PlayerStateUtil_Access) return Boolean renames org.allbinary.media.audio.PlayerStateUtil_Package_References."=";
   subtype PlayerStateUtil_Access_Array is org.allbinary.media.audio.PlayerStateUtil_Package_References.PlayerStateUtil_Access_Array;
   function "=" (Left, Right : PlayerStateUtil_Access_Array) return Boolean renames org.allbinary.media.audio.PlayerStateUtil_Package_References."=";
   subtype PlayerStateUtil_Access_Array_Access is org.allbinary.media.audio.PlayerStateUtil_Package_References.PlayerStateUtil_Access_Array_Access;
   function "=" (Left, Right : PlayerStateUtil_Access_Array_Access) return Boolean renames org.allbinary.media.audio.PlayerStateUtil_Package_References."=";
   function Java_Box (Value : PlayerStateUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.PlayerStateUtil_Package_References.Java_Box;
   function Java_Unbox_PlayerStateUtil_Access_Array (Value : access Java_Object'Class) return PlayerStateUtil_Access_Array_Access renames org.allbinary.media.audio.PlayerStateUtil_Package_References.Java_Unbox_PlayerStateUtil_Access_Array;
   subtype PlayerStateUtil_Access_Array_Access_Array is org.allbinary.media.audio.PlayerStateUtil_Package_References.PlayerStateUtil_Access_Array_Access_Array;
   function "=" (Left, Right : PlayerStateUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.PlayerStateUtil_Package_References."=";
   subtype PlayerStateUtil_Access_Array_Access_Array_Access is org.allbinary.media.audio.PlayerStateUtil_Package_References.PlayerStateUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlayerStateUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.PlayerStateUtil_Package_References."=";
   function Java_Box (Value : PlayerStateUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.PlayerStateUtil_Package_References.Java_Box;
   function Java_Unbox_PlayerStateUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return PlayerStateUtil_Access_Array_Access_Array_Access renames org.allbinary.media.audio.PlayerStateUtil_Package_References.Java_Unbox_PlayerStateUtil_Access_Array_Access_Array;

   type PlayerStateUtil is new Java_Object with record
      commonStrings : CommonStrings_Access;
      UNREALIZED : Unbounded_String;
      REALIZED : Unbounded_String;
      PREFETCHED : Unbounded_String;
      STARTED : Unbounded_String;
      CLOSED : Unbounded_String;
   end record;
   instance : PlayerStateUtil_Access;

   procedure Initialize (This : in out PlayerStateUtil'Class);
   function Create return PlayerStateUtil_Access;
   function getInstance return PlayerStateUtil_Access;
   function convert (This : in out PlayerStateUtil; state : Integer) return Unbounded_String;
   procedure convert (This : in out PlayerStateUtil; state : Integer);

end org.allbinary.media.audio.PlayerStateUtil_Package;


