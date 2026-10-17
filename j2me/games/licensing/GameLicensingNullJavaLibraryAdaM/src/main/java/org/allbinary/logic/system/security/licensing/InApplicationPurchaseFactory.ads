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

package org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type InApplicationPurchaseFactory is tagged;
   type InApplicationPurchaseFactory_Access is access all InApplicationPurchaseFactory'Class;
   type InApplicationPurchaseFactory_Access_Array is array (Natural range <>) of InApplicationPurchaseFactory_Access;
   type InApplicationPurchaseFactory_Access_Array_Access is access all InApplicationPurchaseFactory_Access_Array;

   type InApplicationPurchaseFactory is new Java_Object with null record;
   instance : InApplicationPurchaseFactory_Access;

   procedure Initialize (This : in out InApplicationPurchaseFactory'Class);
   function Create return InApplicationPurchaseFactory_Access;
   function getInstance return InApplicationPurchaseFactory_Access;
   procedure getInstance;
   procedure init (This : in out InApplicationPurchaseFactory; anyType : Java_Object_Access; stateObject : Java_Object_Access);
   procedure onCreate (This : in out InApplicationPurchaseFactory; anyType : Java_Object_Access; stateObject : Java_Object_Access);
   procedure onStart (This : in out InApplicationPurchaseFactory);
   procedure onResult (This : in out InApplicationPurchaseFactory; requestCode : Integer; resultCode : Integer; data : Java_Object_Access);
   procedure onSaveState (This : in out InApplicationPurchaseFactory; anyType : Java_Object_Access);
   procedure onStop (This : in out InApplicationPurchaseFactory);
   procedure onDestroy (This : in out InApplicationPurchaseFactory);
   procedure purchase (This : in out InApplicationPurchaseFactory; lockableFeature : LockableFeature_Access);
   function isPurchased (This : in out InApplicationPurchaseFactory; lockableFeature : LockableFeature_Access) return Boolean;
   procedure isPurchased (This : in out InApplicationPurchaseFactory; lockableFeature : LockableFeature_Access);
   procedure add (This : in out InApplicationPurchaseFactory; lockableFeature : LockableFeature_Access);
   function getUserName (This : in out InApplicationPurchaseFactory) return Unbounded_String;
   procedure getUserName (This : in out InApplicationPurchaseFactory);
   function isEnabled (This : in out InApplicationPurchaseFactory) return Boolean;
   procedure isEnabled (This : in out InApplicationPurchaseFactory);

end org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package;


