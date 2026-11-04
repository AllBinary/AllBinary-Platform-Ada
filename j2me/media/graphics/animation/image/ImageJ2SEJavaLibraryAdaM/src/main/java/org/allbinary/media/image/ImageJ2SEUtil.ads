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

limited with org.allbinary.media.image.ImageJ2SEUtil_Package;
package org.allbinary.media.image.ImageJ2SEUtil_Package_References is
   type ImageJ2SEUtil_Access is access all org.allbinary.media.image.ImageJ2SEUtil_Package.ImageJ2SEUtil'Class;
   type ImageJ2SEUtil_Access_Array is array (Natural range <>) of ImageJ2SEUtil_Access;
   type ImageJ2SEUtil_Access_Array_Access is access all ImageJ2SEUtil_Access_Array;
   type ImageJ2SEUtil_Access_Array_Access_Array is array (Natural range <>) of ImageJ2SEUtil_Access_Array_Access;
   type ImageJ2SEUtil_Access_Array_Access_Array_Access is access all ImageJ2SEUtil_Access_Array_Access_Array;
end org.allbinary.media.image.ImageJ2SEUtil_Package_References;

with org.allbinary.media.image.ImageJ2SEUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.Color_Package; use java.awt.Color_Package;

package org.allbinary.media.image.ImageJ2SEUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ImageJ2SEUtil_Access is org.allbinary.media.image.ImageJ2SEUtil_Package_References.ImageJ2SEUtil_Access;
   function "=" (Left, Right : ImageJ2SEUtil_Access) return Boolean renames org.allbinary.media.image.ImageJ2SEUtil_Package_References."=";
   subtype ImageJ2SEUtil_Access_Array is org.allbinary.media.image.ImageJ2SEUtil_Package_References.ImageJ2SEUtil_Access_Array;
   function "=" (Left, Right : ImageJ2SEUtil_Access_Array) return Boolean renames org.allbinary.media.image.ImageJ2SEUtil_Package_References."=";
   subtype ImageJ2SEUtil_Access_Array_Access is org.allbinary.media.image.ImageJ2SEUtil_Package_References.ImageJ2SEUtil_Access_Array_Access;
   function "=" (Left, Right : ImageJ2SEUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageJ2SEUtil_Package_References."=";
   subtype ImageJ2SEUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageJ2SEUtil_Package_References.ImageJ2SEUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImageJ2SEUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageJ2SEUtil_Package_References."=";
   subtype ImageJ2SEUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageJ2SEUtil_Package_References.ImageJ2SEUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageJ2SEUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageJ2SEUtil_Package_References."=";

   type ImageJ2SEUtil is new Java_Object with record
      TRANSPARENT_COLOR : Color_Access;
   end record;
   instance : ImageJ2SEUtil_Access;

   procedure Initialize (This : in out ImageJ2SEUtil'Class);
   function Create return ImageJ2SEUtil_Access;
   function getInstance return ImageJ2SEUtil_Access;

end org.allbinary.media.image.ImageJ2SEUtil_Package;


