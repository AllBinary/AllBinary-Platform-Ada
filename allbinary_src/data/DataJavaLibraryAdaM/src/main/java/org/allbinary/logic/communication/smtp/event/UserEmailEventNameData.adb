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


with org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package; use org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;

package body org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package is

   package OrderHistoryData_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   procedure Initialize_Fields (This : in out UserEmailEventNameData'Class) is
   begin
      null;
      This.eventNameId := 0;
      
   end Initialize_Fields;


   procedure Initialize (This : in out UserEmailEventNameData'Class; eventHandlerName : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.eventHandlerName := eventHandlerName;
        UserEmailEventNameData'Class (This).initNextId;
        UserEmailEventNameData_Package.userNameEvenNameHashMap.put (Java_Box (This.eventHandlerName), UserEmailEventNameData_Access'(This'Unchecked_Access));
   end Initialize;

   function Create (eventHandlerName : Unbounded_String) return UserEmailEventNameData_Access is
      This : constant UserEmailEventNameData_Access := new UserEmailEventNameData;
   begin
      UserEmailEventNameData_Package.Initialize (This.all, eventHandlerName);
      return This;
   end Create;

   procedure initNextId (This : in out UserEmailEventNameData) is
   begin
        This.eventNameId := UserEmailEventNameData_Package.nextId;
        UserEmailEventNameData_Package.nextId := UserEmailEventNameData_Package.nextId + 1;
   end initNextId;

   function isEvent (This : in out UserEmailEventNameData; userEmailEventNameString : Unbounded_String) return Boolean is
   begin
        return UserEmailEventNameData_Package.userNameEvenNameHashMap.containsKey (Java_Box (userEmailEventNameString));
   end isEvent;

   --  throws Exception
   function getInstance (userEmailEventNameString : Unbounded_String) return UserEmailEventNameData_Access is
      userEmailEventNameData : UserEmailEventNameData_Access;
   begin
        userEmailEventNameData := UserEmailEventNameData_Access (UserEmailEventNameData_Package.userNameEvenNameHashMap.get (Java_Box (userEmailEventNameString)));
        if (userEmailEventNameData) = (null) then
            Java_Throw (Java_New_Exception ("Exception"));
        else
            return userEmailEventNameData;
        end if;
   end getInstance;

   function toString (This : in out UserEmailEventNameData) return Unbounded_String is
   begin
        return This.eventHandlerName;
   end toString;

   procedure isEvent (This : in out UserEmailEventNameData; userEmailEventNameString : Unbounded_String) is
      Java_Result : constant Boolean := UserEmailEventNameData'Class (This).isEvent (userEmailEventNameString);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isEvent;

   procedure getInstance (userEmailEventNameString : Unbounded_String) is
      Java_Result : constant UserEmailEventNameData_Access := getInstance (userEmailEventNameString);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   userNameEvenNameHashMap := StdUtil_Package.getInstance.createHashMap;
   nextId := 0;
   INSTALLER := UserEmailEventNameData_Package.Create (To_Unbounded_String ("Installer"));
   EXCEPTION_Id := UserEmailEventNameData_Package.Create (To_Unbounded_String ("Exception"));
   LOGGEDEXCEPTION := UserEmailEventNameData_Package.Create (To_Unbounded_String ("Logged Exception"));
   ERROR := UserEmailEventNameData_Package.Create (To_Unbounded_String ("Error"));
   OUTOFMEMORY := UserEmailEventNameData_Package.Create (To_Unbounded_String ("Out Of Memory Error"));
   ADMINGENERATINGSTATICPAGES := UserEmailEventNameData_Package.Create (To_Unbounded_String ("Admin Generating Static Pages"));
   STOREERROROCCURRED := UserEmailEventNameData_Package.Create (To_Unbounded_String ("Store Error Occurred"));
   STOREOUTOFMEMORY := UserEmailEventNameData_Package.Create (To_Unbounded_String ("Store Out Of Memory Error"));
   STORECREATED := UserEmailEventNameData_Package.Create (To_Unbounded_String ("Store Created"));
   STOREOPENED := UserEmailEventNameData_Package.Create (To_Unbounded_String ("Store Opened"));
   STORECLOSED := UserEmailEventNameData_Package.Create (To_Unbounded_String ("Store Closed"));
   STOREGENERATINGSTATICPAGES := UserEmailEventNameData_Package.Create (To_Unbounded_String ("Store Generating Static Pages"));
   PRODUCTISOUT := UserEmailEventNameData_Package.Create (To_Unbounded_String ("Product Is Out"));
   PRODUCTISAVAILABLE := UserEmailEventNameData_Package.Create (To_Unbounded_String ("Product Is Available"));
   PRODUCTISOLD := UserEmailEventNameData_Package.Create (To_Unbounded_String ("Product Is Old"));
   PRODUCTISONSALE := UserEmailEventNameData_Package.Create (To_Unbounded_String ("Product Is On Sale"));
   PRODUCTSALEISOVER := UserEmailEventNameData_Package.Create (To_Unbounded_String ("Product Sale Is Over"));
   ORDERPREPROCESSING := UserEmailEventNameData_Package.Create (OrderHistoryData_Package.PREPROCESSING);
   ORDERPROCESSING := UserEmailEventNameData_Package.Create (OrderHistoryData_Package.PROCESSING);
   ORDERCANCELLED := UserEmailEventNameData_Package.Create (OrderHistoryData_Package.CANCELLED);
   ORDERPARTIALLYSHIPPED := UserEmailEventNameData_Package.Create (OrderHistoryData_Package.PARTIALLYSHIPPED);
   ORDERSHIPPED := UserEmailEventNameData_Package.Create (OrderHistoryData_Package.SHIPPED);
   QUOTEREQUEST := UserEmailEventNameData_Package.Create (To_Unbounded_String ("Quote Request"));
   NEWPASSWORD := UserEmailEventNameData_Package.Create (To_Unbounded_String ("New Password"));

end org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;


