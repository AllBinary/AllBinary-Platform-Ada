-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2007 AllBinary 
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

limited with org.allbinary.game.input.resource.TouchButtonUpgradeResource_Package;
package org.allbinary.game.input.resource.TouchButtonUpgradeResource_Package_References is
   type TouchButtonUpgradeResource_Access is access all org.allbinary.game.input.resource.TouchButtonUpgradeResource_Package.TouchButtonUpgradeResource'Class;
   type TouchButtonUpgradeResource_Access_Array is array (Natural range <>) of TouchButtonUpgradeResource_Access;
   type TouchButtonUpgradeResource_Access_Array_Access is access all TouchButtonUpgradeResource_Access_Array;
   type TouchButtonUpgradeResource_Access_Array_Access_Array is array (Natural range <>) of TouchButtonUpgradeResource_Access_Array_Access;
   type TouchButtonUpgradeResource_Access_Array_Access_Array_Access is access all TouchButtonUpgradeResource_Access_Array_Access_Array;
end org.allbinary.game.input.resource.TouchButtonUpgradeResource_Package_References;

with org.allbinary.game.input.resource.TouchButtonUpgradeResource_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.input.motion.button.TouchButtonResource_Package; use org.allbinary.input.motion.button.TouchButtonResource_Package;

package org.allbinary.game.input.resource.TouchButtonUpgradeResource_Package is

   package TouchButtonResource_Package renames Standard.org.allbinary.input.motion.button.TouchButtonResource_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TouchButtonUpgradeResource_Access is org.allbinary.game.input.resource.TouchButtonUpgradeResource_Package_References.TouchButtonUpgradeResource_Access;
   function "=" (Left, Right : TouchButtonUpgradeResource_Access) return Boolean renames org.allbinary.game.input.resource.TouchButtonUpgradeResource_Package_References."=";
   subtype TouchButtonUpgradeResource_Access_Array is org.allbinary.game.input.resource.TouchButtonUpgradeResource_Package_References.TouchButtonUpgradeResource_Access_Array;
   function "=" (Left, Right : TouchButtonUpgradeResource_Access_Array) return Boolean renames org.allbinary.game.input.resource.TouchButtonUpgradeResource_Package_References."=";
   subtype TouchButtonUpgradeResource_Access_Array_Access is org.allbinary.game.input.resource.TouchButtonUpgradeResource_Package_References.TouchButtonUpgradeResource_Access_Array_Access;
   function "=" (Left, Right : TouchButtonUpgradeResource_Access_Array_Access) return Boolean renames org.allbinary.game.input.resource.TouchButtonUpgradeResource_Package_References."=";
   subtype TouchButtonUpgradeResource_Access_Array_Access_Array is org.allbinary.game.input.resource.TouchButtonUpgradeResource_Package_References.TouchButtonUpgradeResource_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonUpgradeResource_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.resource.TouchButtonUpgradeResource_Package_References."=";
   subtype TouchButtonUpgradeResource_Access_Array_Access_Array_Access is org.allbinary.game.input.resource.TouchButtonUpgradeResource_Package_References.TouchButtonUpgradeResource_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonUpgradeResource_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.resource.TouchButtonUpgradeResource_Package_References."=";

   type TouchButtonUpgradeResource is new TouchButtonResource with null record;
   instance : TouchButtonResource_Access;

   procedure Initialize (This : in out TouchButtonUpgradeResource'Class);
   function Create return TouchButtonUpgradeResource_Access;
   function getInstance return TouchButtonResource_Access;

end org.allbinary.game.input.resource.TouchButtonUpgradeResource_Package;


