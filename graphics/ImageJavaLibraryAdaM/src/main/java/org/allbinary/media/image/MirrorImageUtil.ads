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
--  with java.awt.geom.AffineTransform_Package; use java.awt.geom.AffineTransform_Package;
--  with java.awt.image.AffineTransformOp_Package; use java.awt.image.AffineTransformOp_Package;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.media.image.ImageUtil_Package; use org.allbinary.media.image.ImageUtil_Package;

package org.allbinary.media.image.MirrorImageUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type MirrorImageUtil is tagged;
   type MirrorImageUtil_Access is access all MirrorImageUtil'Class;
   type MirrorImageUtil_Access_Array is array (Natural range <>) of MirrorImageUtil_Access;
   type MirrorImageUtil_Access_Array_Access is access all MirrorImageUtil_Access_Array;
   type MirrorImageUtil_Access_Array_Access_Array is array (Natural range <>) of MirrorImageUtil_Access_Array_Access;
   type MirrorImageUtil_Access_Array_Access_Array_Access is access all MirrorImageUtil_Access_Array_Access_Array;

   type MirrorImageUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      imageUtil : ImageUtil_Access;
   end record;
   instance : MirrorImageUtil_Access;

   procedure Initialize (This : in out MirrorImageUtil'Class);
   function Create return MirrorImageUtil_Access;
   function getInstance return MirrorImageUtil_Access;
   function getImage (This : in out MirrorImageUtil; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; verticle : Boolean; horizontal : Boolean) return BufferedImage_Access;
   procedure getImage (This : in out MirrorImageUtil; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; verticle : Boolean; horizontal : Boolean);
   function getImages (This : in out MirrorImageUtil; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; verticle : Boolean; horizontal : Boolean) return BufferedImage_Access_Array_Access;
   procedure getImages (This : in out MirrorImageUtil; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; verticle : Boolean; horizontal : Boolean);

end org.allbinary.media.image.MirrorImageUtil_Package;


