-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot  
--  Generated Code Do Not Modify

limited with org.allbinary.media.audio.WorkSound_Package;
package org.allbinary.media.audio.WorkSound_Package_References is
   type WorkSound_Access is access all org.allbinary.media.audio.WorkSound_Package.WorkSound'Class;
   type WorkSound_Access_Array is array (Natural range <>) of WorkSound_Access;
   type WorkSound_Access_Array_Access is access all WorkSound_Access_Array;
   type WorkSound_Access_Array_Access_Array is array (Natural range <>) of WorkSound_Access_Array_Access;
   type WorkSound_Access_Array_Access_Array_Access is access all WorkSound_Access_Array_Access_Array;
end org.allbinary.media.audio.WorkSound_Package_References;

with org.allbinary.media.audio.WorkSound_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.media.audio.CompositeSound_Package; use org.allbinary.media.audio.CompositeSound_Package;
limited with org.allbinary.media.audio.Sound_Package;
with org.allbinary.media.audio.Sound_Package_References;

package org.allbinary.media.audio.WorkSound_Package is

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


   subtype WorkSound_Access is org.allbinary.media.audio.WorkSound_Package_References.WorkSound_Access;
   function "=" (Left, Right : WorkSound_Access) return Boolean renames org.allbinary.media.audio.WorkSound_Package_References."=";
   subtype WorkSound_Access_Array is org.allbinary.media.audio.WorkSound_Package_References.WorkSound_Access_Array;
   function "=" (Left, Right : WorkSound_Access_Array) return Boolean renames org.allbinary.media.audio.WorkSound_Package_References."=";
   subtype WorkSound_Access_Array_Access is org.allbinary.media.audio.WorkSound_Package_References.WorkSound_Access_Array_Access;
   function "=" (Left, Right : WorkSound_Access_Array_Access) return Boolean renames org.allbinary.media.audio.WorkSound_Package_References."=";
   subtype WorkSound_Access_Array_Access_Array is org.allbinary.media.audio.WorkSound_Package_References.WorkSound_Access_Array_Access_Array;
   function "=" (Left, Right : WorkSound_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.WorkSound_Package_References."=";
   subtype WorkSound_Access_Array_Access_Array_Access is org.allbinary.media.audio.WorkSound_Package_References.WorkSound_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WorkSound_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.WorkSound_Package_References."=";

   type WorkSound is new CompositeSound with null record;
   soundInterface : Sound_Access;

   procedure Initialize (This : in out WorkSound'Class);
   function Create return WorkSound_Access;
   function getInstance return Sound_Access;

end org.allbinary.media.audio.WorkSound_Package;


