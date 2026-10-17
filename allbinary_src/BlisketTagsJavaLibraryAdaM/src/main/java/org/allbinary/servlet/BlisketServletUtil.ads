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
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
with org.allbinary.globals.AppUrlGlobals_Package; use org.allbinary.globals.AppUrlGlobals_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package; use org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package;

package org.allbinary.servlet.BlisketServletUtil_Package is

   package AppUrlGlobals_Package renames Standard.org.allbinary.globals.AppUrlGlobals_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package WebappClassLoaderInfo_Package renames Standard.org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package;

   type BlisketServletUtil is tagged;
   type BlisketServletUtil_Access is access all BlisketServletUtil'Class;
   type BlisketServletUtil_Access_Array is array (Natural range <>) of BlisketServletUtil_Access;
   type BlisketServletUtil_Access_Array_Access is access all BlisketServletUtil_Access_Array;

   type BlisketServletUtil is new Java_Object with null record;
   instance : BlisketServletUtil_Access;

   procedure Initialize (This : in out BlisketServletUtil'Class);
   function Create return BlisketServletUtil_Access;
   function getInstance return BlisketServletUtil_Access;
   procedure init (This : in out BlisketServletUtil; request : HttpServletRequest_Access);

end org.allbinary.servlet.BlisketServletUtil_Package;


