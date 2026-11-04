-- 
-- To change this license header, choose License Headers in Project Properties. 
-- To change this template file, choose Tools | Templates 
-- and open the template in the editor.  
--  Generated Code Do Not Modify

limited with org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package;
package org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package_References is
   type InApplicationPurchaseFactory_Access is access all org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package.InApplicationPurchaseFactory'Class;
   type InApplicationPurchaseFactory_Access_Array is array (Natural range <>) of InApplicationPurchaseFactory_Access;
   type InApplicationPurchaseFactory_Access_Array_Access is access all InApplicationPurchaseFactory_Access_Array;
   type InApplicationPurchaseFactory_Access_Array_Access_Array is array (Natural range <>) of InApplicationPurchaseFactory_Access_Array_Access;
   type InApplicationPurchaseFactory_Access_Array_Access_Array_Access is access all InApplicationPurchaseFactory_Access_Array_Access_Array;
end org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package_References;

with org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package_References;
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

package org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package is

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


   subtype InApplicationPurchaseFactory_Access is org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package_References.InApplicationPurchaseFactory_Access;
   function "=" (Left, Right : InApplicationPurchaseFactory_Access) return Boolean renames org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package_References."=";
   subtype InApplicationPurchaseFactory_Access_Array is org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package_References.InApplicationPurchaseFactory_Access_Array;
   function "=" (Left, Right : InApplicationPurchaseFactory_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package_References."=";
   subtype InApplicationPurchaseFactory_Access_Array_Access is org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package_References.InApplicationPurchaseFactory_Access_Array_Access;
   function "=" (Left, Right : InApplicationPurchaseFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package_References."=";
   subtype InApplicationPurchaseFactory_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package_References.InApplicationPurchaseFactory_Access_Array_Access_Array;
   function "=" (Left, Right : InApplicationPurchaseFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package_References."=";
   subtype InApplicationPurchaseFactory_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package_References.InApplicationPurchaseFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InApplicationPurchaseFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package_References."=";

   type InApplicationPurchaseFactory is new Java_Object with null record;
   instance : InApplicationPurchaseFactory_Access;

   procedure Initialize (This : in out InApplicationPurchaseFactory'Class);
   function Create return InApplicationPurchaseFactory_Access;
   function getInstance return InApplicationPurchaseFactory_Access;
   procedure init (This : in out InApplicationPurchaseFactory; anyType_Param : access Java_Object'Class; stateObject_Param : access Java_Object'Class);
   procedure onCreate (This : in out InApplicationPurchaseFactory; anyType_Param : access Java_Object'Class; stateObject_Param : access Java_Object'Class);
   procedure onStart (This : in out InApplicationPurchaseFactory);
   procedure onResult (This : in out InApplicationPurchaseFactory; requestCode : Integer; resultCode : Integer; data_Param : access Java_Object'Class);
   procedure onSaveState (This : in out InApplicationPurchaseFactory; anyType_Param : access Java_Object'Class);
   procedure onStop (This : in out InApplicationPurchaseFactory);
   procedure onDestroy (This : in out InApplicationPurchaseFactory);
   procedure purchase (This : in out InApplicationPurchaseFactory; lockableFeature_Param : access LockableFeature_Package.LockableFeature'Class);
   function isPurchased (This : in out InApplicationPurchaseFactory; lockableFeature_Param : access LockableFeature_Package.LockableFeature'Class) return Boolean;
   procedure isPurchased (This : in out InApplicationPurchaseFactory; lockableFeature_Param : access LockableFeature_Package.LockableFeature'Class);
   procedure add (This : in out InApplicationPurchaseFactory; lockableFeature_Param : access LockableFeature_Package.LockableFeature'Class);
   function getUserName (This : in out InApplicationPurchaseFactory) return Unbounded_String;
   function isEnabled (This : in out InApplicationPurchaseFactory) return Boolean;
   procedure onSaveState (This : in out InApplicationPurchaseFactory; Value : Unbounded_String);

end org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package;


