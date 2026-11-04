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

limited with org.allbinary.image.ImageTypeUtil_Package;
package org.allbinary.image.ImageTypeUtil_Package_References is
   type ImageTypeUtil_Access is access all org.allbinary.image.ImageTypeUtil_Package.ImageTypeUtil'Class;
   type ImageTypeUtil_Access_Array is array (Natural range <>) of ImageTypeUtil_Access;
   type ImageTypeUtil_Access_Array_Access is access all ImageTypeUtil_Access_Array;
   type ImageTypeUtil_Access_Array_Access_Array is array (Natural range <>) of ImageTypeUtil_Access_Array_Access;
   type ImageTypeUtil_Access_Array_Access_Array_Access is access all ImageTypeUtil_Access_Array_Access_Array;
end org.allbinary.image.ImageTypeUtil_Package_References;

with org.allbinary.image.ImageTypeUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.image.ImageTypeUtil_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageTypeUtil_Access is org.allbinary.image.ImageTypeUtil_Package_References.ImageTypeUtil_Access;
   function "=" (Left, Right : ImageTypeUtil_Access) return Boolean renames org.allbinary.image.ImageTypeUtil_Package_References."=";
   subtype ImageTypeUtil_Access_Array is org.allbinary.image.ImageTypeUtil_Package_References.ImageTypeUtil_Access_Array;
   function "=" (Left, Right : ImageTypeUtil_Access_Array) return Boolean renames org.allbinary.image.ImageTypeUtil_Package_References."=";
   subtype ImageTypeUtil_Access_Array_Access is org.allbinary.image.ImageTypeUtil_Package_References.ImageTypeUtil_Access_Array_Access;
   function "=" (Left, Right : ImageTypeUtil_Access_Array_Access) return Boolean renames org.allbinary.image.ImageTypeUtil_Package_References."=";
   subtype ImageTypeUtil_Access_Array_Access_Array is org.allbinary.image.ImageTypeUtil_Package_References.ImageTypeUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImageTypeUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.image.ImageTypeUtil_Package_References."=";
   subtype ImageTypeUtil_Access_Array_Access_Array_Access is org.allbinary.image.ImageTypeUtil_Package_References.ImageTypeUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageTypeUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.ImageTypeUtil_Package_References."=";

   type ImageTypeUtil is new Java_Object with record
      PNG : Unbounded_String;
      JPG : Unbounded_String;
      GIF : Unbounded_String;
      list : BasicArrayList_Access;
   end record;
   SINGLETON : ImageTypeUtil_Access;

   procedure Initialize (This : in out ImageTypeUtil'Class);
   function Create return ImageTypeUtil_Access;
   function isSupported (This : in out ImageTypeUtil; mediaFileType_Param : Unbounded_String) return Boolean;
   procedure isSupported (This : in out ImageTypeUtil; mediaFileType_Param : Unbounded_String);
   function getInstance return ImageTypeUtil_Access;

end org.allbinary.image.ImageTypeUtil_Package;


