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


package body org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package is

   procedure Initialize_Fields (This : in out BasketReview'Class) is
   begin
      null;
      This.items := BasicArrayListD_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out BasketReview'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BasketReview_Access is
      This : constant BasketReview_Access := new BasketReview;
   begin
      BasketReview_Package.Initialize (This.all);
      return This;
   end Create;

   function isValid (This : in out BasketReview) return Boolean is
   begin
        return True;
   end isValid;

   procedure addItem (This : in out BasketReview; item_Param : access Item'Class) is
      item : Item_Access := Item_Access (item_Param);
   begin
        This.items.add (item);
   end addItem;

   function getItems (This : in out BasketReview) return BasicArrayList_Access is
   begin
        return This.items;
   end getItems;

   procedure removeItem (This : in out BasketReview; id : Unbounded_String) is
      itemArray : Java_Object_Access_Array_Access;
      size : Integer;
      item : Item_Access;
      index : Integer;
   begin
        itemArray := This.items.toArray;
        size := itemArray'Length;
        for index in 0 .. (size) - 1 loop
            item := Item_Access (itemArray (index));
            if (item.getId.compareTo (id)) = (0) then
                This.items.remove (item);
            end if;
        end loop;
   end removeItem;

   procedure adjustItem (This : in out BasketReview; id : Unbounded_String; num : Unbounded_String) is
      itemArray : Java_Object_Access_Array_Access;
      size : Integer;
      item : Item_Access;
      index : Integer;
   begin
        itemArray := This.items.toArray;
        size := itemArray'Length;
        for index in 0 .. (size) - 1 loop
            item := Item_Access (itemArray (index));
            if (item.getId.compareTo (id)) = (0) then
                item.setNumber (num);
            end if;
        end loop;
   end adjustItem;

   function getTotalWeight (This : in out BasketReview) return Unbounded_String is
      weightFloat : Float;
      itemArray : Java_Object_Access_Array_Access;
      size : Integer;
      item : Item_Access;
      index : Integer;
   begin
        weightFloat := 0.0;
        itemArray := This.items.toArray;
        size := itemArray'Length;
        for index in 0 .. (size) - 1 loop
            item := Item_Access (itemArray (index));
            weightFloat := (weightFloat) + (item.getWeight.floatValue);
        end loop;
        return weightFloat.toString;
   end getTotalWeight;

   function getNumberOfItems (This : in out BasketReview) return Integer is
   begin
        return This.items.size;
   end getNumberOfItems;

   function getIds (This : in out BasketReview) return Set_Access is
      idSet : HashSet_Access;
      itemArray : Java_Object_Access_Array_Access;
      size : Integer;
      item : Item_Access;
      index : Integer;
   begin
        idSet := HashSet_Package.Create;
        itemArray := This.items.toArray;
        size := itemArray'Length;
        for index in 0 .. (size) - 1 loop
            item := Item_Access (itemArray (index));
            idSet.add (item.getId);
        end loop;
        return Set_Access (idSet);
   end getIds;

   function getNumberOf (This : in out BasketReview; id : Unbounded_String) return Integer is
      itemArray : Java_Object_Access_Array_Access;
      size : Integer;
      item : Item_Access;
      index : Integer;
   begin
        itemArray := This.items.toArray;
        size := itemArray'Length;
        for index in 0 .. (size) - 1 loop
            item := Item_Access (itemArray (index));
            if (item.getId.compareTo (id)) = (0) then
                return item.getNumber;
            end if;
        end loop;
        return 0;
   end getNumberOf;

   --  throws Exception
   function toXmlNode (This : in out BasketReview; document_Param : access Document'Class) return Node_Access is
      document : Document_Access := Document_Access (document_Param);
      node : Node_Access;
      itemArray : Java_Object_Access_Array_Access;
      size : Integer;
      item : Item_Access;
      index : Integer;
   begin
        node := document.createElement (BasketData_Package.BASKET);
        itemArray := This.items.toArray;
        size := itemArray'Length;
        for index in 0 .. (size) - 1 loop
            item := Item_Access (itemArray (index));
            node.appendChild (ItemView_Package.Create (item, BasicArrayListD_Package.Create).toXmlNode (document));
        end loop;
        return node;
   end toXmlNode;

   procedure getNumberOf (This : in out BasketReview; id : Unbounded_String) is
      Java_Result : constant Integer := BasketReview'Class (This).getNumberOf (id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNumberOf;

   procedure toXmlNode (This : in out BasketReview; document_Param : access Document'Class) is
      Java_Result : constant Node_Access := BasketReview'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package;


