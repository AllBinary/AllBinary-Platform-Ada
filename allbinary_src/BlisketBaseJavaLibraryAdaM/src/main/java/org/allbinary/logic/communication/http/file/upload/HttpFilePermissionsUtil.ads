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
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;

package org.allbinary.logic.communication.http.file.upload.HttpFilePermissionsUtil_Package is

   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;

   type HttpFilePermissionsUtil is tagged;
   type HttpFilePermissionsUtil_Access is access all HttpFilePermissionsUtil'Class;
   type HttpFilePermissionsUtil_Access_Array is array (Natural range <>) of HttpFilePermissionsUtil_Access;
   type HttpFilePermissionsUtil_Access_Array_Access is access all HttpFilePermissionsUtil_Access_Array;

   type HttpFilePermissionsUtil is new Java_Object with null record;
   instance : HttpFilePermissionsUtil_Access;

   procedure Initialize (This : in out HttpFilePermissionsUtil'Class);
   function Create return HttpFilePermissionsUtil_Access;
   function getInstance return HttpFilePermissionsUtil_Access;
   procedure create (This : in out HttpFilePermissionsUtil; path : AbPath_Access);

end org.allbinary.logic.communication.http.file.upload.HttpFilePermissionsUtil_Package;


