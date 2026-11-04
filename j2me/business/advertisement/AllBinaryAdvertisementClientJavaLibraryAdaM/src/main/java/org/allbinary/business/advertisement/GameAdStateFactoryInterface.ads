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

limited with org.allbinary.business.advertisement.GameAdStateFactoryInterface_Package;
package org.allbinary.business.advertisement.GameAdStateFactoryInterface_Package_References is
   type GameAdStateFactoryInterface_Access is access all org.allbinary.business.advertisement.GameAdStateFactoryInterface_Package.GameAdStateFactoryInterface'Class;
   type GameAdStateFactoryInterface_Access_Array is array (Natural range <>) of GameAdStateFactoryInterface_Access;
   type GameAdStateFactoryInterface_Access_Array_Access is access all GameAdStateFactoryInterface_Access_Array;
   type GameAdStateFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of GameAdStateFactoryInterface_Access_Array_Access;
   type GameAdStateFactoryInterface_Access_Array_Access_Array_Access is access all GameAdStateFactoryInterface_Access_Array_Access_Array;
end org.allbinary.business.advertisement.GameAdStateFactoryInterface_Package_References;

with org.allbinary.business.advertisement.GameAdStateFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.system.SoftwareInformation_Package;
with org.allbinary.logic.system.SoftwareInformation_Package_References;
limited with org.allbinary.business.advertisement.GameAdStateBase_Package;
with org.allbinary.business.advertisement.GameAdStateBase_Package_References;

package org.allbinary.business.advertisement.GameAdStateFactoryInterface_Package is

   package SoftwareInformation_Package renames Standard.org.allbinary.logic.system.SoftwareInformation_Package;
   package Reference_Types is
   subtype SoftwareInformation_Access is org.allbinary.logic.system.SoftwareInformation_Package_References.SoftwareInformation_Access;
   use type SoftwareInformation_Access;
   subtype SoftwareInformation_Access_Array is org.allbinary.logic.system.SoftwareInformation_Package_References.SoftwareInformation_Access_Array;
   use type SoftwareInformation_Access_Array;
   subtype SoftwareInformation_Access_Array_Access is org.allbinary.logic.system.SoftwareInformation_Package_References.SoftwareInformation_Access_Array_Access;
   use type SoftwareInformation_Access_Array_Access;
   subtype SoftwareInformation_Access_Array_Access_Array is org.allbinary.logic.system.SoftwareInformation_Package_References.SoftwareInformation_Access_Array_Access_Array;
   use type SoftwareInformation_Access_Array_Access_Array;
   subtype SoftwareInformation_Access_Array_Access_Array_Access is org.allbinary.logic.system.SoftwareInformation_Package_References.SoftwareInformation_Access_Array_Access_Array_Access;
   use type SoftwareInformation_Access_Array_Access_Array_Access;
   subtype GameAdStateBase_Access is org.allbinary.business.advertisement.GameAdStateBase_Package_References.GameAdStateBase_Access;
   use type GameAdStateBase_Access;
   subtype GameAdStateBase_Access_Array is org.allbinary.business.advertisement.GameAdStateBase_Package_References.GameAdStateBase_Access_Array;
   use type GameAdStateBase_Access_Array;
   subtype GameAdStateBase_Access_Array_Access is org.allbinary.business.advertisement.GameAdStateBase_Package_References.GameAdStateBase_Access_Array_Access;
   use type GameAdStateBase_Access_Array_Access;
   subtype GameAdStateBase_Access_Array_Access_Array is org.allbinary.business.advertisement.GameAdStateBase_Package_References.GameAdStateBase_Access_Array_Access_Array;
   use type GameAdStateBase_Access_Array_Access_Array;
   subtype GameAdStateBase_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.GameAdStateBase_Package_References.GameAdStateBase_Access_Array_Access_Array_Access;
   use type GameAdStateBase_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type GameAdStateFactoryInterface is interface;
   subtype GameAdStateFactoryInterface_Access is org.allbinary.business.advertisement.GameAdStateFactoryInterface_Package_References.GameAdStateFactoryInterface_Access;
   function "=" (Left, Right : GameAdStateFactoryInterface_Access) return Boolean renames org.allbinary.business.advertisement.GameAdStateFactoryInterface_Package_References."=";
   subtype GameAdStateFactoryInterface_Access_Array is org.allbinary.business.advertisement.GameAdStateFactoryInterface_Package_References.GameAdStateFactoryInterface_Access_Array;
   function "=" (Left, Right : GameAdStateFactoryInterface_Access_Array) return Boolean renames org.allbinary.business.advertisement.GameAdStateFactoryInterface_Package_References."=";
   subtype GameAdStateFactoryInterface_Access_Array_Access is org.allbinary.business.advertisement.GameAdStateFactoryInterface_Package_References.GameAdStateFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : GameAdStateFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.GameAdStateFactoryInterface_Package_References."=";
   subtype GameAdStateFactoryInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.GameAdStateFactoryInterface_Package_References.GameAdStateFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GameAdStateFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.GameAdStateFactoryInterface_Package_References."=";
   subtype GameAdStateFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.GameAdStateFactoryInterface_Package_References.GameAdStateFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameAdStateFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.GameAdStateFactoryInterface_Package_References."=";
   function Java_Object_Access_From_GameAdStateFactoryInterface (Value : GameAdStateFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getInstanceForApp (This : in out GameAdStateFactoryInterface; softwareInformation_Param : access SoftwareInformation_Package.SoftwareInformation'Class) return GameAdStateBase_Access is abstract;

end org.allbinary.business.advertisement.GameAdStateFactoryInterface_Package;


