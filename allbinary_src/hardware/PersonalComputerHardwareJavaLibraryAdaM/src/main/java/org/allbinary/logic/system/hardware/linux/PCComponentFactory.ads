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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
with org.allbinary.logic.system.hardware.components.ComponentFactory_Package; use org.allbinary.logic.system.hardware.components.ComponentFactory_Package;
with org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
with org.allbinary.logic.system.hardware.components.linux.Bridge_Package; use org.allbinary.logic.system.hardware.components.linux.Bridge_Package;
with org.allbinary.logic.system.hardware.components.linux.Ethernet_Package; use org.allbinary.logic.system.hardware.components.linux.Ethernet_Package;
with org.allbinary.logic.system.hardware.components.linux.HardDriveController_Package; use org.allbinary.logic.system.hardware.components.linux.HardDriveController_Package;
with org.allbinary.logic.system.hardware.components.linux.Media_Package; use org.allbinary.logic.system.hardware.components.linux.Media_Package;
with org.allbinary.logic.system.hardware.components.linux.PCI_Package; use org.allbinary.logic.system.hardware.components.linux.PCI_Package;
with org.allbinary.logic.system.hardware.components.linux.Unknown_Package; use org.allbinary.logic.system.hardware.components.linux.Unknown_Package;
with org.allbinary.logic.system.hardware.components.linux.Usb_Package; use org.allbinary.logic.system.hardware.components.linux.Usb_Package;
with org.allbinary.logic.system.hardware.components.linux.Video_Package; use org.allbinary.logic.system.hardware.components.linux.Video_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.logic.system.hardware.linux.PCComponentFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package LogConfigTypeFactory_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
   package LogConfigTypes_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
   package ComponentFactory_Package renames Standard.org.allbinary.logic.system.hardware.components.ComponentFactory_Package;
   package HardwareComponentInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
   package Bridge_Package renames Standard.org.allbinary.logic.system.hardware.components.linux.Bridge_Package;
   package Ethernet_Package renames Standard.org.allbinary.logic.system.hardware.components.linux.Ethernet_Package;
   package HardDriveController_Package renames Standard.org.allbinary.logic.system.hardware.components.linux.HardDriveController_Package;
   package Media_Package renames Standard.org.allbinary.logic.system.hardware.components.linux.Media_Package;
   package PCI_Package renames Standard.org.allbinary.logic.system.hardware.components.linux.PCI_Package;
   package Unknown_Package renames Standard.org.allbinary.logic.system.hardware.components.linux.Unknown_Package;
   package Usb_Package renames Standard.org.allbinary.logic.system.hardware.components.linux.Usb_Package;
   package Video_Package renames Standard.org.allbinary.logic.system.hardware.components.linux.Video_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type PCComponentFactory is tagged;
   type PCComponentFactory_Access is access all PCComponentFactory'Class;
   type PCComponentFactory_Access_Array is array (Natural range <>) of PCComponentFactory_Access;
   type PCComponentFactory_Access_Array_Access is access all PCComponentFactory_Access_Array;

   type PCComponentFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      componentFactory : ComponentFactory_Access;
   end record;
   instance : PCComponentFactory_Access;

   procedure Initialize (This : in out PCComponentFactory'Class);
   function Create return PCComponentFactory_Access;
   function getInstance return PCComponentFactory_Access;
   procedure getInstance;
   function getInstance (This : in out PCComponentFactory; component : Unbounded_String; componentData : Unbounded_String) return HardwareComponentInterface_Access;
   procedure getInstance (This : in out PCComponentFactory; component : Unbounded_String; componentData : Unbounded_String);
   function getComponentType (This : in out PCComponentFactory; component : Unbounded_String) return Unbounded_String;
   procedure getComponentType (This : in out PCComponentFactory; component : Unbounded_String);

end org.allbinary.logic.system.hardware.linux.PCComponentFactory_Package;


