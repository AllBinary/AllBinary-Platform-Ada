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


package body org.allbinary.business.user.commerce.inventory.item.ItemView_Package is

   procedure Initialize_Fields (This : in out ItemView'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out ItemView'Class; itemInterface : OrderItemInterface_Access; vector : BasicArrayList_Access) is
   begin
      Initialize_Fields (This);
        This.itemInterface := itemInterface;
        This.vector := vector;
   end Initialize;

   function Create (itemInterface : OrderItemInterface_Access; vector : BasicArrayList_Access) return ItemView_Access is
      This : constant ItemView_Access := new ItemView;
   begin
      Initialize (This.all, itemInterface, vector);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out ItemView; document : Document_Access) return Node_Access is
      hashMap : HashMap_Access;
      keySet : Set_Access;
      node : Node_Access;
      basicItemView : BasicItemView_Access;
      stringUtil : StringUtil_Access;
      nameArray : Java_Object_Access_Array_Access;
      size : Integer;
      name : Unbounded_String;
      value : Unbounded_String;
      index : Integer;
      shippingAddressNode : Node_Access;
   begin
        hashMap := This.itemInterface.toHashMap;
        keySet := hashMap.keySet;
        node := document.createElement (ItemData_Package.ITEM);
        basicItemView := BasicItemView_Package.Create (This.itemInterface, This.vector);
        node.appendChild (basicItemView.toXmlNode (document));
        stringUtil := StringUtil_Package.getInstance;
        nameArray := keySet.toArray;
        size := nameArray'Length;
        for index in 0 .. (size) - 1 loop
            name := Unbounded_String (nameArray (index));
            value := Unbounded_String (hashMap.get (name));
            value := stringUtil.getNonNull (value);
            node.appendChild (ModDomHelper_Package.createNameValueNodes (document, name, value));
        end loop;
        shippingAddressNode := document.createElement (StreetAddressData_Package.NAME);
        shippingAddressNode.appendChild (This.itemInterface.getShippingAddress.toXmlNode (document));
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out ItemView; document : Document_Access) is
      Java_Result : constant Node_Access := ItemView'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.user.commerce.inventory.item.ItemView_Package;


