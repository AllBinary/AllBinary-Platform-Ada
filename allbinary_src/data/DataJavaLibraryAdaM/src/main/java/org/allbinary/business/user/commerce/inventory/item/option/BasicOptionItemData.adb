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


package body org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData_Package is

   procedure Initialize_Fields (This : in out BasicOptionItemData'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out BasicOptionItemData'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BasicOptionItemData_Access is
      This : constant BasicOptionItemData_Access := new BasicOptionItemData;
   begin
      BasicOptionItemData_Package.Initialize (This.all);
      return This;
   end Create;


begin
   null;
   OPTION_ONE_TITLE := To_Unbounded_String ("BASICOPTIONITEM_OPTION_ONE_TITLE");
   DEFAULT_OPTION_ITEM := To_Unbounded_String ("BASICOPTIONITEM_DEFAULT_OPTION_ITEM");
   DEFAULT_OPTION_VALUE := To_Unbounded_String ("BASICOPTIONITEM_DEFAULT_OPTION_VALUE");
   OPTION_ONE_ONE_ITEM := To_Unbounded_String ("BASICOPTIONITEM_OPTION_ONE_ONE_ITEM");
   OPTION_ONE_ONE_VALUE := To_Unbounded_String ("BASICOPTIONITEM_OPTION_ONE_ONE_VALUE");
   OPTION_ONE_TWO_ITEM := To_Unbounded_String ("BASICOPTIONITEM_OPTION_ONE_TWO_ITEM");
   OPTION_ONE_TWO_VALUE := To_Unbounded_String ("BASICOPTIONITEM_OPTION_ONE_TWO_VALUE");
   OPTION_ONE_THREE_ITEM := To_Unbounded_String ("BASICOPTIONITEM_OPTION_ONE_THREE_ITEM");
   OPTION_ONE_THREE_VALUE := To_Unbounded_String ("BASICOPTIONITEM_OPTION_ONE_THREE_VALUE");
   OPTION_ONE_FOUR_ITEM := To_Unbounded_String ("BASICOPTIONITEM_OPTION_ONE_FOUR_ITEM");
   OPTION_ONE_FOUR_VALUE := To_Unbounded_String ("BASICOPTIONITEM_OPTION_ONE_FOUR_VALUE");
   OPTION_ONE_FIVE_ITEM := To_Unbounded_String ("BASICOPTIONITEM_OPTION_ONE_FIVE_ITEM");
   OPTION_ONE_FIVE_VALUE := To_Unbounded_String ("BASICOPTIONITEM_OPTION_ONE_FIVE_VALUE");
   OPTION_ONE_SIX_ITEM := To_Unbounded_String ("BASICOPTIONITEM_OPTION_ONE_SIX_ITEM");
   OPTION_ONE_SIX_VALUE := To_Unbounded_String ("BASICOPTIONITEM_OPTION_ONE_SIX_VALUE");
   OPTION_ONE_SEVEN_ITEM := To_Unbounded_String ("BASICOPTIONITEM_OPTION_ONE_SEVEN_ITEM");
   OPTION_ONE_SEVEN_VALUE := To_Unbounded_String ("BASICOPTIONITEM_OPTION_ONE_SEVEN_VALUE");
   OPTION_ONE_EIGHT_ITEM := To_Unbounded_String ("BASICOPTIONITEM_OPTION_ONE_EIGHT_ITEM");
   OPTION_ONE_EIGHT_VALUE := To_Unbounded_String ("BASICOPTIONITEM_OPTION_ONE_EIGHT_VALUE");
   OPTION_ONE_NINE_ITEM := To_Unbounded_String ("BASICOPTIONITEM_OPTION_ONE_NINE_ITEM");
   OPTION_ONE_NINE_VALUE := To_Unbounded_String ("BASICOPTIONITEM_OPTION_ONE_NINE_VALUE");

end org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData_Package;


