--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.business.advertisement.GameAdStateFactory_Package;
package org.allbinary.business.advertisement.GameAdStateFactory_Package_References is
   type GameAdStateFactory_Access is access all org.allbinary.business.advertisement.GameAdStateFactory_Package.GameAdStateFactory'Class;
   type GameAdStateFactory_Access_Array is array (Natural range <>) of GameAdStateFactory_Access;
   type GameAdStateFactory_Access_Array_Access is access all GameAdStateFactory_Access_Array;
   type GameAdStateFactory_Access_Array_Access_Array is array (Natural range <>) of GameAdStateFactory_Access_Array_Access;
   type GameAdStateFactory_Access_Array_Access_Array_Access is access all GameAdStateFactory_Access_Array_Access_Array;
   type GameAdStateFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameAdStateFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : GameAdStateFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameAdStateFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameAdStateFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameAdStateFactory_Access_Array_Access is (if Value /= null and then Value.all in GameAdStateFactory_Access_Array_Object'Class then GameAdStateFactory_Access_Array_Object'Class (Value.all).Value else null);
   type GameAdStateFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameAdStateFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameAdStateFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameAdStateFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameAdStateFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameAdStateFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameAdStateFactory_Access_Array_Access_Array_Object'Class then GameAdStateFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.advertisement.GameAdStateFactory_Package_References;

with org.allbinary.business.advertisement.GameAdStateFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.GameAdState_Package;
with org.allbinary.game.GameAdState_Package_References;
limited with org.allbinary.logic.system.SoftwareInformation_Package;
with org.allbinary.logic.system.SoftwareInformation_Package_References;
with org.allbinary.business.advertisement.GameAdStateFactoryInterface_Package; use org.allbinary.business.advertisement.GameAdStateFactoryInterface_Package;
limited with org.allbinary.business.advertisement.GameAdStateBase_Package;
with org.allbinary.business.advertisement.GameAdStateBase_Package_References;

