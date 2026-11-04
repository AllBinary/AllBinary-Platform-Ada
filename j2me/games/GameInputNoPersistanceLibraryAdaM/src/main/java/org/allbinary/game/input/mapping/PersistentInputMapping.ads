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

limited with org.allbinary.game.input.mapping.PersistentInputMapping_Package;
package org.allbinary.game.input.mapping.PersistentInputMapping_Package_References is
   type PersistentInputMapping_Access is access all org.allbinary.game.input.mapping.PersistentInputMapping_Package.PersistentInputMapping'Class;
   type PersistentInputMapping_Access_Array is array (Natural range <>) of PersistentInputMapping_Access;
   type PersistentInputMapping_Access_Array_Access is access all PersistentInputMapping_Access_Array;
   type PersistentInputMapping_Access_Array_Access_Array is array (Natural range <>) of PersistentInputMapping_Access_Array_Access;
   type PersistentInputMapping_Access_Array_Access_Array_Access is access all PersistentInputMapping_Access_Array_Access_Array;
end org.allbinary.game.input.mapping.PersistentInputMapping_Package_References;

with org.allbinary.game.input.mapping.PersistentInputMapping_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.Input_Package_References;
limited with org.allbinary.game.input.InputPersistance_Package;
with org.allbinary.game.input.InputPersistance_Package_References;
limited with org.allbinary.game.input.mapping.event.InputMappingEvent_Package;
with org.allbinary.game.input.mapping.event.InputMappingEvent_Package_References;
limited with org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package;
with org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.util.EnumerationUtil_Package;
with org.allbinary.util.EnumerationUtil_Package_References;
limited with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References;

