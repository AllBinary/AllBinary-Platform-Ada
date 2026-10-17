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


package body org.allbinary.business.user.commerce.inventory.order.status.OrderStatusEmail_Package is

   procedure Initialize_Fields (This : in out OrderStatusEmail'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out OrderStatusEmail'Class; abeClientInformation : AbeClientInformationInterface_Access; orderHistory : OrderHistory_Access) is
      storeName : Unbounded_String;
   begin
      Initialize_Fields (This);
        This.abeClientInformation := abeClientInformation;
        This.orderHistory := orderHistory;
        storeName := orderHistory.getStoreName;
        This.storeFrontInterface := StoreFrontFactory_Package.getInstance (storeName);
        This.user := UserEntityFactory_Package.getInstance.getUser (orderHistory.getUserName);
   end Initialize;

   function Create (abeClientInformation : AbeClientInformationInterface_Access; orderHistory : OrderHistory_Access) return OrderStatusEmail_Access is
      This : constant OrderStatusEmail_Access := new OrderStatusEmail;
   begin
      Initialize (This.all, abeClientInformation, orderHistory);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out OrderStatusEmail) is
   begin
        This.notifyStoreAdmin;
        This.notifyUser;
   end process;

   --  throws Exception
   procedure notifyStoreAdmin (This : in out OrderStatusEmail) is
      adminEmailSubject : Unbounded_String;
      adminEmailTextBody : Unbounded_String;
      adminBasicEmailInfo : BasicEmailInfo_Access;
      storeAdminBasicEmailInfo : BasicEmailInfo_Access;
      storeAdminEmailInfo : EmailInfo_Access;
      adminEmailInfo : EmailInfo_Access;
      userEmailEventNameData : UserEmailEventNameData_Access;
      adminUserEmailEventHandler : UserEmailEventHandler_Access;
      storeAdminUserEmailEventHandler : UserEmailEventHandler_Access;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
                This.logUtil.putF (To_Unbounded_String ("Order Email"), This'Unchecked_Access, To_Unbounded_String ("emailStoreAdmin"));
            end if;
            adminEmailSubject := To_Unbounded_String ("Order ") & Java_Image (This.orderHistory.getStatus) & To_Unbounded_String (" Attempt");
            adminEmailTextBody := To_Unbounded_String ("Order attempt: ") & Java_Image (This.orderHistory.getId) & To_Unbounded_String (" Preprocessing by: ") & Java_Image (This.user.getUserName);
            adminBasicEmailInfo := BasicEmailInfo_Access (AdminEmailInfo_Package.Create (adminEmailSubject, adminEmailTextBody));
            storeAdminBasicEmailInfo := BasicEmailInfo_Access (StoreEmailInfo_Package.Create (This.storeFrontInterface, adminEmailSubject, adminEmailTextBody));
            storeAdminEmailInfo := EmailInfo_Package.Create (storeAdminBasicEmailInfo);
            adminEmailInfo := EmailInfo_Package.Create (adminBasicEmailInfo);
            userEmailEventNameData := UserEmailEventNameData_Package.getInstance (This.orderHistory.getStatus);
            adminUserEmailEventHandler := AdminUserEmailEventHandlerSingletons_Package.getInstance.getInstance (This.abeClientInformation, userEmailEventNameData);
            storeAdminUserEmailEventHandler := StoreAdminUserEmailEventHandlerSingletons_Package.getInstance.getInstance (userEmailEventNameData, This.abeClientInformation, This.storeFrontInterface);
            storeAdminUserEmailEventHandler.receiveEmailInfo (userEmailEventNameData, storeAdminEmailInfo);
            adminUserEmailEventHandler.receiveEmailInfo (userEmailEventNameData, adminEmailInfo);
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGINGERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("emailAdmin"), e);
            end if;
        end;
   end notifyStoreAdmin;

   --  throws Exception
   procedure notifyUser (This : in out OrderStatusEmail) is
      subject : Unbounded_String;
      textBody : Unbounded_String;
      basicEmailInfo : BasicEmailInfo_Access;
      emailInfo : EmailInfo_Access;
      userEmailEventNameData : UserEmailEventNameData_Access;
      userEmailEventHandler : UserEmailEventHandler_Access;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
                This.logUtil.putF (To_Unbounded_String ("Email User"), This'Unchecked_Access, To_Unbounded_String ("notifyUser()"));
            end if;
            subject := To_Unbounded_String ("Order ") & Java_Image (This.orderHistory.getStatus) & To_Unbounded_String (" Attempt");
            textBody := To_Unbounded_String ("Order attempt: ") & Java_Image (This.orderHistory.getId) & To_Unbounded_String (" Preprocessing by: ") & Java_Image (This.user.getUserName);
            basicEmailInfo := BasicEmailInfo_Access (StoreEmailInfo_Package.Create (This.storeFrontInterface, subject, textBody));
            emailInfo := EmailInfo_Package.Create (basicEmailInfo);
            userEmailEventNameData := UserEmailEventNameData_Package.getInstance (This.orderHistory.getStatus);
            userEmailEventHandler := UserEmailEventHandlerSingletons_Package.getInstance.getInstance (This.abeClientInformation, userEmailEventNameData, This.user);
            userEmailEventHandler.receiveEmailInfo (userEmailEventNameData, emailInfo);
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGINGERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("notifyUser"), e);
            end if;
            Java_Throw (e);
        end;
   end notifyUser;

end org.allbinary.business.user.commerce.inventory.order.status.OrderStatusEmail_Package;


