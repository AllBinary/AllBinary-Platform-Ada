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
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.image.AnimationFrameToImageUtil_Package; use org.allbinary.image.AnimationFrameToImageUtil_Package;

package org.allbinary.image.IndexedAnimationToImageArrayUtil_Package is

   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;

   type IndexedAnimationToImageArrayUtil is tagged;
   type IndexedAnimationToImageArrayUtil_Access is access all IndexedAnimationToImageArrayUtil'Class;
   type IndexedAnimationToImageArrayUtil_Access_Array is array (Natural range <>) of IndexedAnimationToImageArrayUtil_Access;
   type IndexedAnimationToImageArrayUtil_Access_Array_Access is access all IndexedAnimationToImageArrayUtil_Access_Array;

   type IndexedAnimationToImageArrayUtil is new Java_Object with null record;

   procedure Initialize (This : in out IndexedAnimationToImageArrayUtil'Class);
   function Create return IndexedAnimationToImageArrayUtil_Access;
   function getInstance (width : Integer; height : Integer; sequentialAnimationInterface : IndexedAnimation_Access) return Image_Access_Array_Access;
   procedure getInstance (width : Integer; height : Integer; sequentialAnimationInterface : IndexedAnimation_Access);

end org.allbinary.image.IndexedAnimationToImageArrayUtil_Package;


