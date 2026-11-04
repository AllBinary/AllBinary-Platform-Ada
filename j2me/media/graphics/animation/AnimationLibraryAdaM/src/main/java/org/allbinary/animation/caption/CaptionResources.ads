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

limited with org.allbinary.animation.caption.CaptionResources_Package;
package org.allbinary.animation.caption.CaptionResources_Package_References is
   type CaptionResources_Access is access all org.allbinary.animation.caption.CaptionResources_Package.CaptionResources'Class;
   type CaptionResources_Access_Array is array (Natural range <>) of CaptionResources_Access;
   type CaptionResources_Access_Array_Access is access all CaptionResources_Access_Array;
   type CaptionResources_Access_Array_Access_Array is array (Natural range <>) of CaptionResources_Access_Array_Access;
   type CaptionResources_Access_Array_Access_Array_Access is access all CaptionResources_Access_Array_Access_Array;
end org.allbinary.animation.caption.CaptionResources_Package_References;

with org.allbinary.animation.caption.CaptionResources_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.animation.caption.CaptionResources_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype CaptionResources_Access is org.allbinary.animation.caption.CaptionResources_Package_References.CaptionResources_Access;
   function "=" (Left, Right : CaptionResources_Access) return Boolean renames org.allbinary.animation.caption.CaptionResources_Package_References."=";
   subtype CaptionResources_Access_Array is org.allbinary.animation.caption.CaptionResources_Package_References.CaptionResources_Access_Array;
   function "=" (Left, Right : CaptionResources_Access_Array) return Boolean renames org.allbinary.animation.caption.CaptionResources_Package_References."=";
   subtype CaptionResources_Access_Array_Access is org.allbinary.animation.caption.CaptionResources_Package_References.CaptionResources_Access_Array_Access;
   function "=" (Left, Right : CaptionResources_Access_Array_Access) return Boolean renames org.allbinary.animation.caption.CaptionResources_Package_References."=";
   subtype CaptionResources_Access_Array_Access_Array is org.allbinary.animation.caption.CaptionResources_Package_References.CaptionResources_Access_Array_Access_Array;
   function "=" (Left, Right : CaptionResources_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.caption.CaptionResources_Package_References."=";
   subtype CaptionResources_Access_Array_Access_Array_Access is org.allbinary.animation.caption.CaptionResources_Package_References.CaptionResources_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CaptionResources_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.caption.CaptionResources_Package_References."=";

   type CaptionResources is new Java_Object with null record;
   RESOURCE : Unbounded_String;

   procedure Initialize (This : in out CaptionResources'Class);
   function Create return CaptionResources_Access;

end org.allbinary.animation.caption.CaptionResources_Package;


