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
with org.allbinary.logic.system.security.licensing.LockableFeature_Package; use org.allbinary.logic.system.security.licensing.LockableFeature_Package;

package org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package is


   type InApplicationPurchaseFactory is tagged;
   type InApplicationPurchaseFactory_Access is access all InApplicationPurchaseFactory'Class;
   type InApplicationPurchaseFactory_Access_Array is array (Natural range <>) of InApplicationPurchaseFactory_Access;
   type InApplicationPurchaseFactory_Access_Array_Access is access all InApplicationPurchaseFactory_Access_Array;
   type InApplicationPurchaseFactory_Access_Array_Access_Array is array (Natural range <>) of InApplicationPurchaseFactory_Access_Array_Access;
   type InApplicationPurchaseFactory_Access_Array_Access_Array_Access is access all InApplicationPurchaseFactory_Access_Array_Access_Array;

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


