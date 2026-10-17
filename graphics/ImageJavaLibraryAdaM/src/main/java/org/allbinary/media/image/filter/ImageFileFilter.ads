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
--  with java.io.File_Package; use java.io.File_Package;
--  with javax.swing.filechooser.FileFilter_Package; use javax.swing.filechooser.FileFilter_Package;

package org.allbinary.media.image.filter.ImageFileFilter_Package is


   type ImageFileFilter is tagged;
   type ImageFileFilter_Access is access all ImageFileFilter'Class;
   type ImageFileFilter_Access_Array is array (Natural range <>) of ImageFileFilter_Access;
   type ImageFileFilter_Access_Array_Access is access all ImageFileFilter_Access_Array;

   type ImageFileFilter is new FileFilter with null record;

   procedure Initialize (This : in out ImageFileFilter'Class);
   function Create return ImageFileFilter_Access;
   function accept_Id (This : in out ImageFileFilter; f_Param : access File'Class) return Boolean;
   procedure accept_Id (This : in out ImageFileFilter; f_Param : access File'Class);
   function getDescription (This : in out ImageFileFilter) return Unbounded_String;

end org.allbinary.media.image.filter.ImageFileFilter_Package;


