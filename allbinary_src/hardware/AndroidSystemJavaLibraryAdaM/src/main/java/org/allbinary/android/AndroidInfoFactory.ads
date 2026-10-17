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
with android.os.Build_Package; use android.os.Build_Package;

package org.allbinary.android.AndroidInfoFactory_Package is

   package Build_Package renames android.os.Build_Package;

   type AndroidInfoFactory is tagged;
   type AndroidInfoFactory_Access is access all AndroidInfoFactory'Class;
   type AndroidInfoFactory_Access_Array is array (Natural range <>) of AndroidInfoFactory_Access;
   type AndroidInfoFactory_Access_Array_Access is access all AndroidInfoFactory_Access_Array;

   type AndroidInfoFactory is new Java_Object with record
      version : Integer;
   end record;
   instance : AndroidInfoFactory_Access;

   procedure Initialize (This : in out AndroidInfoFactory'Class);
   function Create return AndroidInfoFactory_Access;
   function getInstance return AndroidInfoFactory_Access;
   procedure getInstance;
   function getVersion (This : in out AndroidInfoFactory) return Integer;
   procedure getVersion (This : in out AndroidInfoFactory);

end org.allbinary.android.AndroidInfoFactory_Package;


