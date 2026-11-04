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

limited with org.allbinary.media.image.filter.ImageFileFilter_Package;
package org.allbinary.media.image.filter.ImageFileFilter_Package_References is
   type ImageFileFilter_Access is access all org.allbinary.media.image.filter.ImageFileFilter_Package.ImageFileFilter'Class;
   type ImageFileFilter_Access_Array is array (Natural range <>) of ImageFileFilter_Access;
   type ImageFileFilter_Access_Array_Access is access all ImageFileFilter_Access_Array;
   type ImageFileFilter_Access_Array_Access_Array is array (Natural range <>) of ImageFileFilter_Access_Array_Access;
   type ImageFileFilter_Access_Array_Access_Array_Access is access all ImageFileFilter_Access_Array_Access_Array;
end org.allbinary.media.image.filter.ImageFileFilter_Package_References;

with org.allbinary.media.image.filter.ImageFileFilter_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.File_Package; use java.io.File_Package;
--  with javax.swing.filechooser.FileFilter_Package; use javax.swing.filechooser.FileFilter_Package;

package org.allbinary.media.image.filter.ImageFileFilter_Package is

   package File_Package renames Standard.java.io.File_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ImageFileFilter_Access is org.allbinary.media.image.filter.ImageFileFilter_Package_References.ImageFileFilter_Access;
   function "=" (Left, Right : ImageFileFilter_Access) return Boolean renames org.allbinary.media.image.filter.ImageFileFilter_Package_References."=";
   subtype ImageFileFilter_Access_Array is org.allbinary.media.image.filter.ImageFileFilter_Package_References.ImageFileFilter_Access_Array;
   function "=" (Left, Right : ImageFileFilter_Access_Array) return Boolean renames org.allbinary.media.image.filter.ImageFileFilter_Package_References."=";
   subtype ImageFileFilter_Access_Array_Access is org.allbinary.media.image.filter.ImageFileFilter_Package_References.ImageFileFilter_Access_Array_Access;
   function "=" (Left, Right : ImageFileFilter_Access_Array_Access) return Boolean renames org.allbinary.media.image.filter.ImageFileFilter_Package_References."=";
   subtype ImageFileFilter_Access_Array_Access_Array is org.allbinary.media.image.filter.ImageFileFilter_Package_References.ImageFileFilter_Access_Array_Access_Array;
   function "=" (Left, Right : ImageFileFilter_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.filter.ImageFileFilter_Package_References."=";
   subtype ImageFileFilter_Access_Array_Access_Array_Access is org.allbinary.media.image.filter.ImageFileFilter_Package_References.ImageFileFilter_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageFileFilter_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.filter.ImageFileFilter_Package_References."=";

   type ImageFileFilter is new Java_Object with null record;

   procedure Initialize (This : in out ImageFileFilter'Class);
   function Create return ImageFileFilter_Access;
   function accept_Id (This : in out ImageFileFilter; f_Param : access File_Package.File'Class) return Boolean;
   procedure accept_Id (This : in out ImageFileFilter; f_Param : access File_Package.File'Class);
   function getDescription (This : in out ImageFileFilter) return Unbounded_String;

end org.allbinary.media.image.filter.ImageFileFilter_Package;


