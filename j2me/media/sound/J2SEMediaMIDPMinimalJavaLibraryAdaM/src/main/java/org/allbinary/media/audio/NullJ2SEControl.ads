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

limited with org.allbinary.media.audio.NullJ2SEControl_Package;
package org.allbinary.media.audio.NullJ2SEControl_Package_References is
   type NullJ2SEControl_Access is access all org.allbinary.media.audio.NullJ2SEControl_Package.NullJ2SEControl'Class;
   type NullJ2SEControl_Access_Array is array (Natural range <>) of NullJ2SEControl_Access;
   type NullJ2SEControl_Access_Array_Access is access all NullJ2SEControl_Access_Array;
   type NullJ2SEControl_Access_Array_Access_Array is array (Natural range <>) of NullJ2SEControl_Access_Array_Access;
   type NullJ2SEControl_Access_Array_Access_Array_Access is access all NullJ2SEControl_Access_Array_Access_Array;
end org.allbinary.media.audio.NullJ2SEControl_Package_References;

with org.allbinary.media.audio.NullJ2SEControl_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.sound.sampled.Control_Package; use javax.sound.sampled.Control_Package;
limited with org.allbinary.media.audio.Type_Package;
with org.allbinary.media.audio.Type_Package_References;

package org.allbinary.media.audio.NullJ2SEControl_Package is

   package Reference_Types is
   subtype Type_Access is org.allbinary.media.audio.Type_Package_References.Type_Access;
   use type Type_Access;
   subtype Type_Access_Array is org.allbinary.media.audio.Type_Package_References.Type_Access_Array;
   use type Type_Access_Array;
   subtype Type_Access_Array_Access is org.allbinary.media.audio.Type_Package_References.Type_Access_Array_Access;
   use type Type_Access_Array_Access;
   subtype Type_Access_Array_Access_Array is org.allbinary.media.audio.Type_Package_References.Type_Access_Array_Access_Array;
   use type Type_Access_Array_Access_Array;
   subtype Type_Access_Array_Access_Array_Access is org.allbinary.media.audio.Type_Package_References.Type_Access_Array_Access_Array_Access;
   use type Type_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NullJ2SEControl_Access is org.allbinary.media.audio.NullJ2SEControl_Package_References.NullJ2SEControl_Access;
   function "=" (Left, Right : NullJ2SEControl_Access) return Boolean renames org.allbinary.media.audio.NullJ2SEControl_Package_References."=";
   subtype NullJ2SEControl_Access_Array is org.allbinary.media.audio.NullJ2SEControl_Package_References.NullJ2SEControl_Access_Array;
   function "=" (Left, Right : NullJ2SEControl_Access_Array) return Boolean renames org.allbinary.media.audio.NullJ2SEControl_Package_References."=";
   subtype NullJ2SEControl_Access_Array_Access is org.allbinary.media.audio.NullJ2SEControl_Package_References.NullJ2SEControl_Access_Array_Access;
   function "=" (Left, Right : NullJ2SEControl_Access_Array_Access) return Boolean renames org.allbinary.media.audio.NullJ2SEControl_Package_References."=";
   subtype NullJ2SEControl_Access_Array_Access_Array is org.allbinary.media.audio.NullJ2SEControl_Package_References.NullJ2SEControl_Access_Array_Access_Array;
   function "=" (Left, Right : NullJ2SEControl_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.NullJ2SEControl_Package_References."=";
   subtype NullJ2SEControl_Access_Array_Access_Array_Access is org.allbinary.media.audio.NullJ2SEControl_Package_References.NullJ2SEControl_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullJ2SEControl_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.NullJ2SEControl_Package_References."=";

   type NullJ2SEControl is new Java_Object with null record;

   procedure Initialize (This : in out NullJ2SEControl'Class; type_Id_Param : access Type_Package.Type'Class);
   function Create (type_Id_Param : access Type_Package.Type'Class) return NullJ2SEControl_Access;

end org.allbinary.media.audio.NullJ2SEControl_Package;


