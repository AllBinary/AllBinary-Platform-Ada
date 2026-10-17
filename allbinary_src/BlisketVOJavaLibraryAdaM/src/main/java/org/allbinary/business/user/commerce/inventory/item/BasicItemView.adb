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


package body org.allbinary.business.user.commerce.inventory.item.BasicItemView_Package is

   procedure Initialize_Fields (This : in out BasicItemView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.basicItemData := BasicItemData_Package.getInstance;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicItemView'Class; itemInterface : ItemInterface_Access; vector : BasicArrayList_Access) is
   begin
      Initialize_Fields (This);
        This.itemInterface := itemInterface;
        This.vector := vector;
   end Initialize;

   function Create (itemInterface : ItemInterface_Access; vector : BasicArrayList_Access) return BasicItemView_Access is
      This : constant BasicItemView_Access := new BasicItemView;
   begin
      Initialize (This.all, itemInterface, vector);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out BasicItemView; document : Document_Access) return Node_Access is
      hashMap : HashMap_Access;
      EMPTY_STRING : Unbounded_String;
      stringUtil : StringUtil_Access;
      keySet : Set_Access;
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
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, To_Unbounded_String ("toXmlNode"));
        end if;
        hashMap := This.itemInterface.toHashMap;
        EMPTY_STRING := StringUtil_Package.getInstance.EMPTY_STRING;
        hashMap.put (This.basicItemData.IMAGE, EMPTY_STRING);
        stringUtil := StringUtil_Package.getInstance;
        keySet := hashMap.keySet;
        node := document.createElement (This.basicItemData.ITEM);
        nameArray := keySet.toArray;
        size2 := nameArray'Length;
        for index in 0 .. (size2) - 1 loop
            name := Unbounded_String (nameArray (index));
            value := Unbounded_String (hashMap.get (name));
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

   procedure toXmlNode (This : in out BasicItemView; document : Document_Access) is
      Java_Result : constant Node_Access := BasicItemView'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

   procedure toXmlDoc (This : in out BasicItemView) is
      Java_Result : constant Document_Access := BasicItemView'Class (This).toXmlDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlDoc;

   procedure view (This : in out BasicItemView) is
      Java_Result : constant Unbounded_String := BasicItemView'Class (This).view;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end view;

end org.allbinary.business.user.commerce.inventory.item.BasicItemView_Package;


