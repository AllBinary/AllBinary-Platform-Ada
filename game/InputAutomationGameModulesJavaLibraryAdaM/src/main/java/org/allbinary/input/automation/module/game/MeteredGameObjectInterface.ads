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

limited with org.allbinary.input.automation.module.game.MeteredGameObjectInterface_Package;
package org.allbinary.input.automation.module.game.MeteredGameObjectInterface_Package_References is
   type MeteredGameObjectInterface_Access is access all org.allbinary.input.automation.module.game.MeteredGameObjectInterface_Package.MeteredGameObjectInterface'Class;
   type MeteredGameObjectInterface_Access_Array is array (Natural range <>) of MeteredGameObjectInterface_Access;
   type MeteredGameObjectInterface_Access_Array_Access is access all MeteredGameObjectInterface_Access_Array;
   type MeteredGameObjectInterface_Access_Array_Access_Array is array (Natural range <>) of MeteredGameObjectInterface_Access_Array_Access;
   type MeteredGameObjectInterface_Access_Array_Access_Array_Access is access all MeteredGameObjectInterface_Access_Array_Access_Array;
end org.allbinary.input.automation.module.game.MeteredGameObjectInterface_Package_References;

with org.allbinary.input.automation.module.game.MeteredGameObjectInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.input.automation.module.game.MeteredGameObjectInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type MeteredGameObjectInterface is interface;
   subtype MeteredGameObjectInterface_Access is org.allbinary.input.automation.module.game.MeteredGameObjectInterface_Package_References.MeteredGameObjectInterface_Access;
   function "=" (Left, Right : MeteredGameObjectInterface_Access) return Boolean renames org.allbinary.input.automation.module.game.MeteredGameObjectInterface_Package_References."=";
   subtype MeteredGameObjectInterface_Access_Array is org.allbinary.input.automation.module.game.MeteredGameObjectInterface_Package_References.MeteredGameObjectInterface_Access_Array;
   function "=" (Left, Right : MeteredGameObjectInterface_Access_Array) return Boolean renames org.allbinary.input.automation.module.game.MeteredGameObjectInterface_Package_References."=";
   subtype MeteredGameObjectInterface_Access_Array_Access is org.allbinary.input.automation.module.game.MeteredGameObjectInterface_Package_References.MeteredGameObjectInterface_Access_Array_Access;
   function "=" (Left, Right : MeteredGameObjectInterface_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.game.MeteredGameObjectInterface_Package_References."=";
   subtype MeteredGameObjectInterface_Access_Array_Access_Array is org.allbinary.input.automation.module.game.MeteredGameObjectInterface_Package_References.MeteredGameObjectInterface_Access_Array_Access_Array;
   function "=" (Left, Right : MeteredGameObjectInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.game.MeteredGameObjectInterface_Package_References."=";
   subtype MeteredGameObjectInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.game.MeteredGameObjectInterface_Package_References.MeteredGameObjectInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MeteredGameObjectInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.game.MeteredGameObjectInterface_Package_References."=";
   function Java_Object_Access_From_MeteredGameObjectInterface (Value : MeteredGameObjectInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getRatios (This : in out MeteredGameObjectInterface) return Long_Float_Array_Access is abstract;
   function isGood (This : in out MeteredGameObjectInterface) return Boolean is abstract;
   function isDropping (This : in out MeteredGameObjectInterface) return Boolean is abstract;

end org.allbinary.input.automation.module.game.MeteredGameObjectInterface_Package;


