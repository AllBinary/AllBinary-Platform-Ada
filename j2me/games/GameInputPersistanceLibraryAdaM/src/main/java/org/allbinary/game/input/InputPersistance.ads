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

limited with org.allbinary.game.input.InputPersistance_Package;
package org.allbinary.game.input.InputPersistance_Package_References is
   type InputPersistance_Access is access all org.allbinary.game.input.InputPersistance_Package.InputPersistance'Class;
   type InputPersistance_Access_Array is array (Natural range <>) of InputPersistance_Access;
   type InputPersistance_Access_Array_Access is access all InputPersistance_Access_Array;
   type InputPersistance_Access_Array_Access_Array is array (Natural range <>) of InputPersistance_Access_Array_Access;
   type InputPersistance_Access_Array_Access_Array_Access is access all InputPersistance_Access_Array_Access_Array;
end org.allbinary.game.input.InputPersistance_Package_References;

with org.allbinary.game.input.InputPersistance_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.ByteArrayInputStream_Package; use java.io.ByteArrayInputStream_Package;
limited with org.allbinary.TsUtil_Package;
with org.allbinary.TsUtil_Package_References;
with org.allbinary.game.configuration.persistance.BasicPersitance_Package; use org.allbinary.game.configuration.persistance.BasicPersitance_Package;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.util.HashtableUtil_Package;
with org.allbinary.util.HashtableUtil_Package_References;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;

package org.allbinary.game.input.InputPersistance_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package BasicPersitance_Package renames Standard.org.allbinary.game.configuration.persistance.BasicPersitance_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package HashtableUtil_Package renames Standard.org.allbinary.util.HashtableUtil_Package;
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
   subtype HashtableUtil_Access is org.allbinary.util.HashtableUtil_Package_References.HashtableUtil_Access;
   use type HashtableUtil_Access;
   subtype HashtableUtil_Access_Array is org.allbinary.util.HashtableUtil_Package_References.HashtableUtil_Access_Array;
   use type HashtableUtil_Access_Array;
   subtype HashtableUtil_Access_Array_Access is org.allbinary.util.HashtableUtil_Package_References.HashtableUtil_Access_Array_Access;
   use type HashtableUtil_Access_Array_Access;
   subtype HashtableUtil_Access_Array_Access_Array is org.allbinary.util.HashtableUtil_Package_References.HashtableUtil_Access_Array_Access_Array;
   use type HashtableUtil_Access_Array_Access_Array;
   subtype HashtableUtil_Access_Array_Access_Array_Access is org.allbinary.util.HashtableUtil_Package_References.HashtableUtil_Access_Array_Access_Array_Access;
   use type HashtableUtil_Access_Array_Access_Array_Access;
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


   subtype InputPersistance_Access is org.allbinary.game.input.InputPersistance_Package_References.InputPersistance_Access;
   function "=" (Left, Right : InputPersistance_Access) return Boolean renames org.allbinary.game.input.InputPersistance_Package_References."=";
   subtype InputPersistance_Access_Array is org.allbinary.game.input.InputPersistance_Package_References.InputPersistance_Access_Array;
   function "=" (Left, Right : InputPersistance_Access_Array) return Boolean renames org.allbinary.game.input.InputPersistance_Package_References."=";
   subtype InputPersistance_Access_Array_Access is org.allbinary.game.input.InputPersistance_Package_References.InputPersistance_Access_Array_Access;
   function "=" (Left, Right : InputPersistance_Access_Array_Access) return Boolean renames org.allbinary.game.input.InputPersistance_Package_References."=";
   subtype InputPersistance_Access_Array_Access_Array is org.allbinary.game.input.InputPersistance_Package_References.InputPersistance_Access_Array_Access_Array;
   function "=" (Left, Right : InputPersistance_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.InputPersistance_Package_References."=";
   subtype InputPersistance_Access_Array_Access_Array_Access is org.allbinary.game.input.InputPersistance_Package_References.InputPersistance_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputPersistance_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.InputPersistance_Package_References."=";

   type InputPersistance is new BasicPersitance with record
      tsUtil : TsUtil_Access;
      hashtableUtil : HashtableUtil_Access;
   end record;

   procedure Initialize (This : in out InputPersistance'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return InputPersistance_Access;
   procedure loadAll (This : in out InputPersistance; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class);
   procedure save (This : in out InputPersistance; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; hashtable_Param : access ABHashtable_Package.ABHashtable'Class);

end org.allbinary.game.input.InputPersistance_Package;


