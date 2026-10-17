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

package org.allbinary.android.view.AllBinaryRenderer_Package is


   type AllBinaryRenderer is tagged;
   type AllBinaryRenderer_Access is access all AllBinaryRenderer'Class;
   type AllBinaryRenderer_Access_Array is array (Natural range <>) of AllBinaryRenderer_Access;
   type AllBinaryRenderer_Access_Array_Access is access all AllBinaryRenderer_Access_Array;

   type AllBinaryRenderer is new Java_Object with null record;
   instance : AllBinaryRenderer_Access;

   procedure Initialize (This : in out AllBinaryRenderer'Class);
   function Create return AllBinaryRenderer_Access;
   function getInstance return AllBinaryRenderer_Access;
   procedure setRunnable (This : in out AllBinaryRenderer; runnable_Param : access Runnable_Package.Runnable'Class);
   procedure clearRunnable (This : in out AllBinaryRenderer);

end org.allbinary.android.view.AllBinaryRenderer_Package;


