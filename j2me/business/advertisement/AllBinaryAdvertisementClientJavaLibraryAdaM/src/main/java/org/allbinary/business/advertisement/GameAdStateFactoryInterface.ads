-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
with org.allbinary.logic.system.SoftwareInformation_Package; use org.allbinary.logic.system.SoftwareInformation_Package;

package org.allbinary.business.advertisement.GameAdStateFactoryInterface_Package is

   package SoftwareInformation_Package renames Standard.org.allbinary.logic.system.SoftwareInformation_Package;

   type GameAdStateFactoryInterface is interface;
   type GameAdStateFactoryInterface_Access is access all GameAdStateFactoryInterface'Class;
   type GameAdStateFactoryInterface_Access_Array is array (Natural range <>) of GameAdStateFactoryInterface_Access;
   type GameAdStateFactoryInterface_Access_Array_Access is access all GameAdStateFactoryInterface_Access_Array;
   function getInstanceForApp (This : in out GameAdStateFactoryInterface; softwareInformation : SoftwareInformation_Access) return GameAdStateBase_Access is abstract;

end org.allbinary.business.advertisement.GameAdStateFactoryInterface_Package;


