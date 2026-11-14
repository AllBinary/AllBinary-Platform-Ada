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

with AllBinary_Java;
limited with org.allbinary.game.configuration.persistance.KeyValuePersistance_Package;
package org.allbinary.game.configuration.persistance.KeyValuePersistance_Package_References is
   type KeyValuePersistance_Access is access all org.allbinary.game.configuration.persistance.KeyValuePersistance_Package.KeyValuePersistance'Class;
   type KeyValuePersistance_Access_Array is array (Natural range <>) of KeyValuePersistance_Access;
   type KeyValuePersistance_Access_Array_Access is access all KeyValuePersistance_Access_Array;
   type KeyValuePersistance_Access_Array_Access_Array is array (Natural range <>) of KeyValuePersistance_Access_Array_Access;
   type KeyValuePersistance_Access_Array_Access_Array_Access is access all KeyValuePersistance_Access_Array_Access_Array;
   type KeyValuePersistance_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : KeyValuePersistance_Access_Array_Access;
   end record;
   function Java_Box (Value : KeyValuePersistance_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new KeyValuePersistance_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_KeyValuePersistance_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return KeyValuePersistance_Access_Array_Access is (if Value /= null and then Value.all in KeyValuePersistance_Access_Array_Object'Class then KeyValuePersistance_Access_Array_Object'Class (Value.all).Value else null);
   type KeyValuePersistance_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : KeyValuePersistance_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : KeyValuePersistance_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new KeyValuePersistance_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_KeyValuePersistance_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return KeyValuePersistance_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in KeyValuePersistance_Access_Array_Access_Array_Object'Class then KeyValuePersistance_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.configuration.persistance.KeyValuePersistance_Package_References;

with org.allbinary.game.configuration.persistance.KeyValuePersistance_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.TsUtil_Package;
with org.allbinary.TsUtil_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.game.configuration.persistance.BasicPersitance_Package; use org.allbinary.game.configuration.persistance.BasicPersitance_Package;

package org.allbinary.game.configuration.persistance.KeyValuePersistance_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package Reference_Types is
   subtype TsUtil_Access is org.allbinary.TsUtil_Package_References.TsUtil_Access;
   use type TsUtil_Access;
   subtype TsUtil_Access_Array is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array;
   use type TsUtil_Access_Array;
   subtype TsUtil_Access_Array_Access is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array_Access;
   use type TsUtil_Access_Array_Access;
   subtype TsUtil_Access_Array_Access_Array is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array_Access_Array;
   use type TsUtil_Access_Array_Access_Array;
   subtype TsUtil_Access_Array_Access_Array_Access is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array_Access_Array_Access;
   use type TsUtil_Access_Array_Access_Array_Access;
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype KeyValuePersistance_Access is org.allbinary.game.configuration.persistance.KeyValuePersistance_Package_References.KeyValuePersistance_Access;
   function "=" (Left, Right : KeyValuePersistance_Access) return Boolean renames org.allbinary.game.configuration.persistance.KeyValuePersistance_Package_References."=";
   subtype KeyValuePersistance_Access_Array is org.allbinary.game.configuration.persistance.KeyValuePersistance_Package_References.KeyValuePersistance_Access_Array;
   function "=" (Left, Right : KeyValuePersistance_Access_Array) return Boolean renames org.allbinary.game.configuration.persistance.KeyValuePersistance_Package_References."=";
   subtype KeyValuePersistance_Access_Array_Access is org.allbinary.game.configuration.persistance.KeyValuePersistance_Package_References.KeyValuePersistance_Access_Array_Access;
   function "=" (Left, Right : KeyValuePersistance_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.persistance.KeyValuePersistance_Package_References."=";
   function Java_Box (Value : KeyValuePersistance_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.persistance.KeyValuePersistance_Package_References.Java_Box;
   function Java_Unbox_KeyValuePersistance_Access_Array (Value : access Java_Object'Class) return KeyValuePersistance_Access_Array_Access renames org.allbinary.game.configuration.persistance.KeyValuePersistance_Package_References.Java_Unbox_KeyValuePersistance_Access_Array;
   subtype KeyValuePersistance_Access_Array_Access_Array is org.allbinary.game.configuration.persistance.KeyValuePersistance_Package_References.KeyValuePersistance_Access_Array_Access_Array;
   function "=" (Left, Right : KeyValuePersistance_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.persistance.KeyValuePersistance_Package_References."=";
   subtype KeyValuePersistance_Access_Array_Access_Array_Access is org.allbinary.game.configuration.persistance.KeyValuePersistance_Package_References.KeyValuePersistance_Access_Array_Access_Array_Access;
   function "=" (Left, Right : KeyValuePersistance_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.persistance.KeyValuePersistance_Package_References."=";
   function Java_Box (Value : KeyValuePersistance_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.persistance.KeyValuePersistance_Package_References.Java_Box;
   function Java_Unbox_KeyValuePersistance_Access_Array_Access_Array (Value : access Java_Object'Class) return KeyValuePersistance_Access_Array_Access_Array_Access renames org.allbinary.game.configuration.persistance.KeyValuePersistance_Package_References.Java_Unbox_KeyValuePersistance_Access_Array_Access_Array;

   type KeyValuePersistance is new BasicPersitance with record
      tsUtil : TsUtil_Access;
   end record;

   procedure Initialize (This : in out KeyValuePersistance'Class; recordId : Unbounded_String);
   function Create (recordId : Unbounded_String) return KeyValuePersistance_Access;
   procedure loadAll (This : in out KeyValuePersistance; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class);
   procedure loadAllSize (This : in out KeyValuePersistance; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; size : Integer);
   procedure save (This : in out KeyValuePersistance; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; hashtable_Param : access ABHashtable_Package.ABHashtable'Class);
   function get (This : in out KeyValuePersistance; index : Integer) return ABHashtable_Access;
   procedure get (This : in out KeyValuePersistance; index : Integer);

end org.allbinary.game.configuration.persistance.KeyValuePersistance_Package;


