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
--  with java.lang.reflect.Constructor_Package; use java.lang.reflect.Constructor_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

package org.allbinary.logic.system.loader.AbeFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

   type AbeFactory is tagged;
   type AbeFactory_Access is access all AbeFactory'Class;
   type AbeFactory_Access_Array is array (Natural range <>) of AbeFactory_Access;
   type AbeFactory_Access_Array_Access is access all AbeFactory_Access_Array;
   type AbeFactory_Access_Array_Access_Array is array (Natural range <>) of AbeFactory_Access_Array_Access;
   type AbeFactory_Access_Array_Access_Array_Access is access all AbeFactory_Access_Array_Access_Array;

   type AbeFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      useCustomLoader : Boolean;
   end record;
   instance : AbeFactory_Access;

   procedure Initialize (This : in out AbeFactory'Class);
   function Create return AbeFactory_Access;
   function getInstance return AbeFactory_Access;
   function getInstance (This : in out AbeFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; className : Unbounded_String) return Java_Object_Access;
   procedure getInstance (This : in out AbeFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; className : Unbounded_String);
   function getInstance (This : in out AbeFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; className : Unbounded_String; classes : Ada_Tags_Tag_Array_Access; params : Java_Object_Access_Array_Access) return Java_Object_Access;
   procedure getInstance (This : in out AbeFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; className : Unbounded_String; classes : Ada_Tags_Tag_Array_Access; params : Java_Object_Access_Array_Access);
   function getClass (This : in out AbeFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; className : Unbounded_String) return Ada.Tags.Tag;
   procedure getClass (This : in out AbeFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; className : Unbounded_String);

end org.allbinary.logic.system.loader.AbeFactory_Package;


