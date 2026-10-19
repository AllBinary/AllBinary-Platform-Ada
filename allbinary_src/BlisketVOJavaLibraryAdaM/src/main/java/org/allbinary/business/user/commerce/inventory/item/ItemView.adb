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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.business.user.address.StreetAddressData_Package; use org.allbinary.business.user.address.StreetAddressData_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.business.user.commerce.inventory.item.ItemData_Package; use org.allbinary.business.user.commerce.inventory.item.ItemData_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemView_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemView_Package;

package body org.allbinary.business.user.commerce.inventory.item.ItemView_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package StreetAddressData_Package renames Standard.org.allbinary.business.user.address.StreetAddressData_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out ItemView'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out ItemView'Class; itemInterface_Param : access OrderItemInterface_Package.OrderItemInterface'Class; vector_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      itemInterface : constant OrderItemInterface_Access := OrderItemInterface_Access (itemInterface_Param);
      vector : constant BasicArrayList_Access := BasicArrayList_Access (vector_Param);
   begin
      Initialize_Fields (This);
        This.itemInterface := itemInterface;
        This.vector := vector;
   end Initialize;

   function Create (itemInterface_Param : access OrderItemInterface_Package.OrderItemInterface'Class; vector_Param : access BasicArrayList_Package.BasicArrayList'Class) return ItemView_Access is
      This : constant ItemView_Access := new ItemView;
   begin
      ItemView_Package.Initialize (This.all, itemInterface_Param, vector_Param);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out ItemView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
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
            name := Java_Unbox (nameArray (index));
            value := Java_Unbox (hashMap.get (Java_Box (name)));
            value := stringUtil.getNonNull (value);
            node.appendChild (ModDomHelper_Package.createNameValueNodes (document, name, value));
        end loop;
        shippingAddressNode := document.createElement (StreetAddressData_Package.NAME);
        shippingAddressNode.appendChild (This.itemInterface.getShippingAddress.toXmlNode (document));
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out ItemView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := ItemView'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.user.commerce.inventory.item.ItemView_Package;


