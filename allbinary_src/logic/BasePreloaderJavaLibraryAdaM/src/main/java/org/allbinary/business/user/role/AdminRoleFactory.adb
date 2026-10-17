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


package body org.allbinary.business.user.role.AdminRoleFactory_Package is

   procedure Initialize_Fields (This : in out AdminRoleFactory'Class) is
   begin
      null;
      This.adminRoles := BasicArrayListD_Package.Create;
      This.storeAdminRoles := BasicArrayListD_Package.Create;
      This.storeManagementRoles := BasicArrayListD_Package.Create;
      This.productManagementRoles := BasicArrayListD_Package.Create;
      This.reviewManagementRoles := BasicArrayListD_Package.Create;
      This.customerManagementRoles := BasicArrayListD_Package.Create;
      This.workflowManagementRoles := BasicArrayListD_Package.Create;
      This.orderManagementRoles := BasicArrayListD_Package.Create;
      This.adjusterManagementRoles := BasicArrayListD_Package.Create;
      This.shippingManagementRoles := BasicArrayListD_Package.Create;
      This.webManagementRoles := BasicArrayListD_Package.Create;
   end Initialize_Fields;


   function getInstance return AdminRoleFactory_Access is
   begin
        return AdminRoleFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out AdminRoleFactory'Class) is
      basicUserRoleFactory : BasicUserRoleFactory_Access;
   begin
      Initialize_Fields (This);
        basicUserRoleFactory := BasicUserRoleFactory_Package.getInstance;
        This.adminRoles.add (basicUserRoleFactory.ADMINISTRATOR);
        This.storeAdminRoles.add (basicUserRoleFactory.ADMINISTRATOR);
        This.storeAdminRoles.add (basicUserRoleFactory.STOREMANAGER);
        This.storeManagementRoles.add (basicUserRoleFactory.ADMINISTRATOR);
        This.storeManagementRoles.add (basicUserRoleFactory.STOREMANAGER);
        This.storeManagementRoles.add (basicUserRoleFactory.CUSTOMERMANAGER);
        This.storeManagementRoles.add (basicUserRoleFactory.ADJUSTER);
        This.storeManagementRoles.add (basicUserRoleFactory.PRODUCTMANAGER);
        This.storeManagementRoles.add (basicUserRoleFactory.REVIEWER);
        This.storeManagementRoles.add (basicUserRoleFactory.SHIPPING);
        This.productManagementRoles.add (basicUserRoleFactory.ADMINISTRATOR);
        This.productManagementRoles.add (basicUserRoleFactory.STOREMANAGER);
        This.productManagementRoles.add (basicUserRoleFactory.PRODUCTMANAGER);
        This.reviewManagementRoles.add (basicUserRoleFactory.ADMINISTRATOR);
        This.reviewManagementRoles.add (basicUserRoleFactory.STOREMANAGER);
        This.reviewManagementRoles.add (basicUserRoleFactory.REVIEWER);
        This.customerManagementRoles.add (basicUserRoleFactory.ADMINISTRATOR);
        This.customerManagementRoles.add (basicUserRoleFactory.STOREMANAGER);
        This.customerManagementRoles.add (basicUserRoleFactory.CUSTOMERMANAGER);
        This.workflowManagementRoles.add (basicUserRoleFactory.ADMINISTRATOR);
        This.workflowManagementRoles.add (basicUserRoleFactory.STOREMANAGER);
        This.workflowManagementRoles.add (basicUserRoleFactory.WORKFLOWEDITOR);
        This.orderManagementRoles.add (basicUserRoleFactory.ADMINISTRATOR);
        This.orderManagementRoles.add (basicUserRoleFactory.STOREMANAGER);
        This.adjusterManagementRoles.add (basicUserRoleFactory.ADMINISTRATOR);
        This.adjusterManagementRoles.add (basicUserRoleFactory.STOREMANAGER);
        This.adjusterManagementRoles.add (basicUserRoleFactory.ADJUSTER);
        This.shippingManagementRoles.add (basicUserRoleFactory.ADMINISTRATOR);
        This.shippingManagementRoles.add (basicUserRoleFactory.STOREMANAGER);
        This.shippingManagementRoles.add (basicUserRoleFactory.SHIPPING);
        This.webManagementRoles.add (basicUserRoleFactory.ADMINISTRATOR);
        This.webManagementRoles.add (basicUserRoleFactory.STOREMANAGER);
        This.webManagementRoles.add (basicUserRoleFactory.WEBMANAGER);
        This.webManagementRoles.add (basicUserRoleFactory.WORKFLOWEDITOR);
        This.webManagementRoles.add (basicUserRoleFactory.VIEWEDITOR);
   end Initialize;

   function Create return AdminRoleFactory_Access is
      This : constant AdminRoleFactory_Access := new AdminRoleFactory;
   begin
      AdminRoleFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getProductManagementRoles (This : in out AdminRoleFactory) return BasicArrayList_Access is
   begin
        return This.productManagementRoles;
   end getProductManagementRoles;

   function getAdminRoles (This : in out AdminRoleFactory) return BasicArrayList_Access is
   begin
        return This.adminRoles;
   end getAdminRoles;

   function getStoreAdminRoles (This : in out AdminRoleFactory) return BasicArrayList_Access is
   begin
        return This.storeAdminRoles;
   end getStoreAdminRoles;

   function getStoreManagementRoles (This : in out AdminRoleFactory) return BasicArrayList_Access is
   begin
        return This.storeManagementRoles;
   end getStoreManagementRoles;

   function getReviewManagementRoles (This : in out AdminRoleFactory) return BasicArrayList_Access is
   begin
        return This.reviewManagementRoles;
   end getReviewManagementRoles;

   function getCustomerManagementRoles (This : in out AdminRoleFactory) return BasicArrayList_Access is
   begin
        return This.customerManagementRoles;
   end getCustomerManagementRoles;

   function getWorkflowManagementRoles (This : in out AdminRoleFactory) return BasicArrayList_Access is
   begin
        return This.workflowManagementRoles;
   end getWorkflowManagementRoles;

   function getWebManagementRoles (This : in out AdminRoleFactory) return BasicArrayList_Access is
   begin
        return This.webManagementRoles;
   end getWebManagementRoles;

   function getShippingManagementRoles (This : in out AdminRoleFactory) return BasicArrayList_Access is
   begin
        return This.shippingManagementRoles;
   end getShippingManagementRoles;

   function getAdjusterManagementRoles (This : in out AdminRoleFactory) return BasicArrayList_Access is
   begin
        return This.adjusterManagementRoles;
   end getAdjusterManagementRoles;

   function getOrderManagementRoles (This : in out AdminRoleFactory) return BasicArrayList_Access is
   begin
        return This.orderManagementRoles;
   end getOrderManagementRoles;

begin
   null;
   instance := AdminRoleFactory_Package.Create;

end org.allbinary.business.user.role.AdminRoleFactory_Package;


