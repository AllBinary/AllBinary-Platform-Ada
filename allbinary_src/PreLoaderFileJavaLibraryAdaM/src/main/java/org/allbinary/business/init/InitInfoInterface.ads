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
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;

package org.allbinary.business.init.InitInfoInterface_Package is

   package AbPath_Package renames org.allbinary.logic.io.path.AbPath_Package;

   type InitInfoInterface is interface;
   type InitInfoInterface_Access is access all InitInfoInterface'Class;
   type InitInfoInterface_Access_Array is array (Natural range <>) of InitInfoInterface_Access;
   type InitInfoInterface_Access_Array_Access is access all InitInfoInterface_Access_Array;
   function isTesting (This : in out InitInfoInterface) return Boolean is abstract;
   function getTesting (This : in out InitInfoInterface) return Unbounded_String is abstract;
   function getTestHtmlPath (This : in out InitInfoInterface) return Unbounded_String is abstract;
   function getMainPath (This : in out InitInfoInterface) return Unbounded_String is abstract;
   procedure setTesting (This : in out InitInfoInterface; value : Unbounded_String) is abstract;
   procedure setTestHtmlPath (This : in out InitInfoInterface; value : AbPath_Access) is abstract;
   procedure setMainPath (This : in out InitInfoInterface; value : AbPath_Access) is abstract;
   function isTestingValid (This : in out InitInfoInterface; testing : Unbounded_String) return Boolean is abstract;
   function isTestHtmlPathValid (This : in out InitInfoInterface; value : AbPath_Access) return Boolean is abstract;
   function isMainPathValid (This : in out InitInfoInterface; value : AbPath_Access) return Boolean is abstract;

end org.allbinary.business.init.InitInfoInterface_Package;


