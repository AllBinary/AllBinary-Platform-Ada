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

package org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchaseInterface_Package is


   type ThirdPartyInApplicationPurchaseInterface is interface;
   type ThirdPartyInApplicationPurchaseInterface_Access is access all ThirdPartyInApplicationPurchaseInterface'Class;
   type ThirdPartyInApplicationPurchaseInterface_Access_Array is array (Natural range <>) of ThirdPartyInApplicationPurchaseInterface_Access;
   type ThirdPartyInApplicationPurchaseInterface_Access_Array_Access is access all ThirdPartyInApplicationPurchaseInterface_Access_Array;
   function isPurchased (This : in out ThirdPartyInApplicationPurchaseInterface; lockableFeature : LockableFeature_Access) return Boolean is abstract;
   procedure onCreate (This : in out ThirdPartyInApplicationPurchaseInterface; anyType : Java_Object_Access; stateObject : Java_Object_Access) is abstract;
   procedure onDestroy (This : in out ThirdPartyInApplicationPurchaseInterface) is abstract;
   procedure onStart (This : in out ThirdPartyInApplicationPurchaseInterface) is abstract;
   procedure onActivityResult (This : in out ThirdPartyInApplicationPurchaseInterface; requestCode : Integer; resultCode : Integer; dataObject : Java_Object_Access) is abstract;
   procedure onSaveInstanceState (This : in out ThirdPartyInApplicationPurchaseInterface; anyType : Java_Object_Access) is abstract;
   procedure onStop (This : in out ThirdPartyInApplicationPurchaseInterface) is abstract;
   procedure requestPurchase (This : in out ThirdPartyInApplicationPurchaseInterface; lockableFeature : LockableFeature_Access) is abstract;
   procedure requestReceipts (This : in out ThirdPartyInApplicationPurchaseInterface) is abstract;
   procedure add (This : in out ThirdPartyInApplicationPurchaseInterface; lockableFeature : LockableFeature_Access) is abstract;
   function getUserName (This : in out ThirdPartyInApplicationPurchaseInterface) return Unbounded_String is abstract;
   function isEnabled (This : in out ThirdPartyInApplicationPurchaseInterface) return Boolean is abstract;

end org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchaseInterface_Package;


