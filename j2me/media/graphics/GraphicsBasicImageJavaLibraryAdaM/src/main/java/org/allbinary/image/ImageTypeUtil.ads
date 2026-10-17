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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.image.ImageTypeUtil_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type ImageTypeUtil is tagged;
   type ImageTypeUtil_Access is access all ImageTypeUtil'Class;
   type ImageTypeUtil_Access_Array is array (Natural range <>) of ImageTypeUtil_Access;
   type ImageTypeUtil_Access_Array_Access is access all ImageTypeUtil_Access_Array;

   type ImageTypeUtil is new Java_Object with record
      PNG : Unbounded_String;
      JPG : Unbounded_String;
      GIF : Unbounded_String;
      list : BasicArrayList_Access;
   end record;
   SINGLETON : ImageTypeUtil_Access;

   procedure Initialize (This : in out ImageTypeUtil'Class);
   function Create return ImageTypeUtil_Access;
   function isSupported (This : in out ImageTypeUtil; mediaFileType : Unbounded_String) return Boolean;
   procedure isSupported (This : in out ImageTypeUtil; mediaFileType : Unbounded_String);
   function getInstance return ImageTypeUtil_Access;
   procedure getInstance;

end org.allbinary.image.ImageTypeUtil_Package;


