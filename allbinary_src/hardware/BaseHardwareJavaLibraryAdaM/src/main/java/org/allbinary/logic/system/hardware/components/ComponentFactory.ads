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
limited with org.allbinary.logic.system.hardware.components.ComponentFactory_Package;
package org.allbinary.logic.system.hardware.components.ComponentFactory_Package_References is
   type ComponentFactory_Access is access all org.allbinary.logic.system.hardware.components.ComponentFactory_Package.ComponentFactory'Class;
   type ComponentFactory_Access_Array is array (Natural range <>) of ComponentFactory_Access;
   type ComponentFactory_Access_Array_Access is access all ComponentFactory_Access_Array;
   type ComponentFactory_Access_Array_Access_Array is array (Natural range <>) of ComponentFactory_Access_Array_Access;
   type ComponentFactory_Access_Array_Access_Array_Access is access all ComponentFactory_Access_Array_Access_Array;
   type ComponentFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ComponentFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : ComponentFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ComponentFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ComponentFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ComponentFactory_Access_Array_Access is (if Value /= null and then Value.all in ComponentFactory_Access_Array_Object'Class then ComponentFactory_Access_Array_Object'Class (Value.all).Value else null);
   type ComponentFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ComponentFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ComponentFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ComponentFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ComponentFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ComponentFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ComponentFactory_Access_Array_Access_Array_Object'Class then ComponentFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.hardware.components.ComponentFactory_Package_References;

with org.allbinary.logic.system.hardware.components.ComponentFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.system.hardware.components.Component_Package;
with org.allbinary.logic.system.hardware.components.Component_Package_References;

package org.allbinary.logic.system.hardware.components.ComponentFactory_Package is

   package Reference_Types is
   subtype Component_Access is org.allbinary.logic.system.hardware.components.Component_Package_References.Component_Access;
   use type Component_Access;
   subtype Component_Access_Array is org.allbinary.logic.system.hardware.components.Component_Package_References.Component_Access_Array;
   use type Component_Access_Array;
   subtype Component_Access_Array_Access is org.allbinary.logic.system.hardware.components.Component_Package_References.Component_Access_Array_Access;
   use type Component_Access_Array_Access;
   subtype Component_Access_Array_Access_Array is org.allbinary.logic.system.hardware.components.Component_Package_References.Component_Access_Array_Access_Array;
   use type Component_Access_Array_Access_Array;
   subtype Component_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.components.Component_Package_References.Component_Access_Array_Access_Array_Access;
   use type Component_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ComponentFactory_Access is org.allbinary.logic.system.hardware.components.ComponentFactory_Package_References.ComponentFactory_Access;
   function "=" (Left, Right : ComponentFactory_Access) return Boolean renames org.allbinary.logic.system.hardware.components.ComponentFactory_Package_References."=";
   subtype ComponentFactory_Access_Array is org.allbinary.logic.system.hardware.components.ComponentFactory_Package_References.ComponentFactory_Access_Array;
   function "=" (Left, Right : ComponentFactory_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.ComponentFactory_Package_References."=";
   subtype ComponentFactory_Access_Array_Access is org.allbinary.logic.system.hardware.components.ComponentFactory_Package_References.ComponentFactory_Access_Array_Access;
   function "=" (Left, Right : ComponentFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.ComponentFactory_Package_References."=";
   function Java_Box (Value : ComponentFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.hardware.components.ComponentFactory_Package_References.Java_Box;
   function Java_Unbox_ComponentFactory_Access_Array (Value : access Java_Object'Class) return ComponentFactory_Access_Array_Access renames org.allbinary.logic.system.hardware.components.ComponentFactory_Package_References.Java_Unbox_ComponentFactory_Access_Array;
   subtype ComponentFactory_Access_Array_Access_Array is org.allbinary.logic.system.hardware.components.ComponentFactory_Package_References.ComponentFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ComponentFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.ComponentFactory_Package_References."=";
   subtype ComponentFactory_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.components.ComponentFactory_Package_References.ComponentFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ComponentFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.ComponentFactory_Package_References."=";
   function Java_Box (Value : ComponentFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.hardware.components.ComponentFactory_Package_References.Java_Box;
   function Java_Unbox_ComponentFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return ComponentFactory_Access_Array_Access_Array_Access renames org.allbinary.logic.system.hardware.components.ComponentFactory_Package_References.Java_Unbox_ComponentFactory_Access_Array_Access_Array;

   type ComponentFactory is new Java_Object with record
      VGA : Component_Access;
      IDE : Component_Access;
      SCSI : Component_Access;
      BRIDGE : Component_Access;
      ETHERNET : Component_Access;
      USB : Component_Access;
      MULTIMEDIA : Component_Access;
      PCI : Component_Access;
      RAID : Component_Access;
      SMBUS : Component_Access;
      PIC : Component_Access;
      Class : Component_Access;
      UNKNOWN : Component_Access;
   end record;
   instance : ComponentFactory_Access;

   procedure Initialize (This : in out ComponentFactory'Class);
   function Create return ComponentFactory_Access;
   function getInstance return ComponentFactory_Access;

end org.allbinary.logic.system.hardware.components.ComponentFactory_Package;


