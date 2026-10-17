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
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;

package org.allbinary.media.image.ImageUnifierUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;

   type ImageUnifierUtil is tagged;
   type ImageUnifierUtil_Access is access all ImageUnifierUtil'Class;
   type ImageUnifierUtil_Access_Array is array (Natural range <>) of ImageUnifierUtil_Access;
   type ImageUnifierUtil_Access_Array_Access is access all ImageUnifierUtil_Access_Array;

   type ImageUnifierUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      imageUtil : ImageUtil_Access;
   end record;
   instance : ImageUnifierUtil_Access;

   procedure Initialize (This : in out ImageUnifierUtil'Class);
   function Create return ImageUnifierUtil_Access;
   function getInstance return ImageUnifierUtil_Access;
   procedure getInstance;
   function getDefaultConfiguration (This : in out ImageUnifierUtil) return GraphicsConfiguration_Access;
   procedure getDefaultConfiguration (This : in out ImageUnifierUtil);
   function getImage (This : in out ImageUnifierUtil; bufferedImageArray : BufferedImage_Access_Array_Access; imageUnifierProperties : ImageUnifierProperties_Access) return BufferedImage_Access;
   procedure getImage (This : in out ImageUnifierUtil; bufferedImageArray : BufferedImage_Access_Array_Access; imageUnifierProperties : ImageUnifierProperties_Access);

end org.allbinary.media.image.ImageUnifierUtil_Package;


