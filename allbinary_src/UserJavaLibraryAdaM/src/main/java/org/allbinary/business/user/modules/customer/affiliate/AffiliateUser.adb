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


package body org.allbinary.business.user.modules.customer.affiliate.AffiliateUser_Package is

   procedure Initialize_Fields (This : in out AffiliateUser'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out AffiliateUser'Class) is
   begin
        User_Package.Initialize (This);
        Initialize_Fields (This);
        This.affiliateSales := AffiliateSales_Package.Create;
   end Initialize;

   function Create return AffiliateUser_Access is
      This : constant AffiliateUser_Access := new AffiliateUser;
   begin
      AffiliateUser_Package.Initialize (This.all);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out AffiliateUser'Class; userHashMap : HashMap_Access) is
   begin
        User_Package.Initialize (This, userHashMap);
        Initialize_Fields (This);
        This.affiliateSales := AffiliateSales_Package.Create;
   end Initialize;

   function Create (userHashMap : HashMap_Access) return AffiliateUser_Access is
      This : constant AffiliateUser_Access := new AffiliateUser;
   begin
      AffiliateUser_Package.Initialize (This.all, userHashMap);
      return This;
   end Create;

   procedure validateSession (This : in out AffiliateUser; weblisketSession : WeblisketSessionInterface_Access) is
   begin
        User (This).validateSession (weblisketSession);
        This.updateSession (weblisketSession);
   end validateSession;

   procedure updateSession (This : in out AffiliateUser; weblisketSession : WeblisketSessionInterface_Access) is
   begin
        weblisketSession.setStoreName (This.getPermissions);
   end updateSession;

   function isSessionValid (This : in out AffiliateUser) return Boolean is
   begin
        return This.affiliateSales.isValid;
   end isSessionValid;

end org.allbinary.business.user.modules.customer.affiliate.AffiliateUser_Package;


