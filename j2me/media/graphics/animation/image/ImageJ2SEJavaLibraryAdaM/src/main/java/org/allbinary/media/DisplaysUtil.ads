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
--  with java.awt.Dimension_Package; use java.awt.Dimension_Package;
--  with java.awt.DisplayMode_Package; use java.awt.DisplayMode_Package;
--  with java.awt.GraphicsDevice_Package; use java.awt.GraphicsDevice_Package;
--  with java.awt.GraphicsEnvironment_Package; use java.awt.GraphicsEnvironment_Package;
--  with java.awt.Toolkit_Package; use java.awt.Toolkit_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;

package org.allbinary.media.DisplaysUtil_Package is

   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;

   type DisplaysUtil is tagged;
   type DisplaysUtil_Access is access all DisplaysUtil'Class;
   type DisplaysUtil_Access_Array is array (Natural range <>) of DisplaysUtil_Access;
   type DisplaysUtil_Access_Array_Access is access all DisplaysUtil_Access_Array;

   type DisplaysUtil is new Java_Object with null record;
   instance : DisplaysUtil_Access;

   procedure Initialize (This : in out DisplaysUtil'Class);
   function Create return DisplaysUtil_Access;
   function getInstance return DisplaysUtil_Access;
   function getPrimaryScreenSize (This : in out DisplaysUtil) return Rectangle_Access;
   function getScreenSizesAsRectangleArray (This : in out DisplaysUtil) return Rectangle_Access_Array_Access;

end org.allbinary.media.DisplaysUtil_Package;