package org.allbinary.business.advertisement.GameAdStateFactory_Package is

   package GameAdState_Package renames Standard.org.allbinary.game.GameAdState_Package;
   package SoftwareInformation_Package renames Standard.org.allbinary.logic.system.SoftwareInformation_Package;
   package Reference_Types is
   subtype GameAdState_Access is org.allbinary.game.GameAdState_Package_References.GameAdState_Access;
   use type GameAdState_Access;
   subtype GameAdState_Access_Array is org.allbinary.game.GameAdState_Package_References.GameAdState_Access_Array;
   use type GameAdState_Access_Array;
   subtype GameAdState_Access_Array_Access is org.allbinary.game.GameAdState_Package_References.GameAdState_Access_Array_Access;
   use type GameAdState_Access_Array_Access;
   subtype GameAdState_Access_Array_Access_Array is org.allbinary.game.GameAdState_Package_References.GameAdState_Access_Array_Access_Array;
   use type GameAdState_Access_Array_Access_Array;
   subtype GameAdState_Access_Array_Access_Array_Access is org.allbinary.game.GameAdState_Package_References.GameAdState_Access_Array_Access_Array_Access;
   use type GameAdState_Access_Array_Access_Array_Access;
   subtype SoftwareInformation_Access is org.allbinary.logic.system.SoftwareInformation_Package_References.SoftwareInformation_Access;
   use type SoftwareInformation_Access;
   subtype SoftwareInformation_Access_Array is org.allbinary.logic.system.SoftwareInformation_Package_References.SoftwareInformation_Access_Array;
   use type SoftwareInformation_Access_Array;
   subtype SoftwareInformation_Access_Array_Access is org.allbinary.logic.system.SoftwareInformation_Package_References.SoftwareInformation_Access_Array_Access;
   use type SoftwareInformation_Access_Array_Access;
   subtype SoftwareInformation_Access_Array_Access_Array is org.allbinary.logic.system.SoftwareInformation_Package_References.SoftwareInformation_Access_Array_Access_Array;
   use type SoftwareInformation_Access_Array_Access_Array;
   subtype SoftwareInformation_Access_Array_Access_Array_Access is org.allbinary.logic.system.SoftwareInformation_Package_References.SoftwareInformation_Access_Array_Access_Array_Access;
   use type SoftwareInformation_Access_Array_Access_Array_Access;
   subtype GameAdStateBase_Access is org.allbinary.business.advertisement.GameAdStateBase_Package_References.GameAdStateBase_Access;
   use type GameAdStateBase_Access;
   subtype GameAdStateBase_Access_Array is org.allbinary.business.advertisement.GameAdStateBase_Package_References.GameAdStateBase_Access_Array;
   use type GameAdStateBase_Access_Array;
   subtype GameAdStateBase_Access_Array_Access is org.allbinary.business.advertisement.GameAdStateBase_Package_References.GameAdStateBase_Access_Array_Access;
   use type GameAdStateBase_Access_Array_Access;
   subtype GameAdStateBase_Access_Array_Access_Array is org.allbinary.business.advertisement.GameAdStateBase_Package_References.GameAdStateBase_Access_Array_Access_Array;
   use type GameAdStateBase_Access_Array_Access_Array;
   subtype GameAdStateBase_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.GameAdStateBase_Package_References.GameAdStateBase_Access_Array_Access_Array_Access;
   use type GameAdStateBase_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameAdStateFactory_Access is org.allbinary.business.advertisement.GameAdStateFactory_Package_References.GameAdStateFactory_Access;
   function "=" (Left, Right : GameAdStateFactory_Access) return Boolean renames org.allbinary.business.advertisement.GameAdStateFactory_Package_References."=";
   subtype GameAdStateFactory_Access_Array is org.allbinary.business.advertisement.GameAdStateFactory_Package_References.GameAdStateFactory_Access_Array;
   function "=" (Left, Right : GameAdStateFactory_Access_Array) return Boolean renames org.allbinary.business.advertisement.GameAdStateFactory_Package_References."=";
   subtype GameAdStateFactory_Access_Array_Access is org.allbinary.business.advertisement.GameAdStateFactory_Package_References.GameAdStateFactory_Access_Array_Access;
   function "=" (Left, Right : GameAdStateFactory_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.GameAdStateFactory_Package_References."=";
   function Java_Box (Value : GameAdStateFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.advertisement.GameAdStateFactory_Package_References.Java_Box;
   function Java_Unbox_GameAdStateFactory_Access_Array (Value : access Java_Object'Class) return GameAdStateFactory_Access_Array_Access renames org.allbinary.business.advertisement.GameAdStateFactory_Package_References.Java_Unbox_GameAdStateFactory_Access_Array;
   subtype GameAdStateFactory_Access_Array_Access_Array is org.allbinary.business.advertisement.GameAdStateFactory_Package_References.GameAdStateFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GameAdStateFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.GameAdStateFactory_Package_References."=";
   subtype GameAdStateFactory_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.GameAdStateFactory_Package_References.GameAdStateFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameAdStateFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.GameAdStateFactory_Package_References."=";
   function Java_Box (Value : GameAdStateFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.advertisement.GameAdStateFactory_Package_References.Java_Box;
   function Java_Unbox_GameAdStateFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return GameAdStateFactory_Access_Array_Access_Array_Access renames org.allbinary.business.advertisement.GameAdStateFactory_Package_References.Java_Unbox_GameAdStateFactory_Access_Array_Access_Array;

   type GameAdStateFactory is new Java_Object and GameAdStateFactoryInterface with record
      gameAdStateArray : GameAdState_Access_Array_Access;
      gameAdState : GameAdState_Access;
   end record;
   instance : GameAdStateFactory_Access;

   procedure Initialize (This : in out GameAdStateFactory'Class);
   function Create return GameAdStateFactory_Access;
   function getInstance return GameAdStateFactory_Access;
   function getCurrentInstance (This : in out GameAdStateFactory) return GameAdState_Access;
   function getInstanceForApp (This : in out GameAdStateFactory; softwareInformation_Param : access SoftwareInformation_Package.SoftwareInformation'Class) return GameAdStateBase_Access;
   procedure getInstanceForApp (This : in out GameAdStateFactory; softwareInformation_Param : access SoftwareInformation_Package.SoftwareInformation'Class);
   function isEnabled (This : in out GameAdStateFactory) return Boolean;

end org.allbinary.business.advertisement.GameAdStateFactory_Package;


