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
with android.app.Activity_Package; use android.app.Activity_Package;
with android.os.Build_Package; use android.os.Build_Package;

package org.allbinary.AndroidUtil_Package is

   package Activity_Package renames Standard.android.app.Activity_Package;
   package Build_Package renames Standard.android.os.Build_Package;

   type AndroidUtil is tagged;
   type AndroidUtil_Access is access all AndroidUtil'Class;
   type AndroidUtil_Access_Array is array (Natural range <>) of AndroidUtil_Access;
   type AndroidUtil_Access_Array_Access is access all AndroidUtil_Access_Array;

   type AndroidUtil is new Java_Object with null record;
   NULL_ACTIVITY : Activity_Access;
   version : Integer;

   procedure Initialize (This : in out AndroidUtil'Class);
   function Create return AndroidUtil_Access;
   function isMemoryRestrictive return Boolean;
   function isAndroid return Boolean;

end org.allbinary.AndroidUtil_Package;


