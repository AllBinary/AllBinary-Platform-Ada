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
limited with org.allbinary.game.init.GameInitializationInterface_Package;
package org.allbinary.game.init.GameInitializationInterface_Package_References is
   type GameInitializationInterface_Access is access all org.allbinary.game.init.GameInitializationInterface_Package.GameInitializationInterface'Class;
   type GameInitializationInterface_Access_Array is array (Natural range <>) of GameInitializationInterface_Access;
   type GameInitializationInterface_Access_Array_Access is access all GameInitializationInterface_Access_Array;
   type GameInitializationInterface_Access_Array_Access_Array is array (Natural range <>) of GameInitializationInterface_Access_Array_Access;
   type GameInitializationInterface_Access_Array_Access_Array_Access is access all GameInitializationInterface_Access_Array_Access_Array;
   type GameInitializationInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameInitializationInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : GameInitializationInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameInitializationInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameInitializationInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameInitializationInterface_Access_Array_Access is (if Value /= null and then Value.all in GameInitializationInterface_Access_Array_Object'Class then GameInitializationInterface_Access_Array_Object'Class (Value.all).Value else null);
   type GameInitializationInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameInitializationInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameInitializationInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameInitializationInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameInitializationInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameInitializationInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameInitializationInterface_Access_Array_Access_Array_Object'Class then GameInitializationInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.init.GameInitializationInterface_Package_References;

with org.allbinary.game.init.GameInitializationInterface_Package_References;
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
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;

package org.allbinary.game.init.GameInitializationInterface_Package is

   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
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
   end Reference_Types;
   use Reference_Types;


   type GameInitializationInterface is interface;
   subtype GameInitializationInterface_Access is org.allbinary.game.init.GameInitializationInterface_Package_References.GameInitializationInterface_Access;
   function "=" (Left, Right : GameInitializationInterface_Access) return Boolean renames org.allbinary.game.init.GameInitializationInterface_Package_References."=";
   subtype GameInitializationInterface_Access_Array is org.allbinary.game.init.GameInitializationInterface_Package_References.GameInitializationInterface_Access_Array;
   function "=" (Left, Right : GameInitializationInterface_Access_Array) return Boolean renames org.allbinary.game.init.GameInitializationInterface_Package_References."=";
   subtype GameInitializationInterface_Access_Array_Access is org.allbinary.game.init.GameInitializationInterface_Package_References.GameInitializationInterface_Access_Array_Access;
   function "=" (Left, Right : GameInitializationInterface_Access_Array_Access) return Boolean renames org.allbinary.game.init.GameInitializationInterface_Package_References."=";
   function Java_Box (Value : GameInitializationInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.init.GameInitializationInterface_Package_References.Java_Box;
   function Java_Unbox_GameInitializationInterface_Access_Array (Value : access Java_Object'Class) return GameInitializationInterface_Access_Array_Access renames org.allbinary.game.init.GameInitializationInterface_Package_References.Java_Unbox_GameInitializationInterface_Access_Array;
   subtype GameInitializationInterface_Access_Array_Access_Array is org.allbinary.game.init.GameInitializationInterface_Package_References.GameInitializationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GameInitializationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.init.GameInitializationInterface_Package_References."=";
   subtype GameInitializationInterface_Access_Array_Access_Array_Access is org.allbinary.game.init.GameInitializationInterface_Package_References.GameInitializationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInitializationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.init.GameInitializationInterface_Package_References."=";
   function Java_Box (Value : GameInitializationInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.init.GameInitializationInterface_Package_References.Java_Box;
   function Java_Unbox_GameInitializationInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return GameInitializationInterface_Access_Array_Access_Array_Access renames org.allbinary.game.init.GameInitializationInterface_Package_References.Java_Unbox_GameInitializationInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_GameInitializationInterface (Value : GameInitializationInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure init (This : in out GameInitializationInterface; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; level : Integer) is abstract;

end org.allbinary.game.init.GameInitializationInterface_Package;


