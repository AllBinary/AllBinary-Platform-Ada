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
limited with org.allbinary.midlet.ProgressMidlet_Package;
package org.allbinary.midlet.ProgressMidlet_Package_References is
   type ProgressMidlet_Access is access all org.allbinary.midlet.ProgressMidlet_Package.ProgressMidlet'Class;
   type ProgressMidlet_Access_Array is array (Natural range <>) of ProgressMidlet_Access;
   type ProgressMidlet_Access_Array_Access is access all ProgressMidlet_Access_Array;
   type ProgressMidlet_Access_Array_Access_Array is array (Natural range <>) of ProgressMidlet_Access_Array_Access;
   type ProgressMidlet_Access_Array_Access_Array_Access is access all ProgressMidlet_Access_Array_Access_Array;
   type ProgressMidlet_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ProgressMidlet_Access_Array_Access;
   end record;
   function Java_Box (Value : ProgressMidlet_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ProgressMidlet_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ProgressMidlet_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ProgressMidlet_Access_Array_Access is (if Value /= null and then Value.all in ProgressMidlet_Access_Array_Object'Class then ProgressMidlet_Access_Array_Object'Class (Value.all).Value else null);
   type ProgressMidlet_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ProgressMidlet_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ProgressMidlet_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ProgressMidlet_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ProgressMidlet_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ProgressMidlet_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ProgressMidlet_Access_Array_Access_Array_Object'Class then ProgressMidlet_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.midlet.ProgressMidlet_Package_References;

with org.allbinary.midlet.ProgressMidlet_Package_References;
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
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package;
with org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References;
with org.allbinary.midlet.AllBinaryMidlet_Package; use org.allbinary.midlet.AllBinaryMidlet_Package;

package org.allbinary.midlet.ProgressMidlet_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package ClientInformationFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package;
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
   subtype ClientInformationFactory_Access is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access;
   use type ClientInformationFactory_Access;
   subtype ClientInformationFactory_Access_Array is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access_Array;
   use type ClientInformationFactory_Access_Array;
   subtype ClientInformationFactory_Access_Array_Access is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access_Array_Access;
   use type ClientInformationFactory_Access_Array_Access;
   subtype ClientInformationFactory_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access_Array_Access_Array;
   use type ClientInformationFactory_Access_Array_Access_Array;
   subtype ClientInformationFactory_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access_Array_Access_Array_Access;
   use type ClientInformationFactory_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ProgressMidlet_Access is org.allbinary.midlet.ProgressMidlet_Package_References.ProgressMidlet_Access;
   function "=" (Left, Right : ProgressMidlet_Access) return Boolean renames org.allbinary.midlet.ProgressMidlet_Package_References."=";
   subtype ProgressMidlet_Access_Array is org.allbinary.midlet.ProgressMidlet_Package_References.ProgressMidlet_Access_Array;
   function "=" (Left, Right : ProgressMidlet_Access_Array) return Boolean renames org.allbinary.midlet.ProgressMidlet_Package_References."=";
   subtype ProgressMidlet_Access_Array_Access is org.allbinary.midlet.ProgressMidlet_Package_References.ProgressMidlet_Access_Array_Access;
   function "=" (Left, Right : ProgressMidlet_Access_Array_Access) return Boolean renames org.allbinary.midlet.ProgressMidlet_Package_References."=";
   function Java_Box (Value : ProgressMidlet_Access_Array_Access) return Java_Object_Access renames org.allbinary.midlet.ProgressMidlet_Package_References.Java_Box;
   function Java_Unbox_ProgressMidlet_Access_Array (Value : access Java_Object'Class) return ProgressMidlet_Access_Array_Access renames org.allbinary.midlet.ProgressMidlet_Package_References.Java_Unbox_ProgressMidlet_Access_Array;
   subtype ProgressMidlet_Access_Array_Access_Array is org.allbinary.midlet.ProgressMidlet_Package_References.ProgressMidlet_Access_Array_Access_Array;
   function "=" (Left, Right : ProgressMidlet_Access_Array_Access_Array) return Boolean renames org.allbinary.midlet.ProgressMidlet_Package_References."=";
   subtype ProgressMidlet_Access_Array_Access_Array_Access is org.allbinary.midlet.ProgressMidlet_Package_References.ProgressMidlet_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProgressMidlet_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.midlet.ProgressMidlet_Package_References."=";
   function Java_Box (Value : ProgressMidlet_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.midlet.ProgressMidlet_Package_References.Java_Box;
   function Java_Unbox_ProgressMidlet_Access_Array_Access_Array (Value : access Java_Object'Class) return ProgressMidlet_Access_Array_Access_Array_Access renames org.allbinary.midlet.ProgressMidlet_Package_References.Java_Unbox_ProgressMidlet_Access_Array_Access_Array;

   type ProgressMidlet is new AllBinaryMidlet with record
      ProgressMidlet_Field_logUtil : LogUtil_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
   end record;

   procedure Initialize (This : in out ProgressMidlet'Class; clientInformationFactory_Param : access ClientInformationFactory_Package.ClientInformationFactory'Class);
   function Create (clientInformationFactory_Param : access ClientInformationFactory_Package.ClientInformationFactory'Class) return ProgressMidlet_Access;
   procedure preInit (This : in out ProgressMidlet);
   procedure exitProgress (This : in out ProgressMidlet; isProgress : Boolean);

end org.allbinary.midlet.ProgressMidlet_Package;


