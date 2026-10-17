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


package body org.allbinary.globals.GLOBALS2_Package is

   procedure Initialize_Fields (This : in out GLOBALS2'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out GLOBALS2'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GLOBALS2_Access is
      This : constant GLOBALS2_Access := new GLOBALS2;
   begin
      GLOBALS2_Package.Initialize (This.all);
      return This;
   end Create;


begin
   null;
   GETCURRENTLOCATION := To_Unbounded_String ("Get Current Location");
   GETCURRENTHOMELOCATION := To_Unbounded_String ("Get Current Home Location");
   GENERATEALLSTORES := To_Unbounded_String ("Generate All Stores");
   LICENSEAGREEMENT := To_Unbounded_String ("License Agreement");
   CREATEDATABASES := To_Unbounded_String ("Create Databases");
   VIEWNAME := To_Unbounded_String ("VIEW_NAME");
   SETSHIPPINGTYPE := To_Unbounded_String ("Set Shipping Type");
   VIEWSUMMARY := To_Unbounded_String ("View Summary");
   SET := To_Unbounded_String ("Set");
   SELECT_Id := To_Unbounded_String ("Select");
   SELECTNEW := To_Unbounded_String ("Select New");
   SELECTEXISTING := To_Unbounded_String ("Select Existing");
   PROCESS := To_Unbounded_String ("Process");
   LOGINSUCCESS := To_Unbounded_String ("Login Successful");
   LOGINFAILED := To_Unbounded_String ("Login Failed");
   NONE := To_Unbounded_String ("None");
   TOP := To_Unbounded_String ("Top");
   LEFT := To_Unbounded_String ("Left");
   RIGHT := To_Unbounded_String ("Right");
   BACK := To_Unbounded_String ("Back");
   BOTTOM := To_Unbounded_String ("Bottom");
   FRONT := To_Unbounded_String ("Front");
   AUTHORIZE := To_Unbounded_String ("Authorize");
   AUTHORIZEANDEVALBODY := To_Unbounded_String ("Authorize AND EVAL BODY");
   AUTHORIZEANDEVALBODYONERROR := To_Unbounded_String ("Authorize AND EVAL BODY On Error");
   AUTHORIZEORDEREVALBODYONERROR := To_Unbounded_String ("Authorize Order Eval On Error");
   AUTHORIZEFORMEVALBODYONERROR := To_Unbounded_String ("Authorize Form Eval On Error");
   AUTHORIZEORDERANDSKIPBODY := To_Unbounded_String ("Authorize Order Skip");
   AUTHORIZEORDERANDEVALBODY := To_Unbounded_String ("Authorize Order Eval");
   EDITPRICING := To_Unbounded_String ("Edit Pricing");
   UPDATEPRICING := To_Unbounded_String ("Update Pricing");
   SETPAYMENTMETHOD := To_Unbounded_String ("Set Payment Method");
   BACKUP := To_Unbounded_String ("Backup");
   RESTORE := To_Unbounded_String ("Restore");
   SUMMARY := To_Unbounded_String ("Summary");
   DESCRIPTION := To_Unbounded_String ("Description");
   IMG := To_Unbounded_String ("img");
   HREF := To_Unbounded_String ("href");
   KEYWORD := To_Unbounded_String ("keyword");
   TYPE_Id := To_Unbounded_String ("TYPE");
   DATA := To_Unbounded_String ("DATA");
   NUM := To_Unbounded_String ("NUM");
   PRICE := To_Unbounded_String ("PRICE");
   REGISTER := To_Unbounded_String ("Register");
   CHECKOUT := To_Unbounded_String ("Checkout");
   ADMINCOMMAND := To_Unbounded_String ("AdminCommand");
   PROCESSBODYIFNOTAUTHENTICATED := To_Unbounded_String ("Not Authenticated");
   PROCESSBODYIFAUTHENTICATED := To_Unbounded_String ("Authenticated");
   PROCESSTRANSACTION := To_Unbounded_String ("Process Transaction");
   NEWPASSWORD := To_Unbounded_String ("New Password");
   CHANGEPASSWORD := To_Unbounded_String ("Change Password");
   JDBCDRIVER := To_Unbounded_String ("Jdbc Driver");
   WEBAPPPATH := To_Unbounded_String ("Webapp Path");
   AMOUNTVALUE := To_Unbounded_String ("Amount Value");
   GETORDERIDFROMSESSION := To_Unbounded_String ("Get Order Id From Session");
   SETUPPAYMENTMETHODS := To_Unbounded_String ("Setup Payment Methods");
   CANCELSTOREFRONT := To_Unbounded_String ("Cancel Store Front");
   ADJUST := To_Unbounded_String ("Adjust");
   ISASUBSET := To_Unbounded_String ("Is a Subset");
   NOTASUBSET := To_Unbounded_String ("Not a Subset");
   GENERATE := To_Unbounded_String ("Generate");
   VIEW := To_Unbounded_String ("View");
   EDIT := To_Unbounded_String ("Edit");
   NEW_Id := To_Unbounded_String ("New");
   SEARCH := To_Unbounded_String ("Search");

end org.allbinary.globals.GLOBALS2_Package;


