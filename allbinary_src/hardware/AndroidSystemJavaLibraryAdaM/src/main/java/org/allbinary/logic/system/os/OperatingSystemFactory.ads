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
with org.allbinary.logic.system.os.android.AndroidOperatingSystemFactory_Package; use org.allbinary.logic.system.os.android.AndroidOperatingSystemFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.logic.system.os.OperatingSystemFactory_Package is

   package AndroidOperatingSystemFactory_Package renames org.allbinary.logic.system.os.android.AndroidOperatingSystemFactory_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type OperatingSystemFactory is tagged;
   type OperatingSystemFactory_Access is access all OperatingSystemFactory'Class;
   type OperatingSystemFactory_Access_Array is array (Natural range <>) of OperatingSystemFactory_Access;
   type OperatingSystemFactory_Access_Array_Access is access all OperatingSystemFactory_Access_Array;

   type OperatingSystemFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      genericOperatingSystem : GenericOperatingSystem_Access;
      hasDetected : Boolean;
   end record;
   instance : OperatingSystemFactory_Access;

   procedure Initialize (This : in out OperatingSystemFactory'Class);
   function Create return OperatingSystemFactory_Access;
   function getInstance return OperatingSystemFactory_Access;
   procedure getInstance;
   function getOperatingSystemInstance (This : in out OperatingSystemFactory) return GenericOperatingSystem_Access;
   procedure getOperatingSystemInstance (This : in out OperatingSystemFactory);

end org.allbinary.logic.system.os.OperatingSystemFactory_Package;


