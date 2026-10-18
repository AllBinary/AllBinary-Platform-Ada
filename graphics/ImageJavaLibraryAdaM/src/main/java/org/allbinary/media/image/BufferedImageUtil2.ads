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
with org.allbinary.media.image.ImageUtil_Package; use org.allbinary.media.image.ImageUtil_Package;

package org.allbinary.media.image.BufferedImageUtil2_Package is


   type BufferedImageUtil2 is tagged;
   type BufferedImageUtil2_Access is access all BufferedImageUtil2'Class;
   type BufferedImageUtil2_Access_Array is array (Natural range <>) of BufferedImageUtil2_Access;
   type BufferedImageUtil2_Access_Array_Access is access all BufferedImageUtil2_Access_Array;
   type BufferedImageUtil2_Access_Array_Access_Array is array (Natural range <>) of BufferedImageUtil2_Access_Array_Access;
   type BufferedImageUtil2_Access_Array_Access_Array_Access is access all BufferedImageUtil2_Access_Array_Access_Array;

   type BufferedImageUtil2 is new Java_Object with record
      imageUtil : ImageUtil_Access;
   end record;
   instance : BufferedImageUtil2_Access;

   procedure Initialize (This : in out BufferedImageUtil2'Class);
   function Create return BufferedImageUtil2_Access;
   function getInstance return BufferedImageUtil2_Access;
   function createSpriteImage (This : in out BufferedImageUtil2; bufferedImageArray : BufferedImage_Access_Array_Access) return BufferedImage_Access;
   procedure createSpriteImage (This : in out BufferedImageUtil2; bufferedImageArray : BufferedImage_Access_Array_Access);

end org.allbinary.media.image.BufferedImageUtil2_Package;


