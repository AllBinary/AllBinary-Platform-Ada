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


package body org.allbinary.business.user.commerce.inventory.item.Item_Package is

   procedure Initialize_Fields (This : in out Item'Class) is
   begin
      null;
      
      
      
      
      This.shippedDate := Null_Unbounded_String;
      
      This.special := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out Item'Class; itemHashMap : HashMap_Access) is
   begin
        BasicItem_Package.Initialize (This, itemHashMap);
        Initialize_Fields (This);
        This.setData (itemHashMap);
   end Initialize;

   function Create (itemHashMap : HashMap_Access) return Item_Access is
      This : constant Item_Access := new Item;
   begin
      Item_Package.Initialize (This.all, itemHashMap);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out Item'Class) is
      EMPTY : Unbounded_String;
   begin
      BasicItem_Package.Initialize (This);
      Initialize_Fields (This);
        EMPTY := StringUtil_Package.getInstance.EMPTY_STRING;
        This.group := EMPTY;
        This.tax := EMPTY;
        This.shippingType := EMPTY;
        This.shippingCost := EMPTY;
        This.shippingAddress := StreetAddress_Package.Create;
   end Initialize;

   function Create return Item_Access is
      This : constant Item_Access := new Item;
   begin
      Item_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setData (This : in out Item; itemHashMap : HashMap_Access) is
   begin
        This.group := Unbounded_String (itemHashMap.get (ShippingMethodData_Package.GROUP));
        This.tax := Unbounded_String (itemHashMap.get (OrderHistoryData_Package.TAX));
        This.shippingType := Unbounded_String (itemHashMap.get (ShippingMethodData_Package.NAME));
        This.shippingCost := Unbounded_String (itemHashMap.get (ShippingMethodData_Package.COST));
        This.shippedDate := Unbounded_String (itemHashMap.get (OrderHistoryData_Package.SHIPPEDDATE));
        itemHashMap.put (StreetAddressData_Package.NAME, itemHashMap.get (ShippingAddressData_Package.NAME));
        itemHashMap.put (StreetAddressData_Package.STREET, itemHashMap.get (ShippingAddressData_Package.STREET));
        itemHashMap.put (StreetAddressData_Package.CITY, itemHashMap.get (ShippingAddressData_Package.CITY));
        itemHashMap.put (StreetAddressData_Package.STATE, itemHashMap.get (ShippingAddressData_Package.STATE));
        itemHashMap.put (StreetAddressData_Package.CODE, itemHashMap.get (ShippingAddressData_Package.CODE));
        itemHashMap.put (StreetAddressData_Package.COUNTRY, itemHashMap.get (ShippingAddressData_Package.COUNTRY));
        This.shippingAddress := StreetAddress_Package.Create (itemHashMap);
   end setData;

   procedure setGroup (This : in out Item; value : Unbounded_String) is
   begin
        This.group := value;
   end setGroup;

   procedure setTax (This : in out Item; value : Unbounded_String) is
   begin
        This.tax := value;
   end setTax;

   procedure setShippingType (This : in out Item; value : Unbounded_String) is
   begin
        This.shippingType := value;
   end setShippingType;

   procedure setShippingCost (This : in out Item; value : Unbounded_String) is
   begin
        This.shippingCost := value;
   end setShippingCost;

   procedure setShippingAddress (This : in out Item; value : StreetAddress_Access) is
   begin
        This.shippingAddress := value;
   end setShippingAddress;

   procedure setSpecial (This : in out Item; value : Unbounded_String) is
   begin
        This.special := value;
   end setSpecial;

   function getGroup (This : in out Item) return Unbounded_String is
   begin
        return This.group;
   end getGroup;

   function getTax (This : in out Item) return Unbounded_String is
   begin
        return This.tax;
   end getTax;

   function getShippingType (This : in out Item) return Unbounded_String is
   begin
        return This.shippingType;
   end getShippingType;

   function getShippingCost (This : in out Item) return Unbounded_String is
   begin
        return This.shippingCost;
   end getShippingCost;

   function getShippingAddress (This : in out Item) return StreetAddress_Access is
   begin
        return This.shippingAddress;
   end getShippingAddress;

   function getSpecial (This : in out Item) return Unbounded_String is
   begin
        return This.special;
   end getSpecial;

   function toHashMap (This : in out Item) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := BasicItem (This).toHashMap;
        hashMap.put (ShippingMethodData_Package.GROUP, This.group);
        hashMap.put (OrderHistoryData_Package.TAX, This.tax);
        hashMap.put (ShippingMethodData_Package.NAME, This.shippingType);
        hashMap.put (ShippingMethodData_Package.COST, This.shippingCost);
        hashMap.put (OrderHistoryData_Package.SHIPPEDDATE, This.shippedDate);
        hashMap.put (EntryData_Package.getInstance.SPECIAL, This.special);
        return hashMap;
   end toHashMap;

end org.allbinary.business.user.commerce.inventory.item.Item_Package;


