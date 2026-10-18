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

package org.allbinary.media.image.ImageSwtUtil_Package is


   type ImageSwtUtil is tagged;
   type ImageSwtUtil_Access is access all ImageSwtUtil'Class;
   type ImageSwtUtil_Access_Array is array (Natural range <>) of ImageSwtUtil_Access;
   type ImageSwtUtil_Access_Array_Access is access all ImageSwtUtil_Access_Array;
   type ImageSwtUtil_Access_Array_Access_Array is array (Natural range <>) of ImageSwtUtil_Access_Array_Access;
   type ImageSwtUtil_Access_Array_Access_Array_Access is access all ImageSwtUtil_Access_Array_Access_Array;

   type ImageSwtUtil is new Java_Object with null record;
   instance : ImageSwtUtil_Access;

   procedure Initialize (This : in out ImageSwtUtil'Class);
   function Create return ImageSwtUtil_Access;
   function getInstance return ImageSwtUtil_Access;

end org.allbinary.media.image.ImageSwtUtil_Package;


