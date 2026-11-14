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
limited with org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchase_Package;
package org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchase_Package_References is
   type ThirdPartyInApplicationPurchase_Access is access all org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchase_Package.ThirdPartyInApplicationPurchase'Class;
   type ThirdPartyInApplicationPurchase_Access_Array is array (Natural range <>) of ThirdPartyInApplicationPurchase_Access;
   type ThirdPartyInApplicationPurchase_Access_Array_Access is access all ThirdPartyInApplicationPurchase_Access_Array;
   type ThirdPartyInApplicationPurchase_Access_Array_Access_Array is array (Natural range <>) of ThirdPartyInApplicationPurchase_Access_Array_Access;
   type ThirdPartyInApplicationPurchase_Access_Array_Access_Array_Access is access all ThirdPartyInApplicationPurchase_Access_Array_Access_Array;
   type ThirdPartyInApplicationPurchase_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ThirdPartyInApplicationPurchase_Access_Array_Access;
   end record;
   function Java_Box (Value : ThirdPartyInApplicationPurchase_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ThirdPartyInApplicationPurchase_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ThirdPartyInApplicationPurchase_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ThirdPartyInApplicationPurchase_Access_Array_Access is (if Value /= null and then Value.all in ThirdPartyInApplicationPurchase_Access_Array_Object'Class then ThirdPartyInApplicationPurchase_Access_Array_Object'Class (Value.all).Value else null);
   type ThirdPartyInApplicationPurchase_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ThirdPartyInApplicationPurchase_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ThirdPartyInApplicationPurchase_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ThirdPartyInApplicationPurchase_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ThirdPartyInApplicationPurchase_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ThirdPartyInApplicationPurchase_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ThirdPartyInApplicationPurchase_Access_Array_Access_Array_Object'Class then ThirdPartyInApplicationPurchase_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchase_Package_References;

with org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchase_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchaseInterface_Package; use org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchaseInterface_Package;
limited with org.allbinary.logic.system.security.licensing.LockableFeature_Package;
with org.allbinary.logic.system.security.licensing.LockableFeature_Package_References;

package org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchase_Package is

   package Reference_Types is
   subtype LockableFeature_Access is org.allbinary.logic.system.security.licensing.LockableFeature_Package_References.LockableFeature_Access;
   use type LockableFeature_Access;
   subtype LockableFeature_Access_Array is org.allbinary.logic.system.security.licensing.LockableFeature_Package_References.LockableFeature_Access_Array;
   use type LockableFeature_Access_Array;
   subtype LockableFeature_Access_Array_Access is org.allbinary.logic.system.security.licensing.LockableFeature_Package_References.LockableFeature_Access_Array_Access;
   use type LockableFeature_Access_Array_Access;
   subtype LockableFeature_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.LockableFeature_Package_References.LockableFeature_Access_Array_Access_Array;
   use type LockableFeature_Access_Array_Access_Array;
   subtype LockableFeature_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.LockableFeature_Package_References.LockableFeature_Access_Array_Access_Array_Access;
   use type LockableFeature_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ThirdPartyInApplicationPurchase_Access is org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchase_Package_References.ThirdPartyInApplicationPurchase_Access;
   function "=" (Left, Right : ThirdPartyInApplicationPurchase_Access) return Boolean renames org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchase_Package_References."=";
   subtype ThirdPartyInApplicationPurchase_Access_Array is org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchase_Package_References.ThirdPartyInApplicationPurchase_Access_Array;
   function "=" (Left, Right : ThirdPartyInApplicationPurchase_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchase_Package_References."=";
   subtype ThirdPartyInApplicationPurchase_Access_Array_Access is org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchase_Package_References.ThirdPartyInApplicationPurchase_Access_Array_Access;
   function "=" (Left, Right : ThirdPartyInApplicationPurchase_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchase_Package_References."=";
   function Java_Box (Value : ThirdPartyInApplicationPurchase_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchase_Package_References.Java_Box;
   function Java_Unbox_ThirdPartyInApplicationPurchase_Access_Array (Value : access Java_Object'Class) return ThirdPartyInApplicationPurchase_Access_Array_Access renames org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchase_Package_References.Java_Unbox_ThirdPartyInApplicationPurchase_Access_Array;
   subtype ThirdPartyInApplicationPurchase_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchase_Package_References.ThirdPartyInApplicationPurchase_Access_Array_Access_Array;
   function "=" (Left, Right : ThirdPartyInApplicationPurchase_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchase_Package_References."=";
   subtype ThirdPartyInApplicationPurchase_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchase_Package_References.ThirdPartyInApplicationPurchase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ThirdPartyInApplicationPurchase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchase_Package_References."=";
   function Java_Box (Value : ThirdPartyInApplicationPurchase_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchase_Package_References.Java_Box;
   function Java_Unbox_ThirdPartyInApplicationPurchase_Access_Array_Access_Array (Value : access Java_Object'Class) return ThirdPartyInApplicationPurchase_Access_Array_Access_Array_Access renames org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchase_Package_References.Java_Unbox_ThirdPartyInApplicationPurchase_Access_Array_Access_Array;

   type ThirdPartyInApplicationPurchase is new Java_Object and ThirdPartyInApplicationPurchaseInterface with null record;

   procedure Initialize (This : in out ThirdPartyInApplicationPurchase'Class);
   function Create return ThirdPartyInApplicationPurchase_Access;
   function isPurchased (This : in out ThirdPartyInApplicationPurchase; lockableFeature_Param : access LockableFeature_Package.LockableFeature'Class) return Boolean;
   procedure isPurchased (This : in out ThirdPartyInApplicationPurchase; lockableFeature_Param : access LockableFeature_Package.LockableFeature'Class);
   procedure onCreate (This : in out ThirdPartyInApplicationPurchase; anyType_Param : access Java_Object'Class; stateObject_Param : access Java_Object'Class);
   procedure onDestroy (This : in out ThirdPartyInApplicationPurchase);
   procedure onStart (This : in out ThirdPartyInApplicationPurchase);
   procedure onActivityResult (This : in out ThirdPartyInApplicationPurchase; requestCode : Integer; resultCode : Integer; dataObject_Param : access Java_Object'Class);
   procedure onSaveInstanceState (This : in out ThirdPartyInApplicationPurchase; anyType_Param : access Java_Object'Class);
   procedure onStop (This : in out ThirdPartyInApplicationPurchase);
   procedure requestPurchase (This : in out ThirdPartyInApplicationPurchase; lockableFeature_Param : access LockableFeature_Package.LockableFeature'Class);
   procedure requestReceipts (This : in out ThirdPartyInApplicationPurchase);
   procedure add (This : in out ThirdPartyInApplicationPurchase; lockableFeature_Param : access LockableFeature_Package.LockableFeature'Class);
   function getUserName (This : in out ThirdPartyInApplicationPurchase) return Unbounded_String;
   function isEnabled (This : in out ThirdPartyInApplicationPurchase) return Boolean;
   procedure requestProducts (This : in out ThirdPartyInApplicationPurchase);
   procedure onSaveInstanceState (This : in out ThirdPartyInApplicationPurchase; Value : Unbounded_String);

end org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchase_Package;


