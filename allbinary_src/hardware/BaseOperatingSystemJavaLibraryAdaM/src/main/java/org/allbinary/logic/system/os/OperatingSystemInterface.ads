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

limited with org.allbinary.logic.system.os.OperatingSystemInterface_Package;
package org.allbinary.logic.system.os.OperatingSystemInterface_Package_References is
   type OperatingSystemInterface_Access is access all org.allbinary.logic.system.os.OperatingSystemInterface_Package.OperatingSystemInterface'Class;
   type OperatingSystemInterface_Access_Array is array (Natural range <>) of OperatingSystemInterface_Access;
   type OperatingSystemInterface_Access_Array_Access is access all OperatingSystemInterface_Access_Array;
   type OperatingSystemInterface_Access_Array_Access_Array is array (Natural range <>) of OperatingSystemInterface_Access_Array_Access;
   type OperatingSystemInterface_Access_Array_Access_Array_Access is access all OperatingSystemInterface_Access_Array_Access_Array;
end org.allbinary.logic.system.os.OperatingSystemInterface_Package_References;

with org.allbinary.logic.system.os.OperatingSystemInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package_References;

package org.allbinary.logic.system.os.OperatingSystemInterface_Package is

   package CharacterSet_Package renames Standard.org.allbinary.logic.java.character_Id.CharacterSet_Package;
   package Reference_Types is
   subtype CharacterSet_Access is org.allbinary.logic.java.character_Id.CharacterSet_Package_References.CharacterSet_Access;
   use type CharacterSet_Access;
   subtype CharacterSet_Access_Array is org.allbinary.logic.java.character_Id.CharacterSet_Package_References.CharacterSet_Access_Array;
   use type CharacterSet_Access_Array;
   subtype CharacterSet_Access_Array_Access is org.allbinary.logic.java.character_Id.CharacterSet_Package_References.CharacterSet_Access_Array_Access;
   use type CharacterSet_Access_Array_Access;
   subtype CharacterSet_Access_Array_Access_Array is org.allbinary.logic.java.character_Id.CharacterSet_Package_References.CharacterSet_Access_Array_Access_Array;
   use type CharacterSet_Access_Array_Access_Array;
   subtype CharacterSet_Access_Array_Access_Array_Access is org.allbinary.logic.java.character_Id.CharacterSet_Package_References.CharacterSet_Access_Array_Access_Array_Access;
   use type CharacterSet_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type OperatingSystemInterface is interface;
   subtype OperatingSystemInterface_Access is org.allbinary.logic.system.os.OperatingSystemInterface_Package_References.OperatingSystemInterface_Access;
   function "=" (Left, Right : OperatingSystemInterface_Access) return Boolean renames org.allbinary.logic.system.os.OperatingSystemInterface_Package_References."=";
   subtype OperatingSystemInterface_Access_Array is org.allbinary.logic.system.os.OperatingSystemInterface_Package_References.OperatingSystemInterface_Access_Array;
   function "=" (Left, Right : OperatingSystemInterface_Access_Array) return Boolean renames org.allbinary.logic.system.os.OperatingSystemInterface_Package_References."=";
   subtype OperatingSystemInterface_Access_Array_Access is org.allbinary.logic.system.os.OperatingSystemInterface_Package_References.OperatingSystemInterface_Access_Array_Access;
   function "=" (Left, Right : OperatingSystemInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.os.OperatingSystemInterface_Package_References."=";
   subtype OperatingSystemInterface_Access_Array_Access_Array is org.allbinary.logic.system.os.OperatingSystemInterface_Package_References.OperatingSystemInterface_Access_Array_Access_Array;
   function "=" (Left, Right : OperatingSystemInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.os.OperatingSystemInterface_Package_References."=";
   subtype OperatingSystemInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.os.OperatingSystemInterface_Package_References.OperatingSystemInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OperatingSystemInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.os.OperatingSystemInterface_Package_References."=";
   function Java_Object_Access_From_OperatingSystemInterface (Value : OperatingSystemInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getName (This : in out OperatingSystemInterface) return Unbounded_String is abstract;
   function getVersion (This : in out OperatingSystemInterface) return Unbounded_String is abstract;
   function getArch (This : in out OperatingSystemInterface) return Unbounded_String is abstract;
   function getCharacterSet (This : in out OperatingSystemInterface) return CharacterSet_Access is abstract;
   function isOverScan (This : in out OperatingSystemInterface) return Boolean is abstract;
   function getOverScanXPercent (This : in out OperatingSystemInterface) return Integer is abstract;
   function getOverScanYPercent (This : in out OperatingSystemInterface) return Integer is abstract;
   function isScalable (This : in out OperatingSystemInterface) return Boolean is abstract;
   function isAutoHide (This : in out OperatingSystemInterface) return Boolean is abstract;
   function toString (This : in out OperatingSystemInterface) return Unbounded_String is abstract;

end org.allbinary.logic.system.os.OperatingSystemInterface_Package;


