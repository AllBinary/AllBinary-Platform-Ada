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


package body admin.taghelpers.ShippingHelper_Package is

   procedure Initialize_Fields (This : in out ShippingHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.storeFrontInterface := null;
      This.propertiesHashMap := null;
      
      
      This.shippingType := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out ShippingHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access) is
      storeName : Unbounded_String;
   begin
      TagHelper_Package.Initialize (This);
      Initialize_Fields (This);
        This.pageContext := pageContext;
        This.request := HttpServletRequest_Access (pageContext.getRequest);
        storeName := Unbounded_String (hashMap.get (StoreFrontData_Package.getInstance.NAME));
        if (storeName) /= (Null_Unbounded_String) then
            This.storeFrontInterface := StoreFrontFactory_Package.getInstance (storeName);
        end if;
        This.weblisketSession := WeblisketSession_Package.Create (hashMap, pageContext);
        This.getFormData;
   end Initialize;

   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return ShippingHelper_Access is
      This : constant ShippingHelper_Access := new ShippingHelper;
   begin
      ShippingHelper_Package.Initialize (This.all, hashMap, pageContext);
      return This;
   end Create;

   procedure getFormData (This : in out ShippingHelper) is
   begin
        This.shippingType := This.request.getParameter (ShippingMethodData_Package.NAME);
   end getFormData;

   function setShippingType (This : in out ShippingHelper) return Unbounded_String is
      success : Unbounded_String;
      order : OrderInterface_Access;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Successfully Set Shipping Type");
            order := This.weblisketSession.getOrder;
            order.setShippingMethod (This.shippingType);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("setShippingType()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to view Shipping Type");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("setShippingType()"), e);
            end if;
            return error;
                end;
        end;
   end setShippingType;

end admin.taghelpers.ShippingHelper_Package;


