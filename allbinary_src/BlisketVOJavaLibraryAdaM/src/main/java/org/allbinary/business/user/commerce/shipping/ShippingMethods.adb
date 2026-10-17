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


package body org.allbinary.business.user.commerce.shipping.ShippingMethods_Package is

   procedure Initialize_Fields (This : in out ShippingMethods'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out ShippingMethods'Class; abeClientInformation : AbeClientInformationInterface_Access; storeFrontInterface : StoreFrontInterface_Access) is
   begin
      Initialize_Fields (This);
        This.defaultShippingMethodInterface := ShippingMethodsFactory_Package.Create (abeClientInformation, storeFrontInterface).getDefaultInstance;
        This.shippingVector := ShippingMethodsFactory_Package.Create (abeClientInformation, storeFrontInterface).getInstance;
   end Initialize;

   function Create (abeClientInformation : AbeClientInformationInterface_Access; storeFrontInterface : StoreFrontInterface_Access) return ShippingMethods_Access is
      This : constant ShippingMethods_Access := new ShippingMethods;
   begin
      ShippingMethods_Package.Initialize (This.all, abeClientInformation, storeFrontInterface);
      return This;
   end Create;

   function get (This : in out ShippingMethods) return BasicArrayList_Access is
   begin
        return This.shippingVector;
   end get;

   --  throws Exception
   function getShippingInterface (This : in out ShippingMethods; name : Unbounded_String) return ShippingInterface_Access is
      shipping : ShippingInterface_Access;
      size : Integer;
      index : Integer;
      error : Unbounded_String;
   begin
        shipping := null;
        size := This.shippingVector.size;
        for index in 0 .. (size) - 1 loop
            shipping := ShippingInterface_Access (This.shippingVector.get (index));
            if (name.compareTo (shipping.getName)) = (0) then
                return shipping;
            end if;
        end loop;
        error := To_Unbounded_String ("Error Finding Shipping: ") & name;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SHIPPINGERROR) then
            This.logUtil.putF (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("getShippingInterface(String name)"));
        end if;
        Java_Throw (Java_New_Exception ("Exception", error));
   end getShippingInterface;

   --  throws Exception
   function getDefault (This : in out ShippingMethods) return ShippingInterface_Access is
   begin
        return This.defaultShippingMethodInterface;
   end getDefault;

   procedure getShippingInterface (This : in out ShippingMethods; name : Unbounded_String) is
      Java_Result : constant ShippingInterface_Access := ShippingMethods'Class (This).getShippingInterface (name);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getShippingInterface;

end org.allbinary.business.user.commerce.shipping.ShippingMethods_Package;


