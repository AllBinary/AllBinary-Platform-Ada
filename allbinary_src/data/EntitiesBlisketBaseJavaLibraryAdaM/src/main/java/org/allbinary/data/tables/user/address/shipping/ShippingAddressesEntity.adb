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


package body org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package is

   procedure Initialize_Fields (This : in out ShippingAddressesEntity'Class) is
   begin
      null;
      This.TABLENAME := To_Unbounded_String ("shipping");
   end Initialize_Fields;


   procedure Initialize (This : in out ShippingAddressesEntity'Class; userName : Unbounded_String) is
   begin
        StreetAddressesEntity_Package.Initialize (This, userName);
        Initialize_Fields (This);
        ShippingAddressesEntity'Class (This).setTableName (This.TABLENAME);
   end Initialize;

   function Create (userName : Unbounded_String) return ShippingAddressesEntity_Access is
      This : constant ShippingAddressesEntity_Access := new ShippingAddressesEntity;
   begin
      ShippingAddressesEntity_Package.Initialize (This.all, userName);
      return This;
   end Create;

end org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package;


