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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References;
with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package; use org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References;

package body org.allbinary.business.user.commerce.inventory.item.BasicItemView_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   function "=" (Left, Right : Document_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   function "=" (Left, Right : Document_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   function "=" (Left, Right : Document_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   function "=" (Left, Right : Node_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   function "=" (Left, Right : Node_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   function "=" (Left, Right : Node_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype BasicItemData_Access is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access;
   function "=" (Left, Right : BasicItemData_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References."=";
   subtype BasicItemData_Access_Array is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array;
   function "=" (Left, Right : BasicItemData_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References."=";
   subtype BasicItemData_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array_Access;
   function "=" (Left, Right : BasicItemData_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References."=";
   subtype BasicItemData_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array_Access_Array;
   function "=" (Left, Right : BasicItemData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References."=";
   subtype BasicItemData_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicItemData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References."=";
   subtype ItemInterface_Access is org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References.ItemInterface_Access;
   function "=" (Left, Right : ItemInterface_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References."=";
   subtype ItemInterface_Access_Array is org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References.ItemInterface_Access_Array;
   function "=" (Left, Right : ItemInterface_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References."=";
   subtype ItemInterface_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References.ItemInterface_Access_Array_Access;
   function "=" (Left, Right : ItemInterface_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References."=";
   subtype ItemInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References.ItemInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ItemInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References."=";
   subtype ItemInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References.ItemInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ItemInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References."=";
   procedure Initialize_Fields (This : in out BasicItemView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.basicItemData := BasicItemData_Package.getInstance;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicItemView'Class; itemInterface_Param : access ItemInterface_Package.ItemInterface'Class; vector_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      itemInterface : constant ItemInterface_Access := ItemInterface_Access (itemInterface_Param);
      vector : constant BasicArrayList_Access := BasicArrayList_Access (vector_Param);
   begin
      Initialize_Fields (This);
        This.itemInterface := itemInterface;
        This.vector := vector;
   end Initialize;

   function Create (itemInterface_Param : access ItemInterface_Package.ItemInterface'Class; vector_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicItemView_Access is
      This : constant BasicItemView_Access := new BasicItemView;
   begin
      BasicItemView_Package.Initialize (This.all, itemInterface_Param, vector_Param);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out BasicItemView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      hashMap : HashMap_Access;
      EMPTY_STRING : Unbounded_String;
      stringUtil : StringUtil_Access;
      keySet : Java_Object_Access;
      node : Node_Access;
      nameArray : Java_Object_Access_Array_Access;
      size2 : Integer;
      name : Unbounded_String;
      value : Unbounded_String;
      index : Integer;
      totalNode : Node_Access;
      size : Integer;
      domNodeInterface : DomNodeInterface_Access;
      customNode : Node_Access;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PRODUCTSEARCHLOGGING) then
            This.logUtil.putF (This.commonStrings.START, BasicItemView_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode"));
        end if;
        hashMap := This.itemInterface.toHashMap;
        EMPTY_STRING := StringUtil_Package.getInstance.EMPTY_STRING;
        hashMap.put (This.basicItemData.IMAGE, Java_Box (EMPTY_STRING));
        stringUtil := StringUtil_Package.getInstance;
        keySet := hashMap.keySet;
        node := document.createElement (This.basicItemData.ITEM);
        nameArray := keySet.toArray;
        size2 := nameArray'Length;
        for index in 0 .. (size2) - 1 loop
            name := Java_Unbox (nameArray (index));
            value := Java_Unbox (hashMap.get (Java_Box (name)));
            value := stringUtil.getNonNull (value);
            node.appendChild (ModDomHelper_Package.createNameValueNodes (document, name, value));
        end loop;
        totalNode := ModDomHelper_Package.createNameValueNodes (document, This.basicItemData.TOTAL, This.itemInterface.getTotal.toString);
        node.appendChild (totalNode);
        size := This.vector.size;
        for index in 0 .. (size) - 1 loop
            domNodeInterface := DomNodeInterface_Access (This.vector.get (index));
            customNode := domNodeInterface.toXmlNode (document);
            node.appendChild (customNode);
        end loop;
        return node;
   end toXmlNode;

   function toXmlDoc (This : in out BasicItemView) return Document_Access is
   begin
        return null;
   end toXmlDoc;

   function view (This : in out BasicItemView) return Unbounded_String is
   begin
        return Null_Unbounded_String;
   end view;

   procedure toXmlNode (This : in out BasicItemView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := BasicItemView'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.user.commerce.inventory.item.BasicItemView_Package;


