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
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type OpenGLESImageExclusionUtil is tagged;
   type OpenGLESImageExclusionUtil_Access is access all OpenGLESImageExclusionUtil'Class;
   type OpenGLESImageExclusionUtil_Access_Array is array (Natural range <>) of OpenGLESImageExclusionUtil_Access;
   type OpenGLESImageExclusionUtil_Access_Array_Access is access all OpenGLESImageExclusionUtil_Access_Array;

   type OpenGLESImageExclusionUtil is new Java_Object with record
      list : BasicArrayList_Access;
   end record;
   instance : OpenGLESImageExclusionUtil_Access;

   procedure Initialize (This : in out OpenGLESImageExclusionUtil'Class);
   function Create return OpenGLESImageExclusionUtil_Access;
   function getInstance return OpenGLESImageExclusionUtil_Access;
   procedure getInstance;
   function isCustomScaling (This : in out OpenGLESImageExclusionUtil; image : Image_Access) return Boolean;
   procedure isCustomScaling (This : in out OpenGLESImageExclusionUtil; image : Image_Access);

end org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package;


