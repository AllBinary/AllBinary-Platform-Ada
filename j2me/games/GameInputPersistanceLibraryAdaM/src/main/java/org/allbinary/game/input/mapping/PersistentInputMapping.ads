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
--  with java.util.Enumeration_Package; use java.util.Enumeration_Package;
with org.allbinary.game.configuration.persistance.GamePersistanceStrings_Package; use org.allbinary.game.configuration.persistance.GamePersistanceStrings_Package;
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.InputPersistance_Package; use org.allbinary.game.input.InputPersistance_Package;
with org.allbinary.game.input.mapping.event.InputMappingEvent_Package; use org.allbinary.game.input.mapping.event.InputMappingEvent_Package;
with org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package; use org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package;
with org.allbinary.game.input.mapping.event.NullInputMappingEventListener_Package; use org.allbinary.game.input.mapping.event.NullInputMappingEventListener_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.EnumerationUtil_Package; use org.allbinary.util.EnumerationUtil_Package;

package org.allbinary.game.input.mapping.PersistentInputMapping_Package is

   package GamePersistanceStrings_Package renames org.allbinary.game.configuration.persistance.GamePersistanceStrings_Package;
   package Input_Package renames org.allbinary.game.input.Input_Package;
   package InputPersistance_Package renames org.allbinary.game.input.InputPersistance_Package;
   package InputMappingEvent_Package renames org.allbinary.game.input.mapping.event.InputMappingEvent_Package;
   package InputMappingEventListenerInterface_Package renames org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package;
   package NullInputMappingEventListener_Package renames org.allbinary.game.input.mapping.event.NullInputMappingEventListener_Package;
   package NullUtil_Package renames org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package PreLogUtil_Package renames org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package AbeClientInformationInterface_Package renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package ABHashtable_Package renames org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package EnumerationUtil_Package renames org.allbinary.util.EnumerationUtil_Package;

   type PersistentInputMapping is tagged;
   type PersistentInputMapping_Access is access all PersistentInputMapping'Class;
   type PersistentInputMapping_Access_Array is array (Natural range <>) of PersistentInputMapping_Access;
   type PersistentInputMapping_Access_Array_Access is access all PersistentInputMapping_Access_Array;

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
   procedure getNullInstance;
   function getTotalMapped (This : in out PersistentInputMapping) return Integer;
   procedure getTotalMapped (This : in out PersistentInputMapping);
   function isDefaultNew (This : in out PersistentInputMapping) return Boolean;
   procedure isDefaultNew (This : in out PersistentInputMapping);
   function getDefault (This : in out PersistentInputMapping) return InputToGameKeyMapping_Access;
   procedure getDefault (This : in out PersistentInputMapping);
   procedure setDefault (This : in out PersistentInputMapping; abeClientInformation : AbeClientInformationInterface_Access);
   procedure update (This : in out PersistentInputMapping; abeClientInformation : AbeClientInformationInterface_Access);
   procedure save (This : in out PersistentInputMapping; abeClientInformation : AbeClientInformationInterface_Access);
   procedure init (This : in out PersistentInputMapping; abeClientInformation : AbeClientInformationInterface_Access);
   procedure setInputMappingEventListenerInterface (This : in out PersistentInputMapping; inputMappingEventListenerInterface : InputMappingEventListenerInterface_Access);
   function getInputMappingEventListenerInterface (This : in out PersistentInputMapping) return InputMappingEventListenerInterface_Access;
   procedure getInputMappingEventListenerInterface (This : in out PersistentInputMapping);
   function getInputMapping (This : in out PersistentInputMapping) return InputToGameKeyMapping_Access;
   procedure getInputMapping (This : in out PersistentInputMapping);
   function isDelete (This : in out PersistentInputMapping; input : Input_Access) return Boolean;
   procedure isDelete (This : in out PersistentInputMapping; input : Input_Access);
   function isSystemInput (This : in out PersistentInputMapping; input : Input_Access) return Boolean;
   procedure isSystemInput (This : in out PersistentInputMapping; input : Input_Access);

end org.allbinary.game.input.mapping.PersistentInputMapping_Package;


