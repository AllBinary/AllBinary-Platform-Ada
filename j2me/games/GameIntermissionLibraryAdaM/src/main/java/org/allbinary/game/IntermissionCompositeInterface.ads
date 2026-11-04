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

limited with org.allbinary.game.IntermissionCompositeInterface_Package;
package org.allbinary.game.IntermissionCompositeInterface_Package_References is
   type IntermissionCompositeInterface_Access is access all org.allbinary.game.IntermissionCompositeInterface_Package.IntermissionCompositeInterface'Class;
   type IntermissionCompositeInterface_Access_Array is array (Natural range <>) of IntermissionCompositeInterface_Access;
   type IntermissionCompositeInterface_Access_Array_Access is access all IntermissionCompositeInterface_Access_Array;
   type IntermissionCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of IntermissionCompositeInterface_Access_Array_Access;
   type IntermissionCompositeInterface_Access_Array_Access_Array_Access is access all IntermissionCompositeInterface_Access_Array_Access_Array;
end org.allbinary.game.IntermissionCompositeInterface_Package_References;

with org.allbinary.game.IntermissionCompositeInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.IntermissionInterface_Package;
with org.allbinary.game.IntermissionInterface_Package_References;

package org.allbinary.game.IntermissionCompositeInterface_Package is

   package Reference_Types is
   subtype IntermissionInterface_Access is org.allbinary.game.IntermissionInterface_Package_References.IntermissionInterface_Access;
   use type IntermissionInterface_Access;
   subtype IntermissionInterface_Access_Array is org.allbinary.game.IntermissionInterface_Package_References.IntermissionInterface_Access_Array;
   use type IntermissionInterface_Access_Array;
   subtype IntermissionInterface_Access_Array_Access is org.allbinary.game.IntermissionInterface_Package_References.IntermissionInterface_Access_Array_Access;
   use type IntermissionInterface_Access_Array_Access;
   subtype IntermissionInterface_Access_Array_Access_Array is org.allbinary.game.IntermissionInterface_Package_References.IntermissionInterface_Access_Array_Access_Array;
   use type IntermissionInterface_Access_Array_Access_Array;
   subtype IntermissionInterface_Access_Array_Access_Array_Access is org.allbinary.game.IntermissionInterface_Package_References.IntermissionInterface_Access_Array_Access_Array_Access;
   use type IntermissionInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type IntermissionCompositeInterface is interface;
   subtype IntermissionCompositeInterface_Access is org.allbinary.game.IntermissionCompositeInterface_Package_References.IntermissionCompositeInterface_Access;
   function "=" (Left, Right : IntermissionCompositeInterface_Access) return Boolean renames org.allbinary.game.IntermissionCompositeInterface_Package_References."=";
   subtype IntermissionCompositeInterface_Access_Array is org.allbinary.game.IntermissionCompositeInterface_Package_References.IntermissionCompositeInterface_Access_Array;
   function "=" (Left, Right : IntermissionCompositeInterface_Access_Array) return Boolean renames org.allbinary.game.IntermissionCompositeInterface_Package_References."=";
   subtype IntermissionCompositeInterface_Access_Array_Access is org.allbinary.game.IntermissionCompositeInterface_Package_References.IntermissionCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : IntermissionCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.game.IntermissionCompositeInterface_Package_References."=";
   subtype IntermissionCompositeInterface_Access_Array_Access_Array is org.allbinary.game.IntermissionCompositeInterface_Package_References.IntermissionCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : IntermissionCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.IntermissionCompositeInterface_Package_References."=";
   subtype IntermissionCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.game.IntermissionCompositeInterface_Package_References.IntermissionCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : IntermissionCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.IntermissionCompositeInterface_Package_References."=";
   function Java_Object_Access_From_IntermissionCompositeInterface (Value : IntermissionCompositeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getStartIntermissionInterface (This : in out IntermissionCompositeInterface) return IntermissionInterface_Access is abstract;
   function getEndLevelIntermissionInterface (This : in out IntermissionCompositeInterface) return IntermissionInterface_Access is abstract;

end org.allbinary.game.IntermissionCompositeInterface_Package;


