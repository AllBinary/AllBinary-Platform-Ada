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
limited with org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchaseInterface_Package;
package org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchaseInterface_Package_References is
   type ThirdPartyInApplicationPurchaseInterface_Access is access all org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchaseInterface_Package.ThirdPartyInApplicationPurchaseInterface'Class;
   type ThirdPartyInApplicationPurchaseInterface_Access_Array is array (Natural range <>) of ThirdPartyInApplicationPurchaseInterface_Access;
   type ThirdPartyInApplicationPurchaseInterface_Access_Array_Access is access all ThirdPartyInApplicationPurchaseInterface_Access_Array;
   type ThirdPartyInApplicationPurchaseInterface_Access_Array_Access_Array is array (Natural range <>) of ThirdPartyInApplicationPurchaseInterface_Access_Array_Access;
   type ThirdPartyInApplicationPurchaseInterface_Access_Array_Access_Array_Access is access all ThirdPartyInApplicationPurchaseInterface_Access_Array_Access_Array;
   type ThirdPartyInApplicationPurchaseInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ThirdPartyInApplicationPurchaseInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : ThirdPartyInApplicationPurchaseInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ThirdPartyInApplicationPurchaseInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ThirdPartyInApplicationPurchaseInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ThirdPartyInApplicationPurchaseInterface_Access_Array_Access is (if Value /= null and then Value.all in ThirdPartyInApplicationPurchaseInterface_Access_Array_Object'Class then ThirdPartyInApplicationPurchaseInterface_Access_Array_Object'Class (Value.all).Value else null);
   type ThirdPartyInApplicationPurchaseInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ThirdPartyInApplicationPurchaseInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ThirdPartyInApplicationPurchaseInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ThirdPartyInApplicationPurchaseInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ThirdPartyInApplicationPurchaseInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ThirdPartyInApplicationPurchaseInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ThirdPartyInApplicationPurchaseInterface_Access_Array_Access_Array_Object'Class then ThirdPartyInApplicationPurchaseInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchaseInterface_Package_References;

with org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchaseInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.system.security.licensing.LockableFeature_Package;
with org.allbinary.logic.system.security.licensing.LockableFeature_Package_References;

package org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchaseInterface_Package is

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


   type ThirdPartyInApplicationPurchaseInterface is interface;
   subtype ThirdPartyInApplicationPurchaseInterface_Access is org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchaseInterface_Package_References.ThirdPartyInApplicationPurchaseInterface_Access;
   function "=" (Left, Right : ThirdPartyInApplicationPurchaseInterface_Access) return Boolean renames org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchaseInterface_Package_References."=";
   subtype ThirdPartyInApplicationPurchaseInterface_Access_Array is org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchaseInterface_Package_References.ThirdPartyInApplicationPurchaseInterface_Access_Array;
   function "=" (Left, Right : ThirdPartyInApplicationPurchaseInterface_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchaseInterface_Package_References."=";
   subtype ThirdPartyInApplicationPurchaseInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchaseInterface_Package_References.ThirdPartyInApplicationPurchaseInterface_Access_Array_Access;
   function "=" (Left, Right : ThirdPartyInApplicationPurchaseInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchaseInterface_Package_References."=";
   function Java_Box (Value : ThirdPartyInApplicationPurchaseInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchaseInterface_Package_References.Java_Box;
   function Java_Unbox_ThirdPartyInApplicationPurchaseInterface_Access_Array (Value : access Java_Object'Class) return ThirdPartyInApplicationPurchaseInterface_Access_Array_Access renames org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchaseInterface_Package_References.Java_Unbox_ThirdPartyInApplicationPurchaseInterface_Access_Array;
   subtype ThirdPartyInApplicationPurchaseInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchaseInterface_Package_References.ThirdPartyInApplicationPurchaseInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ThirdPartyInApplicationPurchaseInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchaseInterface_Package_References."=";
   subtype ThirdPartyInApplicationPurchaseInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchaseInterface_Package_References.ThirdPartyInApplicationPurchaseInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ThirdPartyInApplicationPurchaseInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchaseInterface_Package_References."=";
   function Java_Box (Value : ThirdPartyInApplicationPurchaseInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchaseInterface_Package_References.Java_Box;
   function Java_Unbox_ThirdPartyInApplicationPurchaseInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return ThirdPartyInApplicationPurchaseInterface_Access_Array_Access_Array_Access renames org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchaseInterface_Package_References.Java_Unbox_ThirdPartyInApplicationPurchaseInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_ThirdPartyInApplicationPurchaseInterface (Value : ThirdPartyInApplicationPurchaseInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function isPurchased (This : in out ThirdPartyInApplicationPurchaseInterface; lockableFeature_Param : access LockableFeature_Package.LockableFeature'Class) return Boolean is abstract;
   procedure isPurchased (This : in out ThirdPartyInApplicationPurchaseInterface; lockableFeature_Param : access LockableFeature_Package.LockableFeature'Class) is abstract;
   procedure onCreate (This : in out ThirdPartyInApplicationPurchaseInterface; anyType_Param : access Java_Object'Class; stateObject_Param : access Java_Object'Class) is abstract;
   procedure onDestroy (This : in out ThirdPartyInApplicationPurchaseInterface) is abstract;
   procedure onStart (This : in out ThirdPartyInApplicationPurchaseInterface) is abstract;
   procedure onActivityResult (This : in out ThirdPartyInApplicationPurchaseInterface; requestCode : Integer; resultCode : Integer; dataObject_Param : access Java_Object'Class) is abstract;
   procedure onSaveInstanceState (This : in out ThirdPartyInApplicationPurchaseInterface; anyType_Param : access Java_Object'Class) is abstract;
   procedure onStop (This : in out ThirdPartyInApplicationPurchaseInterface) is abstract;
   procedure requestPurchase (This : in out ThirdPartyInApplicationPurchaseInterface; lockableFeature_Param : access LockableFeature_Package.LockableFeature'Class) is abstract;
   procedure requestReceipts (This : in out ThirdPartyInApplicationPurchaseInterface) is abstract;
   procedure add (This : in out ThirdPartyInApplicationPurchaseInterface; lockableFeature_Param : access LockableFeature_Package.LockableFeature'Class) is abstract;
   function getUserName (This : in out ThirdPartyInApplicationPurchaseInterface) return Unbounded_String is abstract;
   function isEnabled (This : in out ThirdPartyInApplicationPurchaseInterface) return Boolean is abstract;

end org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchaseInterface_Package;


