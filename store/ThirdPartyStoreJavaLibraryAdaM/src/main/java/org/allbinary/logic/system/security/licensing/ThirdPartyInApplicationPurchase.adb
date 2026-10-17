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


package body org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchase_Package is

   procedure Initialize_Fields (This : in out ThirdPartyInApplicationPurchase'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ThirdPartyInApplicationPurchase'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ThirdPartyInApplicationPurchase_Access is
      This : constant ThirdPartyInApplicationPurchase_Access := new ThirdPartyInApplicationPurchase;
   begin
      ThirdPartyInApplicationPurchase_Package.Initialize (This.all);
      return This;
   end Create;


   function isPurchased (This : in out ThirdPartyInApplicationPurchase; lockableFeature : LockableFeature_Access) return Boolean is
   begin
        return False;
   end isPurchased;

   procedure onCreate (This : in out ThirdPartyInApplicationPurchase; anyType : Java_Object_Access; stateObject : Java_Object_Access) is
   begin
        null;
   end onCreate;

   procedure onDestroy (This : in out ThirdPartyInApplicationPurchase) is
   begin
        null;
   end onDestroy;

   procedure onStart (This : in out ThirdPartyInApplicationPurchase) is
   begin
        null;
   end onStart;

   procedure onActivityResult (This : in out ThirdPartyInApplicationPurchase; requestCode : Integer; resultCode : Integer; dataObject : Java_Object_Access) is
   begin
        null;
   end onActivityResult;

   procedure onSaveInstanceState (This : in out ThirdPartyInApplicationPurchase; anyType : Java_Object_Access) is
   begin
        null;
   end onSaveInstanceState;

   procedure onStop (This : in out ThirdPartyInApplicationPurchase) is
   begin
        null;
   end onStop;

   procedure requestPurchase (This : in out ThirdPartyInApplicationPurchase; lockableFeature : LockableFeature_Access) is
   begin
        null;
   end requestPurchase;

   procedure requestReceipts (This : in out ThirdPartyInApplicationPurchase) is
   begin
        null;
   end requestReceipts;

   procedure add (This : in out ThirdPartyInApplicationPurchase; lockableFeature : LockableFeature_Access) is
   begin
        null;
   end add;

   function getUserName (This : in out ThirdPartyInApplicationPurchase) return Unbounded_String is
   begin
        return StringUtil_Package.getInstance.EMPTY_STRING;
   end getUserName;

   function isEnabled (This : in out ThirdPartyInApplicationPurchase) return Boolean is
   begin
        return False;
   end isEnabled;

   procedure requestProducts (This : in out ThirdPartyInApplicationPurchase) is
   begin
        null;
   end requestProducts;

   procedure isPurchased (This : in out ThirdPartyInApplicationPurchase; lockableFeature : LockableFeature_Access) is
      Java_Result : constant Boolean := ThirdPartyInApplicationPurchase'Class (This).isPurchased (lockableFeature);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isPurchased;

end org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchase_Package;


