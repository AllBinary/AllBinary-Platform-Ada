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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;

package org.allbinary.game.resource.FeatureResourceInitializationUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type FeatureResourceInitializationUtil is tagged;
   type FeatureResourceInitializationUtil_Access is access all FeatureResourceInitializationUtil'Class;
   type FeatureResourceInitializationUtil_Access_Array is array (Natural range <>) of FeatureResourceInitializationUtil_Access;
   type FeatureResourceInitializationUtil_Access_Array_Access is access all FeatureResourceInitializationUtil_Access_Array;
   type FeatureResourceInitializationUtil_Access_Array_Access_Array is array (Natural range <>) of FeatureResourceInitializationUtil_Access_Array_Access;
   type FeatureResourceInitializationUtil_Access_Array_Access_Array_Access is access all FeatureResourceInitializationUtil_Access_Array_Access_Array;

   type FeatureResourceInitializationUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : FeatureResourceInitializationUtil_Access;

   procedure Initialize (This : in out FeatureResourceInitializationUtil'Class);
   function Create return FeatureResourceInitializationUtil_Access;
   function getInstance return FeatureResourceInitializationUtil_Access;
   procedure init (This : in out FeatureResourceInitializationUtil; level : Integer);

end org.allbinary.game.resource.FeatureResourceInitializationUtil_Package;


