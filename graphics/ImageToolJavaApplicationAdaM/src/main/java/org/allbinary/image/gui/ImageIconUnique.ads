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
with org.allbinary.image.gui.ImageIcon_Package; use org.allbinary.image.gui.ImageIcon_Package;

package org.allbinary.image.gui.ImageIconUnique_Package is


   type ImageIconUnique is tagged;
   type ImageIconUnique_Access is access all ImageIconUnique'Class;
   type ImageIconUnique_Access_Array is array (Natural range <>) of ImageIconUnique_Access;
   type ImageIconUnique_Access_Array_Access is access all ImageIconUnique_Access_Array;

   type ImageIconUnique is new ImageIcon with record
      id : Integer;
   end record;

   procedure Initialize (This : in out ImageIconUnique'Class; bufferedImage : BufferedImage_Access; index : Integer);
   function Create (bufferedImage : BufferedImage_Access; index : Integer) return ImageIconUnique_Access;
   function getId (This : in out ImageIconUnique) return Integer;
   procedure setId (This : in out ImageIconUnique; id : Integer);

end org.allbinary.image.gui.ImageIconUnique_Package;


