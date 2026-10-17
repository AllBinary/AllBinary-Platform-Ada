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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.eclipse.swt.graphics.Color_Package; use org.eclipse.swt.graphics.Color_Package;
with org.eclipse.swt.graphics.RGB_Package; use org.eclipse.swt.graphics.RGB_Package;
with org.microemu.app.BareMain_Package; use org.microemu.app.BareMain_Package;

package org.allbinary.media.image.ImageSwtUtil_Package is

   package Color_Package renames Standard.org.eclipse.swt.graphics.Color_Package;
   package RGB_Package renames Standard.org.eclipse.swt.graphics.RGB_Package;
   package BareMain_Package renames Standard.org.microemu.app.BareMain_Package;

   type ImageSwtUtil is tagged;
   type ImageSwtUtil_Access is access all ImageSwtUtil'Class;
   type ImageSwtUtil_Access_Array is array (Natural range <>) of ImageSwtUtil_Access;
   type ImageSwtUtil_Access_Array_Access is access all ImageSwtUtil_Access_Array;

   type ImageSwtUtil is new Java_Object with null record;
   instance : ImageSwtUtil_Access;

   procedure Initialize (This : in out ImageSwtUtil'Class);
   function Create return ImageSwtUtil_Access;
   function getInstance return ImageSwtUtil_Access;

end org.allbinary.media.image.ImageSwtUtil_Package;


