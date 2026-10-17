-- 
-- To change this license header, choose License Headers in Project Properties. 
-- To change this template file, choose Tools | Templates 
-- and open the template in the editor.  
--  Generated Code Do Not Modify


package body org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package is

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
      Initialize (This.all);
      return This;
   end Create;

   procedure init (This : in out InApplicationPurchaseFactory; anyType : Java_Object_Access; stateObject : Java_Object_Access) is
   begin
        null;
   end init;

   procedure onCreate (This : in out InApplicationPurchaseFactory; anyType : Java_Object_Access; stateObject : Java_Object_Access) is
   begin
        null;
   end onCreate;

   procedure onStart (This : in out InApplicationPurchaseFactory) is
   begin
        null;
   end onStart;

   procedure onResult (This : in out InApplicationPurchaseFactory; requestCode : Integer; resultCode : Integer; data : Java_Object_Access) is
   begin
        null;
   end onResult;

   procedure onSaveState (This : in out InApplicationPurchaseFactory; anyType : Java_Object_Access) is
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

   procedure purchase (This : in out InApplicationPurchaseFactory; lockableFeature : LockableFeature_Access) is
   begin
        null;
   end purchase;

   function isPurchased (This : in out InApplicationPurchaseFactory; lockableFeature : LockableFeature_Access) return Boolean is
   begin
        return False;
   end isPurchased;

   procedure add (This : in out InApplicationPurchaseFactory; lockableFeature : LockableFeature_Access) is
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

   procedure getInstance is
      Java_Result : constant InApplicationPurchaseFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure isPurchased (This : in out InApplicationPurchaseFactory; lockableFeature : LockableFeature_Access) is
      Java_Result : constant Boolean := InApplicationPurchaseFactory'Class (This).isPurchased (lockableFeature);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isPurchased;

   procedure getUserName (This : in out InApplicationPurchaseFactory) is
      Java_Result : constant Unbounded_String := InApplicationPurchaseFactory'Class (This).getUserName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getUserName;

   procedure isEnabled (This : in out InApplicationPurchaseFactory) is
      Java_Result : constant Boolean := InApplicationPurchaseFactory'Class (This).isEnabled;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isEnabled;

begin
   null;
   instance := InApplicationPurchaseFactory_Package.Create;

end org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package;


