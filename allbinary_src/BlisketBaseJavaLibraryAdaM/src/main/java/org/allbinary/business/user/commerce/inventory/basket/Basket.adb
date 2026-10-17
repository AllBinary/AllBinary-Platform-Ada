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


package body org.allbinary.business.user.commerce.inventory.basket.Basket_Package is

   procedure Initialize_Fields (This : in out Basket'Class) is
   begin
      null;
      This.items := StdUtil_Package.getInstance.createHashMap;
   end Initialize_Fields;


   procedure Initialize (This : in out Basket'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return Basket_Access is
      This : constant Basket_Access := new Basket;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure addItem (This : in out Basket; id : Unbounded_String; num : Unbounded_String) is
      oldNumStr : Unbounded_String;
      oldNumInt : Integer;
      numInt : Integer;
      newNumInt : Integer;
   begin
        if This.items.containsKey (id) then
            oldNumStr := Java_New_String (Unbounded_String (This.items.get (id)));
            oldNumInt := To_Unbounded_String (Java_Image (oldNumStr));
            numInt := To_Unbounded_String (Java_Image (num));
            newNumInt := (oldNumInt.intValue) + (numInt.intValue);
            This.items.put (id, newNumInt.toString);
        else
            This.items.put (id, num);
        end if;
   end addItem;

   procedure removeItem (This : in out Basket; id : Unbounded_String) is
   begin
        This.items.remove (id);
   end removeItem;

   procedure adjustItem (This : in out Basket; id : Unbounded_String; num : Unbounded_String) is
   begin
        if (To_Unbounded_String (Java_Image (num)).intValue) > (0) then
            This.items.put (id, num);
        else
            This.items.remove (id);
        end if;
   end adjustItem;

   function getTotalWeight (This : in out Basket) return Unbounded_String is
      itemsAndNumberInBasket : HashMap_Access;
      totalWeight : Money_Access;
      items : Set_Access;
      product : Unbounded_String;
      weightFloat : Float;
      itemArray : Java_Object_Access_Array_Access;
      size : Integer;
      index : Integer;
   begin
        itemsAndNumberInBasket := This.getItems;
        totalWeight := Money_Package.Create;
        if (itemsAndNumberInBasket.size) > (0) then
            items := itemsAndNumberInBasket.keySet;
            product := Null_Unbounded_String;
            weightFloat := null;
            itemArray := items.toArray;
            size := itemArray'Length;
            for index in 0 .. (size) - 1 loop
                product := Java_New_String (Unbounded_String (itemArray (index)));
                weightFloat := InventoryEntity_Package.Create.getWeight (product);
                weightFloat := (This.getNumberOf (product).floatValue) * (weightFloat.floatValue);
                totalWeight.add (weightFloat.toString);
            end loop;
        end if;
        return totalWeight.toString;
   end getTotalWeight;

   function getNumberOfItems (This : in out Basket) return Integer is
   begin
        return This.items.size;
   end getNumberOfItems;

   function getIds (This : in out Basket) return Set_Access is
      set : Set_Access;
   begin
        set := This.items.keySet;
        return set;
   end getIds;

   function getItems (This : in out Basket) return HashMap_Access is
   begin
        return This.items;
   end getItems;

   function getNumberOf (This : in out Basket; product : Unbounded_String) return Integer is
      numStr : Unbounded_String;
   begin
        numStr := Unbounded_String (This.items.get (product));
        return To_Unbounded_String (Java_Image (numStr));
   end getNumberOf;

   --  throws MoneyException
   function getSubTotal (This : in out Basket) return Money_Access is
      itemsAndNumberInBasket : HashMap_Access;
      subTotal : Money_Access;
      items : Set_Access;
      inventoryEntityFactory : InventoryEntityFactory_Access;
      inventoryEntity : InventoryEntity_Access;
      itemArray : Java_Object_Access_Array_Access;
      size : Integer;
      product : Unbounded_String;
      itemInterface : ItemInterface_Access;
      productTotal : Money_Access;
      index : Integer;
   begin
        itemsAndNumberInBasket := This.getItems;
        subTotal := Money_Package.Create;
        if (itemsAndNumberInBasket.size) > (0) then
            items := itemsAndNumberInBasket.keySet;
            inventoryEntityFactory := InventoryEntityFactory_Package.getInstance;
            inventoryEntity := InventoryEntity_Access (inventoryEntityFactory.getInventoryEntityInstance);
            itemArray := items.toArray;
            size := itemArray'Length;
            for index in 0 .. (size) - 1 loop
                product := Java_New_String (Unbounded_String (itemArray (index)));
                itemInterface := inventoryEntity.getItem (product);
                productTotal := itemInterface.getPrice;
                productTotal.multiply (This.getNumberOf (product).intValue);
                subTotal.add (productTotal.toString);
            end loop;
        end if;
        return subTotal;
   end getSubTotal;

   procedure getTotalWeight (This : in out Basket) is
      Java_Result : constant Unbounded_String := Basket'Class (This).getTotalWeight;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTotalWeight;

   procedure getNumberOfItems (This : in out Basket) is
      Java_Result : constant Integer := Basket'Class (This).getNumberOfItems;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNumberOfItems;

   procedure getIds (This : in out Basket) is
      Java_Result : constant Set_Access := Basket'Class (This).getIds;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getIds;

   procedure getItems (This : in out Basket) is
      Java_Result : constant HashMap_Access := Basket'Class (This).getItems;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getItems;

   procedure getNumberOf (This : in out Basket; product : Unbounded_String) is
      Java_Result : constant Integer := Basket'Class (This).getNumberOf (product);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNumberOf;

   procedure getSubTotal (This : in out Basket) is
      Java_Result : constant Money_Access := Basket'Class (This).getSubTotal;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSubTotal;

end org.allbinary.business.user.commerce.inventory.basket.Basket_Package;


