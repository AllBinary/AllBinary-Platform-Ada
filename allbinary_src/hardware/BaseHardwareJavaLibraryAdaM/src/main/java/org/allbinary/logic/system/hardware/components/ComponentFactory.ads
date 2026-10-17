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
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.system.hardware.components.Component_Package; use org.allbinary.logic.system.hardware.components.Component_Package;

package org.allbinary.logic.system.hardware.components.ComponentFactory_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type ComponentFactory is tagged;
   type ComponentFactory_Access is access all ComponentFactory'Class;
   type ComponentFactory_Access_Array is array (Natural range <>) of ComponentFactory_Access;
   type ComponentFactory_Access_Array_Access is access all ComponentFactory_Access_Array;

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


