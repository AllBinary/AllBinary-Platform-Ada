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

limited with org.allbinary.logic.system.hardware.linux.PCComponentFactory_Package;
package org.allbinary.logic.system.hardware.linux.PCComponentFactory_Package_References is
   type PCComponentFactory_Access is access all org.allbinary.logic.system.hardware.linux.PCComponentFactory_Package.PCComponentFactory'Class;
   type PCComponentFactory_Access_Array is array (Natural range <>) of PCComponentFactory_Access;
   type PCComponentFactory_Access_Array_Access is access all PCComponentFactory_Access_Array;
   type PCComponentFactory_Access_Array_Access_Array is array (Natural range <>) of PCComponentFactory_Access_Array_Access;
   type PCComponentFactory_Access_Array_Access_Array_Access is access all PCComponentFactory_Access_Array_Access_Array;
end org.allbinary.logic.system.hardware.linux.PCComponentFactory_Package_References;

with org.allbinary.logic.system.hardware.linux.PCComponentFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.system.hardware.components.ComponentFactory_Package;
with org.allbinary.logic.system.hardware.components.ComponentFactory_Package_References;
limited with org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References;

package org.allbinary.logic.system.hardware.linux.PCComponentFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ComponentFactory_Package renames Standard.org.allbinary.logic.system.hardware.components.ComponentFactory_Package;
   package HardwareComponentInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
   package Reference_Types is
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
   subtype ComponentFactory_Access is org.allbinary.logic.system.hardware.components.ComponentFactory_Package_References.ComponentFactory_Access;
   use type ComponentFactory_Access;
   subtype ComponentFactory_Access_Array is org.allbinary.logic.system.hardware.components.ComponentFactory_Package_References.ComponentFactory_Access_Array;
   use type ComponentFactory_Access_Array;
   subtype ComponentFactory_Access_Array_Access is org.allbinary.logic.system.hardware.components.ComponentFactory_Package_References.ComponentFactory_Access_Array_Access;
   use type ComponentFactory_Access_Array_Access;
   subtype ComponentFactory_Access_Array_Access_Array is org.allbinary.logic.system.hardware.components.ComponentFactory_Package_References.ComponentFactory_Access_Array_Access_Array;
   use type ComponentFactory_Access_Array_Access_Array;
   subtype ComponentFactory_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.components.ComponentFactory_Package_References.ComponentFactory_Access_Array_Access_Array_Access;
   use type ComponentFactory_Access_Array_Access_Array_Access;
   subtype HardwareComponentInterface_Access is org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References.HardwareComponentInterface_Access;
   use type HardwareComponentInterface_Access;
   subtype HardwareComponentInterface_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References.HardwareComponentInterface_Access_Array;
   use type HardwareComponentInterface_Access_Array;
   subtype HardwareComponentInterface_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References.HardwareComponentInterface_Access_Array_Access;
   use type HardwareComponentInterface_Access_Array_Access;
   subtype HardwareComponentInterface_Access_Array_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References.HardwareComponentInterface_Access_Array_Access_Array;
   use type HardwareComponentInterface_Access_Array_Access_Array;
   subtype HardwareComponentInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References.HardwareComponentInterface_Access_Array_Access_Array_Access;
   use type HardwareComponentInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PCComponentFactory_Access is org.allbinary.logic.system.hardware.linux.PCComponentFactory_Package_References.PCComponentFactory_Access;
   function "=" (Left, Right : PCComponentFactory_Access) return Boolean renames org.allbinary.logic.system.hardware.linux.PCComponentFactory_Package_References."=";
   subtype PCComponentFactory_Access_Array is org.allbinary.logic.system.hardware.linux.PCComponentFactory_Package_References.PCComponentFactory_Access_Array;
   function "=" (Left, Right : PCComponentFactory_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.linux.PCComponentFactory_Package_References."=";
   subtype PCComponentFactory_Access_Array_Access is org.allbinary.logic.system.hardware.linux.PCComponentFactory_Package_References.PCComponentFactory_Access_Array_Access;
   function "=" (Left, Right : PCComponentFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.linux.PCComponentFactory_Package_References."=";
   subtype PCComponentFactory_Access_Array_Access_Array is org.allbinary.logic.system.hardware.linux.PCComponentFactory_Package_References.PCComponentFactory_Access_Array_Access_Array;
   function "=" (Left, Right : PCComponentFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.linux.PCComponentFactory_Package_References."=";
   subtype PCComponentFactory_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.linux.PCComponentFactory_Package_References.PCComponentFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PCComponentFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.linux.PCComponentFactory_Package_References."=";

   type PCComponentFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      componentFactory : ComponentFactory_Access;
   end record;
   instance : PCComponentFactory_Access;

   procedure Initialize (This : in out PCComponentFactory'Class);
   function Create return PCComponentFactory_Access;
   function getInstance return PCComponentFactory_Access;
   function getInstance (This : in out PCComponentFactory; component : Unbounded_String; componentData : Unbounded_String) return HardwareComponentInterface_Access;
   procedure getInstance (This : in out PCComponentFactory; component : Unbounded_String; componentData : Unbounded_String);
   function getComponentType (This : in out PCComponentFactory; component : Unbounded_String) return Unbounded_String;
   procedure getComponentType (This : in out PCComponentFactory; component : Unbounded_String);

end org.allbinary.logic.system.hardware.linux.PCComponentFactory_Package;