package org.allbinary.game.input.mapping.PersistentInputMapping_Package is

   package Input_Package renames Standard.org.allbinary.game.input.Input_Package;
   package InputPersistance_Package renames Standard.org.allbinary.game.input.InputPersistance_Package;
   package InputMappingEvent_Package renames Standard.org.allbinary.game.input.mapping.event.InputMappingEvent_Package;
   package InputMappingEventListenerInterface_Package renames Standard.org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package EnumerationUtil_Package renames Standard.org.allbinary.util.EnumerationUtil_Package;
   package Reference_Types is
   subtype Input_Access is org.allbinary.game.input.Input_Package_References.Input_Access;
   use type Input_Access;
   subtype Input_Access_Array is org.allbinary.game.input.Input_Package_References.Input_Access_Array;
   use type Input_Access_Array;
   subtype Input_Access_Array_Access is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access;
   use type Input_Access_Array_Access;
   subtype Input_Access_Array_Access_Array is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access_Array;
   use type Input_Access_Array_Access_Array;
   subtype Input_Access_Array_Access_Array_Access is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access_Array_Access;
   use type Input_Access_Array_Access_Array_Access;
   subtype InputPersistance_Access is org.allbinary.game.input.InputPersistance_Package_References.InputPersistance_Access;
   use type InputPersistance_Access;
   subtype InputPersistance_Access_Array is org.allbinary.game.input.InputPersistance_Package_References.InputPersistance_Access_Array;
   use type InputPersistance_Access_Array;
   subtype InputPersistance_Access_Array_Access is org.allbinary.game.input.InputPersistance_Package_References.InputPersistance_Access_Array_Access;
   use type InputPersistance_Access_Array_Access;
   subtype InputPersistance_Access_Array_Access_Array is org.allbinary.game.input.InputPersistance_Package_References.InputPersistance_Access_Array_Access_Array;
   use type InputPersistance_Access_Array_Access_Array;
   subtype InputPersistance_Access_Array_Access_Array_Access is org.allbinary.game.input.InputPersistance_Package_References.InputPersistance_Access_Array_Access_Array_Access;
   use type InputPersistance_Access_Array_Access_Array_Access;
   subtype InputMappingEvent_Access is org.allbinary.game.input.mapping.event.InputMappingEvent_Package_References.InputMappingEvent_Access;
   use type InputMappingEvent_Access;
   subtype InputMappingEvent_Access_Array is org.allbinary.game.input.mapping.event.InputMappingEvent_Package_References.InputMappingEvent_Access_Array;
   use type InputMappingEvent_Access_Array;
   subtype InputMappingEvent_Access_Array_Access is org.allbinary.game.input.mapping.event.InputMappingEvent_Package_References.InputMappingEvent_Access_Array_Access;
   use type InputMappingEvent_Access_Array_Access;
   subtype InputMappingEvent_Access_Array_Access_Array is org.allbinary.game.input.mapping.event.InputMappingEvent_Package_References.InputMappingEvent_Access_Array_Access_Array;
   use type InputMappingEvent_Access_Array_Access_Array;
   subtype InputMappingEvent_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.event.InputMappingEvent_Package_References.InputMappingEvent_Access_Array_Access_Array_Access;
   use type InputMappingEvent_Access_Array_Access_Array_Access;
   subtype InputMappingEventListenerInterface_Access is org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References.InputMappingEventListenerInterface_Access;
   use type InputMappingEventListenerInterface_Access;
   subtype InputMappingEventListenerInterface_Access_Array is org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References.InputMappingEventListenerInterface_Access_Array;
   use type InputMappingEventListenerInterface_Access_Array;
   subtype InputMappingEventListenerInterface_Access_Array_Access is org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References.InputMappingEventListenerInterface_Access_Array_Access;
   use type InputMappingEventListenerInterface_Access_Array_Access;
   subtype InputMappingEventListenerInterface_Access_Array_Access_Array is org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References.InputMappingEventListenerInterface_Access_Array_Access_Array;
   use type InputMappingEventListenerInterface_Access_Array_Access_Array;
   subtype InputMappingEventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References.InputMappingEventListenerInterface_Access_Array_Access_Array_Access;
   use type InputMappingEventListenerInterface_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype EnumerationUtil_Access is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access;
   use type EnumerationUtil_Access;
   subtype EnumerationUtil_Access_Array is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array;
   use type EnumerationUtil_Access_Array;
   subtype EnumerationUtil_Access_Array_Access is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array_Access;
   use type EnumerationUtil_Access_Array_Access;
   subtype EnumerationUtil_Access_Array_Access_Array is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array_Access_Array;
   use type EnumerationUtil_Access_Array_Access_Array;
   subtype EnumerationUtil_Access_Array_Access_Array_Access is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array_Access_Array_Access;
   use type EnumerationUtil_Access_Array_Access_Array_Access;
   subtype InputToGameKeyMapping_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access;
   use type InputToGameKeyMapping_Access;
   subtype InputToGameKeyMapping_Access_Array is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array;
   use type InputToGameKeyMapping_Access_Array;
   subtype InputToGameKeyMapping_Access_Array_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access;
   use type InputToGameKeyMapping_Access_Array_Access;
   subtype InputToGameKeyMapping_Access_Array_Access_Array is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access_Array;
   use type InputToGameKeyMapping_Access_Array_Access_Array;
   subtype InputToGameKeyMapping_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access_Array_Access;
   use type InputToGameKeyMapping_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PersistentInputMapping_Access is org.allbinary.game.input.mapping.PersistentInputMapping_Package_References.PersistentInputMapping_Access;
   function "=" (Left, Right : PersistentInputMapping_Access) return Boolean renames org.allbinary.game.input.mapping.PersistentInputMapping_Package_References."=";
   subtype PersistentInputMapping_Access_Array is org.allbinary.game.input.mapping.PersistentInputMapping_Package_References.PersistentInputMapping_Access_Array;
   function "=" (Left, Right : PersistentInputMapping_Access_Array) return Boolean renames org.allbinary.game.input.mapping.PersistentInputMapping_Package_References."=";
   subtype PersistentInputMapping_Access_Array_Access is org.allbinary.game.input.mapping.PersistentInputMapping_Package_References.PersistentInputMapping_Access_Array_Access;
   function "=" (Left, Right : PersistentInputMapping_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.PersistentInputMapping_Package_References."=";
   subtype PersistentInputMapping_Access_Array_Access_Array is org.allbinary.game.input.mapping.PersistentInputMapping_Package_References.PersistentInputMapping_Access_Array_Access_Array;
   function "=" (Left, Right : PersistentInputMapping_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.mapping.PersistentInputMapping_Package_References."=";
   subtype PersistentInputMapping_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.PersistentInputMapping_Package_References.PersistentInputMapping_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PersistentInputMapping_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.PersistentInputMapping_Package_References."=";

   type PersistentInputMapping is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      enumerationUtil : EnumerationUtil_Access;
      inputMapping : InputToGameKeyMapping_Access;
      inputMappingEventListenerInterface : InputMappingEventListenerInterface_Access;
      inputPersistance : InputPersistance_Access;
      inputMappingEvent : InputMappingEvent_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out PersistentInputMapping'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return PersistentInputMapping_Access;
   function getNullInstance return PersistentInputMapping_Access;
   function getTotalMapped (This : in out PersistentInputMapping) return Integer;
   function isDefaultNew (This : in out PersistentInputMapping) return Boolean;
   function getDefault (This : in out PersistentInputMapping) return InputToGameKeyMapping_Access;
   procedure setDefault (This : in out PersistentInputMapping; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class);
   procedure update (This : in out PersistentInputMapping; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class);
   procedure save (This : in out PersistentInputMapping; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class);
   procedure init (This : in out PersistentInputMapping; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class);
   procedure setInputMappingEventListenerInterface (This : in out PersistentInputMapping; inputMappingEventListenerInterface_Param : access InputMappingEventListenerInterface_Package.InputMappingEventListenerInterface'Class);
   function getInputMappingEventListenerInterface (This : in out PersistentInputMapping) return InputMappingEventListenerInterface_Access;
   function getInputMapping (This : in out PersistentInputMapping) return InputToGameKeyMapping_Access;
   function isDelete (This : in out PersistentInputMapping; input_Param : access Input_Package.Input'Class) return Boolean;
   procedure isDelete (This : in out PersistentInputMapping; input_Param : access Input_Package.Input'Class);
   function isSystemInput (This : in out PersistentInputMapping; input_Param : access Input_Package.Input'Class) return Boolean;
   procedure isSystemInput (This : in out PersistentInputMapping; input_Param : access Input_Package.Input'Class);

end org.allbinary.game.input.mapping.PersistentInputMapping_Package;


