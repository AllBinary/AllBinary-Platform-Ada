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


with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out InApplicationPurchaseFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return InApplicationPurchaseFactory_Access is
   begin
        return InApplicationPurchaseFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out InApplicationPurchaseFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return InApplicationPurchaseFactory_Access is
      This : constant InApplicationPurchaseFactory_Access := new InApplicationPurchaseFactory;
   begin
      InApplicationPurchaseFactory_Package.Initialize (This.all);
      return This;
   end Create;

   procedure init (This : in out InApplicationPurchaseFactory; anyType_Param : access Java_Object'Class; stateObject_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      stateObject : constant Java_Object_Access := Java_Object_Access (stateObject_Param);
   begin
        null;
   end init;

   procedure onCreate (This : in out InApplicationPurchaseFactory; anyType_Param : access Java_Object'Class; stateObject_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      stateObject : constant Java_Object_Access := Java_Object_Access (stateObject_Param);
   begin
        null;
   end onCreate;

   procedure onStart (This : in out InApplicationPurchaseFactory) is
   begin
        null;
   end onStart;

   procedure onResult (This : in out InApplicationPurchaseFactory; requestCode : Integer; resultCode : Integer; data_Param : access Java_Object'Class) is
      data : constant Java_Object_Access := Java_Object_Access (data_Param);
   begin
        null;
   end onResult;

   procedure onSaveState (This : in out InApplicationPurchaseFactory; anyType_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        null;
   end onSaveState;

   procedure onStop (This : in out InApplicationPurchaseFactory) is
   begin
        null;
   end onStop;

   procedure onDestroy (This : in out InApplicationPurchaseFactory) is
   begin
        null;
   end onDestroy;

   procedure purchase (This : in out InApplicationPurchaseFactory; lockableFeature_Param : access LockableFeature_Package.LockableFeature'Class) is
      lockableFeature : constant LockableFeature_Access := LockableFeature_Access (lockableFeature_Param);
   begin
        null;
   end purchase;

   function isPurchased (This : in out InApplicationPurchaseFactory; lockableFeature_Param : access LockableFeature_Package.LockableFeature'Class) return Boolean is
      lockableFeature : constant LockableFeature_Access := LockableFeature_Access (lockableFeature_Param);
   begin
        return False;
   end isPurchased;

   procedure add (This : in out InApplicationPurchaseFactory; lockableFeature_Param : access LockableFeature_Package.LockableFeature'Class) is
      lockableFeature : constant LockableFeature_Access := LockableFeature_Access (lockableFeature_Param);
   begin
        null;
   end add;

   function getUserName (This : in out InApplicationPurchaseFactory) return Unbounded_String is
   begin
        return StringUtil_Package.getInstance.EMPTY_STRING;
   end getUserName;

   function isEnabled (This : in out InApplicationPurchaseFactory) return Boolean is
   begin
        return False;
   end isEnabled;

   procedure isPurchased (This : in out InApplicationPurchaseFactory; lockableFeature_Param : access LockableFeature_Package.LockableFeature'Class) is
      Java_Result : constant Boolean := InApplicationPurchaseFactory'Class (This).isPurchased (lockableFeature_Param => lockableFeature_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isPurchased;

   procedure onSaveState (This : in out InApplicationPurchaseFactory; Value : Unbounded_String) is
   begin
      InApplicationPurchaseFactory'Class (This).onSaveState (Java_Box (Value));
   end onSaveState;

begin
   null;
   instance := InApplicationPurchaseFactory_Package.Create;

end org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package;


