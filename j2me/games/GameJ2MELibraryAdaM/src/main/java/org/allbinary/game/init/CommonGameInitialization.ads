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
limited with org.allbinary.game.init.CommonGameInitialization_Package;
package org.allbinary.game.init.CommonGameInitialization_Package_References is
   type CommonGameInitialization_Access is access all org.allbinary.game.init.CommonGameInitialization_Package.CommonGameInitialization'Class;
   type CommonGameInitialization_Access_Array is array (Natural range <>) of CommonGameInitialization_Access;
   type CommonGameInitialization_Access_Array_Access is access all CommonGameInitialization_Access_Array;
   type CommonGameInitialization_Access_Array_Access_Array is array (Natural range <>) of CommonGameInitialization_Access_Array_Access;
   type CommonGameInitialization_Access_Array_Access_Array_Access is access all CommonGameInitialization_Access_Array_Access_Array;
   type CommonGameInitialization_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CommonGameInitialization_Access_Array_Access;
   end record;
   function Java_Box (Value : CommonGameInitialization_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CommonGameInitialization_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CommonGameInitialization_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CommonGameInitialization_Access_Array_Access is (if Value /= null and then Value.all in CommonGameInitialization_Access_Array_Object'Class then CommonGameInitialization_Access_Array_Object'Class (Value.all).Value else null);
   type CommonGameInitialization_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CommonGameInitialization_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CommonGameInitialization_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CommonGameInitialization_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CommonGameInitialization_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CommonGameInitialization_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CommonGameInitialization_Access_Array_Access_Array_Object'Class then CommonGameInitialization_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.init.CommonGameInitialization_Package_References;

with org.allbinary.game.init.CommonGameInitialization_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.CommandListener_Package_References;
limited with org.allbinary.game.resource.ResourceInitialization_Package;
with org.allbinary.game.resource.ResourceInitialization_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.game.init.BaseGameInitialization_Package; use org.allbinary.game.init.BaseGameInitialization_Package;

package org.allbinary.game.init.CommonGameInitialization_Package is

   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package ResourceInitialization_Package renames Standard.org.allbinary.game.resource.ResourceInitialization_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype CommandListener_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access;
   use type CommandListener_Access;
   subtype CommandListener_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array;
   use type CommandListener_Access_Array;
   subtype CommandListener_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access;
   use type CommandListener_Access_Array_Access;
   subtype CommandListener_Access_Array_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array;
   use type CommandListener_Access_Array_Access_Array;
   subtype CommandListener_Access_Array_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array_Access;
   use type CommandListener_Access_Array_Access_Array_Access;
   subtype ResourceInitialization_Access is org.allbinary.game.resource.ResourceInitialization_Package_References.ResourceInitialization_Access;
   use type ResourceInitialization_Access;
   subtype ResourceInitialization_Access_Array is org.allbinary.game.resource.ResourceInitialization_Package_References.ResourceInitialization_Access_Array;
   use type ResourceInitialization_Access_Array;
   subtype ResourceInitialization_Access_Array_Access is org.allbinary.game.resource.ResourceInitialization_Package_References.ResourceInitialization_Access_Array_Access;
   use type ResourceInitialization_Access_Array_Access;
   subtype ResourceInitialization_Access_Array_Access_Array is org.allbinary.game.resource.ResourceInitialization_Package_References.ResourceInitialization_Access_Array_Access_Array;
   use type ResourceInitialization_Access_Array_Access_Array;
   subtype ResourceInitialization_Access_Array_Access_Array_Access is org.allbinary.game.resource.ResourceInitialization_Package_References.ResourceInitialization_Access_Array_Access_Array_Access;
   use type ResourceInitialization_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype CommonGameInitialization_Access is org.allbinary.game.init.CommonGameInitialization_Package_References.CommonGameInitialization_Access;
   function "=" (Left, Right : CommonGameInitialization_Access) return Boolean renames org.allbinary.game.init.CommonGameInitialization_Package_References."=";
   subtype CommonGameInitialization_Access_Array is org.allbinary.game.init.CommonGameInitialization_Package_References.CommonGameInitialization_Access_Array;
   function "=" (Left, Right : CommonGameInitialization_Access_Array) return Boolean renames org.allbinary.game.init.CommonGameInitialization_Package_References."=";
   subtype CommonGameInitialization_Access_Array_Access is org.allbinary.game.init.CommonGameInitialization_Package_References.CommonGameInitialization_Access_Array_Access;
   function "=" (Left, Right : CommonGameInitialization_Access_Array_Access) return Boolean renames org.allbinary.game.init.CommonGameInitialization_Package_References."=";
   function Java_Box (Value : CommonGameInitialization_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.init.CommonGameInitialization_Package_References.Java_Box;
   function Java_Unbox_CommonGameInitialization_Access_Array (Value : access Java_Object'Class) return CommonGameInitialization_Access_Array_Access renames org.allbinary.game.init.CommonGameInitialization_Package_References.Java_Unbox_CommonGameInitialization_Access_Array;
   subtype CommonGameInitialization_Access_Array_Access_Array is org.allbinary.game.init.CommonGameInitialization_Package_References.CommonGameInitialization_Access_Array_Access_Array;
   function "=" (Left, Right : CommonGameInitialization_Access_Array_Access_Array) return Boolean renames org.allbinary.game.init.CommonGameInitialization_Package_References."=";
   subtype CommonGameInitialization_Access_Array_Access_Array_Access is org.allbinary.game.init.CommonGameInitialization_Package_References.CommonGameInitialization_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonGameInitialization_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.init.CommonGameInitialization_Package_References."=";
   function Java_Box (Value : CommonGameInitialization_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.init.CommonGameInitialization_Package_References.Java_Box;
   function Java_Unbox_CommonGameInitialization_Access_Array_Access_Array (Value : access Java_Object'Class) return CommonGameInitialization_Access_Array_Access_Array_Access renames org.allbinary.game.init.CommonGameInitialization_Package_References.Java_Unbox_CommonGameInitialization_Access_Array_Access_Array;

   type CommonGameInitialization is new BaseGameInitialization with record
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out CommonGameInitialization'Class; resourceInitializationArray : ResourceInitialization_Access_Array_Access; portion : Integer);
   function Create (resourceInitializationArray : ResourceInitialization_Access_Array_Access; portion : Integer) return CommonGameInitialization_Access;
   procedure init (This : in out CommonGameInitialization; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; level : Integer);
   procedure initGame (This : in out CommonGameInitialization);

end org.allbinary.game.init.CommonGameInitialization_Package;


