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
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchaseInterface_Package; use org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchaseInterface_Package;
with org.allbinary.logic.system.security.licensing.LockableFeature_Package; use org.allbinary.logic.system.security.licensing.LockableFeature_Package;

package org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchase_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type ThirdPartyInApplicationPurchase is tagged;
   type ThirdPartyInApplicationPurchase_Access is access all ThirdPartyInApplicationPurchase'Class;
   type ThirdPartyInApplicationPurchase_Access_Array is array (Natural range <>) of ThirdPartyInApplicationPurchase_Access;
   type ThirdPartyInApplicationPurchase_Access_Array_Access is access all ThirdPartyInApplicationPurchase_Access_Array;

   type ThirdPartyInApplicationPurchase is new ThirdPartyInApplicationPurchaseInterface with null record;

   procedure Initialize (This : in out ThirdPartyInApplicationPurchase'Class);
   function Create return ThirdPartyInApplicationPurchase_Access;
   function isPurchased (This : in out ThirdPartyInApplicationPurchase; lockableFeature_Param : access LockableFeature'Class) return Boolean;
   procedure isPurchased (This : in out ThirdPartyInApplicationPurchase; lockableFeature_Param : access LockableFeature'Class);
   procedure onCreate (This : in out ThirdPartyInApplicationPurchase; anyType_Param : access Java_Object'Class; stateObject_Param : access Java_Object'Class);
   procedure onDestroy (This : in out ThirdPartyInApplicationPurchase);
   procedure onStart (This : in out ThirdPartyInApplicationPurchase);
   procedure onActivityResult (This : in out ThirdPartyInApplicationPurchase; requestCode : Integer; resultCode : Integer; dataObject_Param : access Java_Object'Class);
   procedure onSaveInstanceState (This : in out ThirdPartyInApplicationPurchase; anyType_Param : access Java_Object'Class);
   procedure onStop (This : in out ThirdPartyInApplicationPurchase);
   procedure requestPurchase (This : in out ThirdPartyInApplicationPurchase; lockableFeature_Param : access LockableFeature'Class);
   procedure requestReceipts (This : in out ThirdPartyInApplicationPurchase);
   procedure add (This : in out ThirdPartyInApplicationPurchase; lockableFeature_Param : access LockableFeature'Class);
   function getUserName (This : in out ThirdPartyInApplicationPurchase) return Unbounded_String;
   function isEnabled (This : in out ThirdPartyInApplicationPurchase) return Boolean;
   procedure requestProducts (This : in out ThirdPartyInApplicationPurchase);

end org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchase_Package;


