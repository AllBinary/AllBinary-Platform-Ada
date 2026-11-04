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

limited with org.allbinary.media.image.ImageStrings_Package;
package org.allbinary.media.image.ImageStrings_Package_References is
   type ImageStrings_Access is access all org.allbinary.media.image.ImageStrings_Package.ImageStrings'Class;
   type ImageStrings_Access_Array is array (Natural range <>) of ImageStrings_Access;
   type ImageStrings_Access_Array_Access is access all ImageStrings_Access_Array;
   type ImageStrings_Access_Array_Access_Array is array (Natural range <>) of ImageStrings_Access_Array_Access;
   type ImageStrings_Access_Array_Access_Array_Access is access all ImageStrings_Access_Array_Access_Array;
end org.allbinary.media.image.ImageStrings_Package_References;

with org.allbinary.media.image.ImageStrings_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.media.image.ImageStrings_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ImageStrings_Access is org.allbinary.media.image.ImageStrings_Package_References.ImageStrings_Access;
   function "=" (Left, Right : ImageStrings_Access) return Boolean renames org.allbinary.media.image.ImageStrings_Package_References."=";
   subtype ImageStrings_Access_Array is org.allbinary.media.image.ImageStrings_Package_References.ImageStrings_Access_Array;
   function "=" (Left, Right : ImageStrings_Access_Array) return Boolean renames org.allbinary.media.image.ImageStrings_Package_References."=";
   subtype ImageStrings_Access_Array_Access is org.allbinary.media.image.ImageStrings_Package_References.ImageStrings_Access_Array_Access;
   function "=" (Left, Right : ImageStrings_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageStrings_Package_References."=";
   subtype ImageStrings_Access_Array_Access_Array is org.allbinary.media.image.ImageStrings_Package_References.ImageStrings_Access_Array_Access_Array;
   function "=" (Left, Right : ImageStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageStrings_Package_References."=";
   subtype ImageStrings_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageStrings_Package_References.ImageStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageStrings_Package_References."=";

   type ImageStrings is new Java_Object with record
      PNG : Unbounded_String;
      PNG_EXTENSION : Unbounded_String;
   end record;
   instance : ImageStrings_Access;

   procedure Initialize (This : in out ImageStrings'Class);
   function Create return ImageStrings_Access;
   function getInstance return ImageStrings_Access;

end org.allbinary.media.image.ImageStrings_Package;


