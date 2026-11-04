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

limited with org.allbinary.media.image.ImageUnifierProperties_Package;
package org.allbinary.media.image.ImageUnifierProperties_Package_References is
   type ImageUnifierProperties_Access is access all org.allbinary.media.image.ImageUnifierProperties_Package.ImageUnifierProperties'Class;
   type ImageUnifierProperties_Access_Array is array (Natural range <>) of ImageUnifierProperties_Access;
   type ImageUnifierProperties_Access_Array_Access is access all ImageUnifierProperties_Access_Array;
   type ImageUnifierProperties_Access_Array_Access_Array is array (Natural range <>) of ImageUnifierProperties_Access_Array_Access;
   type ImageUnifierProperties_Access_Array_Access_Array_Access is access all ImageUnifierProperties_Access_Array_Access_Array;
end org.allbinary.media.image.ImageUnifierProperties_Package_References;

with org.allbinary.media.image.ImageUnifierProperties_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.image.ImageUnifierCell_Package;
with org.allbinary.media.image.ImageUnifierCell_Package_References;

package org.allbinary.media.image.ImageUnifierProperties_Package is

   package Reference_Types is
   subtype ImageUnifierCell_Access is org.allbinary.media.image.ImageUnifierCell_Package_References.ImageUnifierCell_Access;
   use type ImageUnifierCell_Access;
   subtype ImageUnifierCell_Access_Array is org.allbinary.media.image.ImageUnifierCell_Package_References.ImageUnifierCell_Access_Array;
   use type ImageUnifierCell_Access_Array;
   subtype ImageUnifierCell_Access_Array_Access is org.allbinary.media.image.ImageUnifierCell_Package_References.ImageUnifierCell_Access_Array_Access;
   use type ImageUnifierCell_Access_Array_Access;
   subtype ImageUnifierCell_Access_Array_Access_Array is org.allbinary.media.image.ImageUnifierCell_Package_References.ImageUnifierCell_Access_Array_Access_Array;
   use type ImageUnifierCell_Access_Array_Access_Array;
   subtype ImageUnifierCell_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageUnifierCell_Package_References.ImageUnifierCell_Access_Array_Access_Array_Access;
   use type ImageUnifierCell_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageUnifierProperties_Access is org.allbinary.media.image.ImageUnifierProperties_Package_References.ImageUnifierProperties_Access;
   function "=" (Left, Right : ImageUnifierProperties_Access) return Boolean renames org.allbinary.media.image.ImageUnifierProperties_Package_References."=";
   subtype ImageUnifierProperties_Access_Array is org.allbinary.media.image.ImageUnifierProperties_Package_References.ImageUnifierProperties_Access_Array;
   function "=" (Left, Right : ImageUnifierProperties_Access_Array) return Boolean renames org.allbinary.media.image.ImageUnifierProperties_Package_References."=";
   subtype ImageUnifierProperties_Access_Array_Access is org.allbinary.media.image.ImageUnifierProperties_Package_References.ImageUnifierProperties_Access_Array_Access;
   function "=" (Left, Right : ImageUnifierProperties_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageUnifierProperties_Package_References."=";
   subtype ImageUnifierProperties_Access_Array_Access_Array is org.allbinary.media.image.ImageUnifierProperties_Package_References.ImageUnifierProperties_Access_Array_Access_Array;
   function "=" (Left, Right : ImageUnifierProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageUnifierProperties_Package_References."=";
   subtype ImageUnifierProperties_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageUnifierProperties_Package_References.ImageUnifierProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageUnifierProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageUnifierProperties_Package_References."=";

   type ImageUnifierProperties is new Java_Object with record
      rows : Integer;
      columns : Integer;
      imageUnifierCell : ImageUnifierCell_Access;
   end record;

   procedure Initialize (This : in out ImageUnifierProperties'Class);
   function Create return ImageUnifierProperties_Access;
   function getWidth (This : in out ImageUnifierProperties) return Integer;
   function getHeight (This : in out ImageUnifierProperties) return Integer;
   function getRows (This : in out ImageUnifierProperties) return Integer;
   procedure setRows (This : in out ImageUnifierProperties; rows : Integer);
   function getColumns (This : in out ImageUnifierProperties) return Integer;
   procedure setColumns (This : in out ImageUnifierProperties; columns : Integer);
   function getImageUnifierCell (This : in out ImageUnifierProperties) return ImageUnifierCell_Access;
   procedure setImageUnifierCell (This : in out ImageUnifierProperties; imageUnifierCell_Param : access ImageUnifierCell_Package.ImageUnifierCell'Class);

end org.allbinary.media.image.ImageUnifierProperties_Package;


